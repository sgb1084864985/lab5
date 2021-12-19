# 1 "vm.c"
# 1 "/home/oslab/lab5/arch/riscv/kernel//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "vm.c"
# 1 "/home/oslab/lab5/arch/riscv/include/vm.h" 1





void create_mapping(unsigned long long* pgtbl,unsigned long long va,unsigned long long pa,unsigned long long sz,int perm);
void create_mapping2(unsigned long long *pgtbl, unsigned long long va, unsigned long long pa, unsigned long long sz, int perm,unsigned long long allocation_start);
unsigned long long cur = 0;

void paging_init();

void create_mapping_vm(unsigned long long *pgtbl, unsigned long long va, unsigned long long pa, unsigned long long sz, int perm);
void copyRootPage_vm(unsigned long long* src,unsigned long long* dst);
void initUserPage_vm(unsigned long long* pgtbl,unsigned long long stack_page_cnt,unsigned long long stack_high_addr);
# 2 "vm.c" 2
# 1 "/home/oslab/lab5/include/put.h" 1



void puti(int num);
int puts(const char *s);
void putullHex(unsigned long long x);
# 3 "vm.c" 2

extern unsigned long long text_start;
extern unsigned long long rodata_start;
extern unsigned long long data_start;
extern unsigned long long _end;

void create_mapping(unsigned long long *pgtbl, unsigned long long va, unsigned long long pa, unsigned long long sz, int perm){
    create_mapping2(pgtbl, va, pa, sz, perm, (unsigned long long)(&_end));
}

void create_mapping_vm(unsigned long long *pgtbl, unsigned long long va, unsigned long long pa, unsigned long long sz, int perm){
    create_mapping2(pgtbl, va, pa, sz, perm, (unsigned long long)(&_end)-(0xffffffe000000000-0x80000000));
}

#pragma GCC push_options
#pragma GCC optimize("O1")
void create_mapping2(unsigned long long *pgtbl, unsigned long long va, unsigned long long pa, unsigned long long sz, int perm,unsigned long long allocation_start)
{

        int VPN_2 = (va >> 30) & 0x1FF;
        int VPN_1 = (va >> 21) & 0x1FF;
        int VPN_0 = (va >> 12) & 0x1FF;

        unsigned long long *second_pgtbl;
        if ((pgtbl[VPN_2] & 0x1) == 0)
        {
            cur++;
            second_pgtbl = (void *)(allocation_start + 0x1000 * cur);
            for (int i = 0; i < 512; i++)
                second_pgtbl[i] = 0;
            pgtbl[VPN_2] |= (((unsigned long long)second_pgtbl >> 12) << 10);
            pgtbl[VPN_2] |= 0x1;
        }
        second_pgtbl = (void *)((pgtbl[VPN_2] >> 10) << 12);

        unsigned long long *third_pgtbl;
        if ((second_pgtbl[VPN_1] & 0x1) == 0)
        {
            cur++;
            third_pgtbl = (void *)(allocation_start + 0x1000 * cur);
            for (int i = 0; i < 512; i++)
                third_pgtbl[i] = 0;
            second_pgtbl[VPN_1] |= (((unsigned long long)third_pgtbl >> 12) << 10);
            second_pgtbl[VPN_1] |= 0x1;
        }
        third_pgtbl = (void *)((second_pgtbl[VPN_1] >> 10) << 12);

        if ((third_pgtbl[VPN_0] & 0x1) == 0)
        {
            third_pgtbl[VPN_0] |= (pa >> 12) << 10;
            third_pgtbl[VPN_0] |= 0x1;
            third_pgtbl[VPN_0] |= perm << 1;
        }
}
#pragma GCC pop_options

#pragma GCC push_options
#pragma GCC optimize("O1")
void paging_init()
{
    unsigned long long *pgtbl = &_end;

    for (int i = 0; i < 512; i++)
    {
        pgtbl[i] = 0;
    }
# 77 "vm.c"
    for (unsigned long long pa = 0x80000000; pa < 0x80000000 + (unsigned long long)(&rodata_start) - (unsigned long long)(&text_start); pa += 0x1000)
    {
        create_mapping(pgtbl, pa + (0xffffffe000000000-0x80000000), pa, 0x1000, 5);
        create_mapping(pgtbl, pa, pa, 0x1000, 5);
    }


    for (unsigned long long pa = 0x80000000 + (unsigned long long)(&rodata_start) - (unsigned long long)(&text_start); pa < 0x80000000 + (unsigned long long)(&data_start) - (unsigned long long)&(text_start); pa += 0x1000)
    {
        create_mapping(pgtbl, pa + (0xffffffe000000000-0x80000000), pa, 0x1000, 1);
        create_mapping(pgtbl, pa, pa, 0x1000, 1);
    }


    for (unsigned long long pa = 0x80000000 + (unsigned long long)(&data_start)- (unsigned long long)(&text_start); pa < 0x82000000; pa += 0x1000)
    {
        create_mapping(pgtbl, pa + (0xffffffe000000000-0x80000000), pa, 0x1000, 3);
        create_mapping(pgtbl, pa, pa, 0x1000, 3);
    }


    for (unsigned long long pa = 0x10000000; pa < 0x10001000; pa += 0x1000)
    {
        create_mapping(pgtbl, pa+(0xffffffe000000000-0x80000000), pa, 0x1000, 3);
    }
}
#pragma GCC pop_options

#pragma GCC push_options
#pragma GCC optimize("O1")

void clear64BitArrays(unsigned long long *array,int len){
    for(int i=0;i<len;i++){
        array[i]=0;
    }
}

void copy64BitArrays(unsigned long long *src,unsigned long long*dst,int len){
    for(int i=0;i<len;i++){
        dst[i]=src[i];
    }
}

#pragma GCC pop_options

void initUserPage_vm(unsigned long long* pgtbl,unsigned long long stack_page_number,unsigned long long stack_high_addr){
    copyRootPage_vm(&_end,pgtbl);


    for (unsigned long long va = 0; va < 0x80000000; va += 0x1000)
    {
        create_mapping_vm(pgtbl, va, 0x84000000 + va, 0x1000, 7);
    }

    for (unsigned long long i=0, va=0xffffffdf80000000-0x1000; i<stack_page_number ; va-=0x1000,i++)
    {
        create_mapping_vm(pgtbl,va, stack_high_addr-0x1000-(0xffffffe000000000-0x80000000)-i*1000, 0x1000, 3);
    }





}

void copyRootPage_vm(unsigned long long* src,unsigned long long* dst){
# 173 "vm.c"
    copy64BitArrays(src,dst,512);
}
