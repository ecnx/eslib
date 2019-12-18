/* ------------------------------------------------------------------
 * ES Lib - Portable Minimalist C Library
 * ------------------------------------------------------------------ */

#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>

#if ARCH != x86_32
#if ARCH != ARM
#define LMEM_ENABLE_MMAP
#endif
#define LMEM_PAGESIZE 4096
#define LMEM_NEXT_MMAP ((struct memblk_t*) -1)
#define LMEM_MMAP_TRESHOLD (LMEM_PAGESIZE*16)
#endif

#define lmalloc malloc
#define lfree free
#define lcalloc calloc
#define lrealloc realloc

/* LMem memory block structure */
struct memblk_t
{
    size_t isfree;              /* block status flag, set if block is not in use */
    size_t size;                /* block size in header size units or bytes for mmap */
    struct memblk_t *prev;      /* pointer to prev memory block structure or NULL */
    struct memblk_t *next;      /* pointer to next memory block structure or NULL */
};

/**
 * LMem memory block list head
 */
static struct memblk_t *head;

/**
 * LMem memory block list tail
 */
static struct memblk_t *tail;

/**
 * LMem current heap break address
 */
static struct memblk_t *last_break;

/**
 * Brk syscall wrapper
 */
extern void *_brk ( void *x );

/**
 * Allocate new dynamic memory block
 */
static struct memblk_t *new_memblk ( size_t size )
{
    if ( !last_break )
    {
        last_break = _brk ( 0 );
    }

    last_break = ( struct memblk_t * ) _brk ( last_break + size );

    if ( last_break == ( struct memblk_t * ) -1 )
    {
        return ( struct memblk_t * ) -1;
    }

    return last_break - size;
}

/**
 * Split memory block into an upper and lower part
 */
static void lmem_split_block ( struct memblk_t *block, size_t size )
{
    struct memblk_t *upper = block + size;

    /* upper block is free */
    upper->isfree = 1;

    /* update sizes */
    upper->size = block->size - size;
    block->size = size;

    /* append upper block to list */
    upper->prev = block;
    upper->next = block->next;

    if ( block->next )
    {
        block->next->prev = upper;

    } else
    {
        tail = upper;
    }

    block->next = upper;
}

/**
 * Allocate a new memory block and append to the list
 */
static struct memblk_t *lmalloc_new_block ( size_t size )
{
    struct memblk_t *block;

    /* more memory is needed */
    if ( ( block = new_memblk ( size ) ) == ( struct memblk_t * ) -1 )
    {
        return NULL;
    }

    /* mark block as in-use and set size */
    block->isfree = 0;
    block->size = size;

    /* append block to list */
    block->prev = tail;
    block->next = NULL;

    if ( !head )
    {
        head = block;
    }

    if ( tail )
    {
        tail->next = block;
    }

    tail = block;

    return ( void * ) ( block + 1 );
}

/**
 * Allocate dynamic memory
 */
void *lmalloc ( size_t len )
{
    struct memblk_t *block;
    size_t size;

#ifdef LMEM_ENABLE_MMAP
    /* allocate memory block with mmap if needed */
    if ( len >= LMEM_MMAP_TRESHOLD )
    {
        /* adjust and align block length to page size */
        len = ( len + sizeof ( struct memblk_t ) + LMEM_PAGESIZE - 1 ) & ~( LMEM_PAGESIZE - 1 );

        if ( ( block =
                ( struct memblk_t * ) mmap ( NULL, len, PROT_READ | PROT_WRITE,
                    MAP_PRIVATE | MAP_ANONYMOUS, -1, 0 ) ) == MAP_FAILED )
        {
            return NULL;
        }

        block->next = LMEM_NEXT_MMAP;
        block->size = len;
        return ( void * ) ( block + 1 );
    }
#endif

    /* calculate block size */
    size = ( len + sizeof ( struct memblk_t ) - 1 ) / sizeof ( struct memblk_t ) + 1;

    /* find free block big enough */
    for ( block = head; block; block = block->next )
    {
        if ( block->isfree && block->size >= size )
        {
            if ( block->size > size )
            {
                lmem_split_block ( block, size );
            }
            block->isfree = 0;
            return ( void * ) ( block + 1 );
        }
    }

    /* otherwise allocate a new block */
    return lmalloc_new_block ( size );
}

/**
 * Allocate and clear dynamic memory
 */
void *lcalloc ( size_t nlen, size_t len )
{
    size_t size = nlen * len;
    void *result;

    /* set block bytes to zero */
    if ( ( result = ( unsigned char * ) lmalloc ( size ) ) )
    {
        memset ( result, 0, size );
    }

    return result;
}

/**
 * Free and left merge memory block
 */
static void lfree_left_merge ( struct memblk_t *block )
{
    /* merge with left neighbour is present and free */
    if ( block->prev && block->prev->isfree )
    {
        /* unlink block from list and expand left neighbour */
        block->prev->next = block->next;
        if ( block->next )
        {
            block->next->prev = block->prev;

        } else
        {
            tail = block->prev;
        }

        /* expand left block */
        block->prev->size += block->size;

    } else
    {
        /* otherwise only mark block as free */
        block->isfree = 1;
    }
}

/**
 * Free dynamic memory
 */
void lfree ( void *addr )
{
    struct memblk_t *block = ( ( struct memblk_t * ) addr ) - 1;

    /* address zero is not allowed to be freed */
    if ( !addr )
    {
        return;
    }
#ifdef LMEM_ENABLE_MMAP
    /* free memory block with munmap if needed */
    if ( block->next == LMEM_NEXT_MMAP )
    {
        munmap ( block, block->size );
        return;
    }
#endif

    /* left merge current block */
    lfree_left_merge ( block );

    /* left merge upper block */
    if ( block->next && block->next->isfree )
    {
        lfree_left_merge ( block->next );
    }
}

/**
 * Re-Allocate dynamic memory
 */
void *lrealloc ( void *addr, size_t len )
{
#ifdef LMEM_ENABLE_MMAP
    struct memblk_t *block = ( ( struct memblk_t * ) addr ) - 1;
#endif
    struct memblk_t *newblock;

    /* skip null pointers */
    if ( !addr )
    {
        return malloc ( len );
    }
#ifdef LMEM_ENABLE_MMAP
    /* free memory block with munmap if needed */
    if ( block->next == LMEM_NEXT_MMAP )
    {
        len = ( len + sizeof ( struct memblk_t ) + LMEM_PAGESIZE - 1 ) & ~( LMEM_PAGESIZE - 1 );
        if ( ( block =
                ( struct memblk_t * ) mremap ( block, block->size, len,
                    MREMAP_MAYMOVE ) ) == MAP_FAILED )
        {
            return NULL;
        }

        block->size = len;
        return ( void * ) ( block + 1 );
    }
#endif

    /* allocate new block */
    if ( !( newblock = ( struct memblk_t * ) lmalloc ( len ) ) )
    {
        return NULL;
    }

    /* place data into new block */
    memcpy ( newblock, addr, len );

    /* free current block */
    lfree ( addr );
    return ( void * ) newblock;
}
