# global_value addr: 0804c218
# cookie addr: 0x0804c220
movl 0x0804c220, %eax
movl %eax, 0x0804c218
pushl $0x08048d05
ret
