#include "put.h"
#include "sched.h"
#include "stddef.h"
#include <syscall.h>
// #include <asm-generic/unistd.h>
// #include <linux/syscalls.h>

#define uint64_t unsigned long long
#define uintptr_t uint64_t
int count = 0;

void ecall_handler(uintptr_t* regs);

void handler_s(size_t cause,size_t sepc,uintptr_t* regs)
{
	if (cause >> 63)
	{ // interrupt
		if (((cause << 1) >> 1) == 5)
		{ // supervisor timer interrupt
			asm volatile("ecall");
			do_timer();
			count++;
		}
	}
	else
	{
		if(cause==8){
			ecall_handler(regs);
			return;
		}
		
		puts("Exeception has occured");
		puts(", caused by: 0x");
		putullHex(cause);
		puts(", at 0x");
		putullHex(sepc);
		puts("\n");
		if (cause == 12)
		{
			puts("instruction page fault\n");
		}
		else if (cause == 13)
		{
			puts("load page fault\n");
		}
		else if (cause == 15)
		{
			puts("store page fault\n");
		}
		regs[0]+=4;
	}
	return;
}

// sys_write(unsigned int fd, const char* buf, size_t count);
// sys_getpid();
void ecall_handler(uintptr_t* regs){
	uint64_t callType=regs[120>>3];

	switch(callType){
		case 64:
			regs[176>>3]=sys_write(
				regs[176>>3],
				regs[168>>3],
				regs[160>>3]
			);
			break;
		case 172:
			regs[176>>3]=sys_getpid();
			break;
		default: break;
	}
	regs[0]+=4;
}