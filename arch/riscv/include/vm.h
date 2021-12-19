#ifndef VM_H
#define VM_H
#define uint64_t unsigned long long
#define offset (0xffffffe000000000-0x80000000)
#define PAGE_SIZE 0x1000
void create_mapping(uint64_t* pgtbl,uint64_t va,uint64_t pa,uint64_t sz,int perm);
void create_mapping2(uint64_t *pgtbl, uint64_t va, uint64_t pa, uint64_t sz, int perm,uint64_t allocation_start);
uint64_t cur = 0;
#define page_count cur
void paging_init();

void create_mapping_vm(uint64_t *pgtbl, uint64_t va, uint64_t pa, uint64_t sz, int perm);
void copyRootPage_vm(uint64_t* src,uint64_t* dst);
void initUserPage_vm(uint64_t* pgtbl,uint64_t stack_page_cnt,uint64_t stack_high_addr);

#endif