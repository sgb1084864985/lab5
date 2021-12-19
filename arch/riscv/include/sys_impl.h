#ifndef _SYS_IMPL_H_
#define _SYS_IMPL_H_
#include "stddef.h"

void sys_write(uintptr_t* regs);
void sys_getpid(uintptr_t* regs);
#endif