#include "sys_impl.h"
#include "put.h"
#include "sched.h"

// optimized system call interface
// sys_write(unsigned int fd, const char* buf, size_t count);
void sys_write(uintptr_t* regs){
	if(regs[176>>3]==1){
        const unsigned char*buf=(const char*)regs[168>>3];
        size_t cnt=regs[160>>3];
        for(int i=0;i<cnt;i++){
            *UART16550A_DR = buf[i];
        }
        regs[176>>3]=cnt;
	}
}

// sys_getpid();
void sys_getpid(uintptr_t* regs){
	regs[176>>3]=current->pid;
}