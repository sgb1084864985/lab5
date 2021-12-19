#include "vm.h"
#include "put.h"

extern unsigned long long text_start;
extern unsigned long long rodata_start;
extern unsigned long long data_start;
extern unsigned long long _end;

void create_mapping(uint64_t *pgtbl, uint64_t va, uint64_t pa, uint64_t sz, int perm){
    create_mapping2(pgtbl, va,  pa,  sz, perm, (uint64_t)(&_end));
}

void create_mapping_vm(uint64_t *pgtbl, uint64_t va, uint64_t pa, uint64_t sz, int perm){
    create_mapping2(pgtbl, va,  pa,  sz, perm, (uint64_t)(&_end)-offset);
}

#pragma GCC push_options
#pragma GCC optimize("O1")
void create_mapping2(uint64_t *pgtbl, uint64_t va, uint64_t pa, uint64_t sz, int perm,uint64_t allocation_start)
{
        //提取各级虚拟页号
        int VPN_2 = (va >> 30) & 0x1FF;
        int VPN_1 = (va >> 21) & 0x1FF;
        int VPN_0 = (va >> 12) & 0x1FF;

        uint64_t *second_pgtbl; //二级页表的基地址
        if ((pgtbl[VPN_2] & 0x1) == 0)
        {
            page_count++;   //分配新的物理页
            second_pgtbl = (void *)(allocation_start + 0x1000 * page_count); //获取基地址
            for (int i = 0; i < 512; i++)   //初始化
                second_pgtbl[i] = 0;
            pgtbl[VPN_2] |= (((uint64_t)second_pgtbl >> 12) << 10); //存储二级页表的物理基页
            pgtbl[VPN_2] |= 0x1; //对valid位置位
        }
        second_pgtbl = (void *)((pgtbl[VPN_2] >> 10) << 12);

        uint64_t *third_pgtbl;  //三级页表的基地址
        if ((second_pgtbl[VPN_1] & 0x1) == 0)
        {
            page_count++;
            third_pgtbl = (void *)(allocation_start + 0x1000 * page_count); //获取基地址
            for (int i = 0; i < 512; i++)
                third_pgtbl[i] = 0;
            second_pgtbl[VPN_1] |= (((uint64_t)third_pgtbl >> 12) << 10); //存储三级页表的物理基页
            second_pgtbl[VPN_1] |= 0x1;
        }
        third_pgtbl = (void *)((second_pgtbl[VPN_1] >> 10) << 12);

        if ((third_pgtbl[VPN_0] & 0x1) == 0)
        {
            third_pgtbl[VPN_0] |= (pa >> 12) << 10; //存储实际的物理页
            third_pgtbl[VPN_0] |= 0x1;              //valid置位
            third_pgtbl[VPN_0] |= perm << 1;        //权限置位
        }
}
#pragma GCC pop_options

#pragma GCC push_options
#pragma GCC optimize("O1")
void paging_init()
{
    uint64_t *pgtbl = &_end;
    //对一级页表项进行初始化
    for (int i = 0; i < 512; i++)
    {
        pgtbl[i] = 0;
    }

    /*
    **物理内存存储的空间如下：
    **|-----text-----|-------rodata-------|-----data------|------bss-------|----Page_table-----|
    **为了实现对section的保护，需要分别对text，rodata进行不同的权限映射（perm值不同）
    */

    //对text段的映射，包含高地址映射和等值映射
    for (uint64_t pa = 0x80000000; pa < 0x80000000 + (uint64_t)(&rodata_start) - (uint64_t)(&text_start); pa += PAGE_SIZE)
    {
        create_mapping(pgtbl, pa + offset, pa, 0x1000, 5);
        create_mapping(pgtbl, pa, pa, 0x1000, 5);
    }

    //对rodata段的映射，包含高地址映射和等值映射
    for (uint64_t pa = 0x80000000 + (uint64_t)(&rodata_start) - (uint64_t)(&text_start); pa < 0x80000000 + (uint64_t)(&data_start) - (uint64_t)&(text_start); pa += PAGE_SIZE)
    {
        create_mapping(pgtbl, pa + offset, pa, 0x1000, 1);
        create_mapping(pgtbl, pa, pa, 0x1000, 1);
    }

    //对其他段的映射，包含高地址映射和等值映射
    for (uint64_t pa = 0x80000000 + (uint64_t)(&data_start)- (uint64_t)(&text_start); pa < 0x82000000; pa += PAGE_SIZE)
    {
        create_mapping(pgtbl, pa + offset, pa, 0x1000, 3);
        create_mapping(pgtbl, pa, pa, 0x1000, 3);
    }

    //对硬件地址的映射
    for (uint64_t pa = 0x10000000; pa < 0x10001000; pa += PAGE_SIZE)
    {
        create_mapping(pgtbl, pa+offset, pa, 0x1000, 3);
    }
}
#pragma GCC pop_options

#pragma GCC push_options
#pragma GCC optimize("O1")

void clear64BitArrays(uint64_t *array,int len){
    for(int i=0;i<len;i++){
        array[i]=0;
    }
}

void copy64BitArrays(uint64_t *src,uint64_t*dst,int len){
    for(int i=0;i<len;i++){
        dst[i]=src[i];
    }   
}

#pragma GCC pop_options

void initUserPage_vm(uint64_t* pgtbl,uint64_t stack_page_number,uint64_t stack_high_addr){
    // just symply copy the root page of kernel,
    // because now we do not modify the block of kernel space

    copyRootPage_vm(&_end,pgtbl);

    //user code
    for (uint64_t va = 0; va < 0x80000000; va += PAGE_SIZE)
    {
        create_mapping_vm(pgtbl, va, 0x84000000 + va, 0x1000, 0xf);
    }

    //user stack
    for (uint64_t i=0, va=0xffffffdf80000000-0x1000; i<stack_page_number ; va-=0x1000,i++)
    {
        create_mapping_vm(pgtbl,va, stack_high_addr-0x1000-offset-i*1000, 0x1000, 0xb);
    }
}

void copyRootPage_vm(uint64_t* src,uint64_t* dst){
    // int i,j,k;
    // uint64_t *src_level2,*src_level3;
    // uint64_t *dst_level2,*dst_level3;
    // clear64BitArrays(dst,512);
    // for(i=0;i<512;i++){
    //     if( (src[i]&0x1) ){ // this entry is valid
            
    //         src_level2=(void *)((src[i] >> 10) << 12);

    //         page_count++;   //分配新的物理页

    //         dst_level2 = (void *)((uint64_t)(&_end) -offset + 0x1000 * page_count); //获取基地址
    //         clear64BitArrays(dst_level2,512);
    //         dst[i]|=(((uint64_t)dst_level2  >> 12) << 10);
    //         dst[i] |= 0x1; //对valid位置位

    //         for(j=0;j<512;j++){
    //             if((src_level2[j]&0x1)){
    //                 src_level3=(void *)((src_level2[j] >> 10) << 12);

    //                 page_count++;   //分配新的物理页

    //                 dst_level3 = (void *)((uint64_t)(&_end) -offset + 0x1000 * page_count); //获取基地址
    //                 dst_level2[i] |=(((uint64_t)dst_level3  >> 12) << 10);
    //                 dst_level2[i] |= 0x1; //对valid位置位
    //                 copy64BitArrays(src_level3,dst_level3,512);
    //             }
    //         }
    //     }
    // }
    copy64BitArrays(src,dst,512);
}

