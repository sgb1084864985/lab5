#include "sched.h"
#include "stddef.h"
#include "sys_impl.h"
#include "syscall.h"
#include "put.h"
// #include <syscall.h>
// #include <asm-generic/unistd.h>
// #include <linux/syscalls.h>

#define uint64_t unsigned long long
// #define uintptr_t uint64_t
int count = 0;

void ecall_handler(uintptr_t* regs);

void handler_s(size_t cause,size_t sepc,uintptr_t* regs) // i think sepc is not used
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
		regs[0]+=4; // sepc+=4;
	}
	return;
}

void ecall_handler(uintptr_t* regs){
	uint64_t callType=regs[120>>3];
	// puts("call type: ");
	// putullHex(callType);
	// puts("\n");
	switch(callType){
		case SYS_WRITE:
			sys_write(regs);
			break;
		case SYS_GETPID:
			sys_getpid(regs);
			break;
		default: break;
	}
	regs[0]+=4;
}