
bomb:     file format elf32-i386


Disassembly of section .init:

080486f4 <_init>:
 80486f4:	53                   	push   %ebx
 80486f5:	83 ec 08             	sub    $0x8,%esp
 80486f8:	e8 13 02 00 00       	call   8048910 <__x86.get_pc_thunk.bx>
 80486fd:	81 c3 03 39 00 00    	add    $0x3903,%ebx
 8048703:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048709:	85 c0                	test   %eax,%eax
 804870b:	74 05                	je     8048712 <_init+0x1e>
 804870d:	e8 be 01 00 00       	call   80488d0 <__gmon_start__@plt>
 8048712:	83 c4 08             	add    $0x8,%esp
 8048715:	5b                   	pop    %ebx
 8048716:	c3                   	ret    

Disassembly of section .plt:

08048720 <.plt>:
 8048720:	ff 35 04 c0 04 08    	pushl  0x804c004
 8048726:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804872c:	00 00                	add    %al,(%eax)
	...

08048730 <read@plt>:
 8048730:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048736:	68 00 00 00 00       	push   $0x0
 804873b:	e9 e0 ff ff ff       	jmp    8048720 <.plt>

08048740 <fflush@plt>:
 8048740:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048746:	68 08 00 00 00       	push   $0x8
 804874b:	e9 d0 ff ff ff       	jmp    8048720 <.plt>

08048750 <fgets@plt>:
 8048750:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048756:	68 10 00 00 00       	push   $0x10
 804875b:	e9 c0 ff ff ff       	jmp    8048720 <.plt>

08048760 <signal@plt>:
 8048760:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048766:	68 18 00 00 00       	push   $0x18
 804876b:	e9 b0 ff ff ff       	jmp    8048720 <.plt>

08048770 <sleep@plt>:
 8048770:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048776:	68 20 00 00 00       	push   $0x20
 804877b:	e9 a0 ff ff ff       	jmp    8048720 <.plt>

08048780 <alarm@plt>:
 8048780:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048786:	68 28 00 00 00       	push   $0x28
 804878b:	e9 90 ff ff ff       	jmp    8048720 <.plt>

08048790 <__stack_chk_fail@plt>:
 8048790:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048796:	68 30 00 00 00       	push   $0x30
 804879b:	e9 80 ff ff ff       	jmp    8048720 <.plt>

080487a0 <strcpy@plt>:
 80487a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80487a6:	68 38 00 00 00       	push   $0x38
 80487ab:	e9 70 ff ff ff       	jmp    8048720 <.plt>

080487b0 <getenv@plt>:
 80487b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80487b6:	68 40 00 00 00       	push   $0x40
 80487bb:	e9 60 ff ff ff       	jmp    8048720 <.plt>

080487c0 <puts@plt>:
 80487c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80487c6:	68 48 00 00 00       	push   $0x48
 80487cb:	e9 50 ff ff ff       	jmp    8048720 <.plt>

080487d0 <__memmove_chk@plt>:
 80487d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80487d6:	68 50 00 00 00       	push   $0x50
 80487db:	e9 40 ff ff ff       	jmp    8048720 <.plt>

080487e0 <exit@plt>:
 80487e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80487e6:	68 58 00 00 00       	push   $0x58
 80487eb:	e9 30 ff ff ff       	jmp    8048720 <.plt>

080487f0 <__libc_start_main@plt>:
 80487f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80487f6:	68 60 00 00 00       	push   $0x60
 80487fb:	e9 20 ff ff ff       	jmp    8048720 <.plt>

08048800 <write@plt>:
 8048800:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048806:	68 68 00 00 00       	push   $0x68
 804880b:	e9 10 ff ff ff       	jmp    8048720 <.plt>

08048810 <__isoc99_sscanf@plt>:
 8048810:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048816:	68 70 00 00 00       	push   $0x70
 804881b:	e9 00 ff ff ff       	jmp    8048720 <.plt>

08048820 <fopen@plt>:
 8048820:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048826:	68 78 00 00 00       	push   $0x78
 804882b:	e9 f0 fe ff ff       	jmp    8048720 <.plt>

08048830 <__errno_location@plt>:
 8048830:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 8048836:	68 80 00 00 00       	push   $0x80
 804883b:	e9 e0 fe ff ff       	jmp    8048720 <.plt>

08048840 <__printf_chk@plt>:
 8048840:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048846:	68 88 00 00 00       	push   $0x88
 804884b:	e9 d0 fe ff ff       	jmp    8048720 <.plt>

08048850 <socket@plt>:
 8048850:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048856:	68 90 00 00 00       	push   $0x90
 804885b:	e9 c0 fe ff ff       	jmp    8048720 <.plt>

08048860 <__fprintf_chk@plt>:
 8048860:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048866:	68 98 00 00 00       	push   $0x98
 804886b:	e9 b0 fe ff ff       	jmp    8048720 <.plt>

08048870 <gethostbyname@plt>:
 8048870:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048876:	68 a0 00 00 00       	push   $0xa0
 804887b:	e9 a0 fe ff ff       	jmp    8048720 <.plt>

08048880 <strtol@plt>:
 8048880:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048886:	68 a8 00 00 00       	push   $0xa8
 804888b:	e9 90 fe ff ff       	jmp    8048720 <.plt>

08048890 <connect@plt>:
 8048890:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048896:	68 b0 00 00 00       	push   $0xb0
 804889b:	e9 80 fe ff ff       	jmp    8048720 <.plt>

080488a0 <close@plt>:
 80488a0:	ff 25 68 c0 04 08    	jmp    *0x804c068
 80488a6:	68 b8 00 00 00       	push   $0xb8
 80488ab:	e9 70 fe ff ff       	jmp    8048720 <.plt>

080488b0 <__ctype_b_loc@plt>:
 80488b0:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 80488b6:	68 c0 00 00 00       	push   $0xc0
 80488bb:	e9 60 fe ff ff       	jmp    8048720 <.plt>

080488c0 <__sprintf_chk@plt>:
 80488c0:	ff 25 70 c0 04 08    	jmp    *0x804c070
 80488c6:	68 c8 00 00 00       	push   $0xc8
 80488cb:	e9 50 fe ff ff       	jmp    8048720 <.plt>

Disassembly of section .plt.got:

080488d0 <__gmon_start__@plt>:
 80488d0:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80488d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080488e0 <_start>:
 80488e0:	31 ed                	xor    %ebp,%ebp
 80488e2:	5e                   	pop    %esi
 80488e3:	89 e1                	mov    %esp,%ecx
 80488e5:	83 e4 f0             	and    $0xfffffff0,%esp
 80488e8:	50                   	push   %eax
 80488e9:	54                   	push   %esp
 80488ea:	52                   	push   %edx
 80488eb:	68 40 9e 04 08       	push   $0x8049e40
 80488f0:	68 e0 9d 04 08       	push   $0x8049de0
 80488f5:	51                   	push   %ecx
 80488f6:	56                   	push   %esi
 80488f7:	68 db 89 04 08       	push   $0x80489db
 80488fc:	e8 ef fe ff ff       	call   80487f0 <__libc_start_main@plt>
 8048901:	f4                   	hlt    
 8048902:	66 90                	xchg   %ax,%ax
 8048904:	66 90                	xchg   %ax,%ax
 8048906:	66 90                	xchg   %ax,%ax
 8048908:	66 90                	xchg   %ax,%ax
 804890a:	66 90                	xchg   %ax,%ax
 804890c:	66 90                	xchg   %ax,%ax
 804890e:	66 90                	xchg   %ax,%ax

08048910 <__x86.get_pc_thunk.bx>:
 8048910:	8b 1c 24             	mov    (%esp),%ebx
 8048913:	c3                   	ret    
 8048914:	66 90                	xchg   %ax,%ax
 8048916:	66 90                	xchg   %ax,%ax
 8048918:	66 90                	xchg   %ax,%ax
 804891a:	66 90                	xchg   %ax,%ax
 804891c:	66 90                	xchg   %ax,%ax
 804891e:	66 90                	xchg   %ax,%ax

08048920 <deregister_tm_clones>:
 8048920:	b8 a3 c3 04 08       	mov    $0x804c3a3,%eax
 8048925:	2d a0 c3 04 08       	sub    $0x804c3a0,%eax
 804892a:	83 f8 06             	cmp    $0x6,%eax
 804892d:	76 1a                	jbe    8048949 <deregister_tm_clones+0x29>
 804892f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048934:	85 c0                	test   %eax,%eax
 8048936:	74 11                	je     8048949 <deregister_tm_clones+0x29>
 8048938:	55                   	push   %ebp
 8048939:	89 e5                	mov    %esp,%ebp
 804893b:	83 ec 14             	sub    $0x14,%esp
 804893e:	68 a0 c3 04 08       	push   $0x804c3a0
 8048943:	ff d0                	call   *%eax
 8048945:	83 c4 10             	add    $0x10,%esp
 8048948:	c9                   	leave  
 8048949:	f3 c3                	repz ret 
 804894b:	90                   	nop
 804894c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048950 <register_tm_clones>:
 8048950:	b8 a0 c3 04 08       	mov    $0x804c3a0,%eax
 8048955:	2d a0 c3 04 08       	sub    $0x804c3a0,%eax
 804895a:	c1 f8 02             	sar    $0x2,%eax
 804895d:	89 c2                	mov    %eax,%edx
 804895f:	c1 ea 1f             	shr    $0x1f,%edx
 8048962:	01 d0                	add    %edx,%eax
 8048964:	d1 f8                	sar    %eax
 8048966:	74 1b                	je     8048983 <register_tm_clones+0x33>
 8048968:	ba 00 00 00 00       	mov    $0x0,%edx
 804896d:	85 d2                	test   %edx,%edx
 804896f:	74 12                	je     8048983 <register_tm_clones+0x33>
 8048971:	55                   	push   %ebp
 8048972:	89 e5                	mov    %esp,%ebp
 8048974:	83 ec 10             	sub    $0x10,%esp
 8048977:	50                   	push   %eax
 8048978:	68 a0 c3 04 08       	push   $0x804c3a0
 804897d:	ff d2                	call   *%edx
 804897f:	83 c4 10             	add    $0x10,%esp
 8048982:	c9                   	leave  
 8048983:	f3 c3                	repz ret 
 8048985:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048990 <__do_global_dtors_aux>:
 8048990:	80 3d c8 c3 04 08 00 	cmpb   $0x0,0x804c3c8
 8048997:	75 13                	jne    80489ac <__do_global_dtors_aux+0x1c>
 8048999:	55                   	push   %ebp
 804899a:	89 e5                	mov    %esp,%ebp
 804899c:	83 ec 08             	sub    $0x8,%esp
 804899f:	e8 7c ff ff ff       	call   8048920 <deregister_tm_clones>
 80489a4:	c6 05 c8 c3 04 08 01 	movb   $0x1,0x804c3c8
 80489ab:	c9                   	leave  
 80489ac:	f3 c3                	repz ret 
 80489ae:	66 90                	xchg   %ax,%ax

080489b0 <frame_dummy>:
 80489b0:	b8 10 bf 04 08       	mov    $0x804bf10,%eax
 80489b5:	8b 10                	mov    (%eax),%edx
 80489b7:	85 d2                	test   %edx,%edx
 80489b9:	75 05                	jne    80489c0 <frame_dummy+0x10>
 80489bb:	eb 93                	jmp    8048950 <register_tm_clones>
 80489bd:	8d 76 00             	lea    0x0(%esi),%esi
 80489c0:	ba 00 00 00 00       	mov    $0x0,%edx
 80489c5:	85 d2                	test   %edx,%edx
 80489c7:	74 f2                	je     80489bb <frame_dummy+0xb>
 80489c9:	55                   	push   %ebp
 80489ca:	89 e5                	mov    %esp,%ebp
 80489cc:	83 ec 14             	sub    $0x14,%esp
 80489cf:	50                   	push   %eax
 80489d0:	ff d2                	call   *%edx
 80489d2:	83 c4 10             	add    $0x10,%esp
 80489d5:	c9                   	leave  
 80489d6:	e9 75 ff ff ff       	jmp    8048950 <register_tm_clones>

080489db <main>:
 80489db:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80489df:	83 e4 f0             	and    $0xfffffff0,%esp
 80489e2:	ff 71 fc             	pushl  -0x4(%ecx)
 80489e5:	55                   	push   %ebp
 80489e6:	89 e5                	mov    %esp,%ebp
 80489e8:	53                   	push   %ebx
 80489e9:	51                   	push   %ecx
 80489ea:	8b 01                	mov    (%ecx),%eax
 80489ec:	8b 59 04             	mov    0x4(%ecx),%ebx
 80489ef:	83 f8 01             	cmp    $0x1,%eax
 80489f2:	75 0c                	jne    8048a00 <main+0x25>
 80489f4:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 80489f9:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 80489fe:	eb 5b                	jmp    8048a5b <main+0x80>
 8048a00:	83 f8 02             	cmp    $0x2,%eax
 8048a03:	75 39                	jne    8048a3e <main+0x63>
 8048a05:	83 ec 08             	sub    $0x8,%esp
 8048a08:	68 68 9e 04 08       	push   $0x8049e68
 8048a0d:	ff 73 04             	pushl  0x4(%ebx)
 8048a10:	e8 0b fe ff ff       	call   8048820 <fopen@plt>
 8048a15:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a1a:	83 c4 10             	add    $0x10,%esp
 8048a1d:	85 c0                	test   %eax,%eax
 8048a1f:	75 3a                	jne    8048a5b <main+0x80>
 8048a21:	ff 73 04             	pushl  0x4(%ebx)
 8048a24:	ff 33                	pushl  (%ebx)
 8048a26:	68 6a 9e 04 08       	push   $0x8049e6a
 8048a2b:	6a 01                	push   $0x1
 8048a2d:	e8 0e fe ff ff       	call   8048840 <__printf_chk@plt>
 8048a32:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a39:	e8 a2 fd ff ff       	call   80487e0 <exit@plt>
 8048a3e:	83 ec 04             	sub    $0x4,%esp
 8048a41:	ff 33                	pushl  (%ebx)
 8048a43:	68 87 9e 04 08       	push   $0x8049e87
 8048a48:	6a 01                	push   $0x1
 8048a4a:	e8 f1 fd ff ff       	call   8048840 <__printf_chk@plt>
 8048a4f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a56:	e8 85 fd ff ff       	call   80487e0 <exit@plt>
 8048a5b:	e8 ab 05 00 00       	call   804900b <initialize_bomb>
 8048a60:	83 ec 0c             	sub    $0xc,%esp
 8048a63:	68 ec 9e 04 08       	push   $0x8049eec
 8048a68:	e8 53 fd ff ff       	call   80487c0 <puts@plt>
 8048a6d:	c7 04 24 28 9f 04 08 	movl   $0x8049f28,(%esp)
 8048a74:	e8 47 fd ff ff       	call   80487c0 <puts@plt>
 8048a79:	e8 7f 06 00 00       	call   80490fd <read_line>
 8048a7e:	89 04 24             	mov    %eax,(%esp)
 8048a81:	e8 ad 00 00 00       	call   8048b33 <phase_1>
 8048a86:	e8 6b 07 00 00       	call   80491f6 <phase_defused>
 8048a8b:	c7 04 24 54 9f 04 08 	movl   $0x8049f54,(%esp)
 8048a92:	e8 29 fd ff ff       	call   80487c0 <puts@plt>
 8048a97:	e8 61 06 00 00       	call   80490fd <read_line>
 8048a9c:	89 04 24             	mov    %eax,(%esp)
 8048a9f:	e8 b0 00 00 00       	call   8048b54 <phase_2>
 8048aa4:	e8 4d 07 00 00       	call   80491f6 <phase_defused>
 8048aa9:	c7 04 24 a1 9e 04 08 	movl   $0x8049ea1,(%esp)
 8048ab0:	e8 0b fd ff ff       	call   80487c0 <puts@plt>
 8048ab5:	e8 43 06 00 00       	call   80490fd <read_line>
 8048aba:	89 04 24             	mov    %eax,(%esp)
 8048abd:	e8 f5 00 00 00       	call   8048bb7 <phase_3>
 8048ac2:	e8 2f 07 00 00       	call   80491f6 <phase_defused>
 8048ac7:	c7 04 24 bf 9e 04 08 	movl   $0x8049ebf,(%esp)
 8048ace:	e8 ed fc ff ff       	call   80487c0 <puts@plt>
 8048ad3:	e8 25 06 00 00       	call   80490fd <read_line>
 8048ad8:	89 04 24             	mov    %eax,(%esp)
 8048adb:	e8 de 01 00 00       	call   8048cbe <phase_4>
 8048ae0:	e8 11 07 00 00       	call   80491f6 <phase_defused>
 8048ae5:	c7 04 24 80 9f 04 08 	movl   $0x8049f80,(%esp)
 8048aec:	e8 cf fc ff ff       	call   80487c0 <puts@plt>
 8048af1:	e8 07 06 00 00       	call   80490fd <read_line>
 8048af6:	89 04 24             	mov    %eax,(%esp)
 8048af9:	e8 35 02 00 00       	call   8048d33 <phase_5>
 8048afe:	e8 f3 06 00 00       	call   80491f6 <phase_defused>
 8048b03:	c7 04 24 ce 9e 04 08 	movl   $0x8049ece,(%esp)
 8048b0a:	e8 b1 fc ff ff       	call   80487c0 <puts@plt>
 8048b0f:	e8 e9 05 00 00       	call   80490fd <read_line>
 8048b14:	89 04 24             	mov    %eax,(%esp)
 8048b17:	e8 5f 02 00 00       	call   8048d7b <phase_6>
 8048b1c:	e8 d5 06 00 00       	call   80491f6 <phase_defused>
 8048b21:	83 c4 10             	add    $0x10,%esp
 8048b24:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b29:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048b2c:	59                   	pop    %ecx
 8048b2d:	5b                   	pop    %ebx
 8048b2e:	5d                   	pop    %ebp
 8048b2f:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048b32:	c3                   	ret    

08048b33 <phase_1>:
 8048b33:	83 ec 14             	sub    $0x14,%esp
 8048b36:	68 a4 9f 04 08       	push   $0x8049fa4
 8048b3b:	ff 74 24 1c          	pushl  0x1c(%esp)
 8048b3f:	e8 62 04 00 00       	call   8048fa6 <strings_not_equal>
 8048b44:	83 c4 10             	add    $0x10,%esp
 8048b47:	85 c0                	test   %eax,%eax
 8048b49:	74 05                	je     8048b50 <phase_1+0x1d>
 8048b4b:	e8 4d 05 00 00       	call   804909d <explode_bomb>
 8048b50:	83 c4 0c             	add    $0xc,%esp
 8048b53:	c3                   	ret    

08048b54 <phase_2>: ; 1 2 4 8 16 32
 8048b54:	56                   	push   %esi
 8048b55:	53                   	push   %ebx
 8048b56:	83 ec 2c             	sub    $0x2c,%esp
 8048b59:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048b5f:	89 44 24 24          	mov    %eax,0x24(%esp)
 8048b63:	31 c0                	xor    %eax,%eax
 8048b65:	8d 44 24 0c          	lea    0xc(%esp),%eax
 8048b69:	50                   	push   %eax
 8048b6a:	ff 74 24 3c          	pushl  0x3c(%esp)
 8048b6e:	e8 4f 05 00 00       	call   80490c2 <read_six_numbers>
 8048b73:	83 c4 10             	add    $0x10,%esp
 8048b76:	83 7c 24 04 01       	cmpl   $0x1,0x4(%esp) ;if (nums[0]!=1) boom;
 8048b7b:	74 05                	je     8048b82 <phase_2+0x2e>
 8048b7d:	e8 1b 05 00 00       	call   804909d <explode_bomb>; 
 8048b82:	8d 5c 24 04          	lea    0x4(%esp),%ebx
 8048b86:	8d 74 24 18          	lea    0x18(%esp),%esi
 8048b8a:	8b 03                	mov    (%ebx),%eax ; int j = nums[i];
 8048b8c:	01 c0                	add    %eax,%eax ; j *= 2;
 8048b8e:	39 43 04             	cmp    %eax,0x4(%ebx) ; if (j==nums[i+1])
 8048b91:	74 05                	je     8048b98 <phase_2+0x44> ; if not equal, boom; else 
 8048b93:	e8 05 05 00 00       	call   804909d <explode_bomb>
 8048b98:	83 c3 04             	add    $0x4,%ebx ; fetch next num
 8048b9b:	39 f3                	cmp    %esi,%ebx
 8048b9d:	75 eb                	jne    8048b8a <phase_2+0x36> ; if not end, loop
 8048b9f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048ba3:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048baa:	74 05                	je     8048bb1 <phase_2+0x5d>
 8048bac:	e8 df fb ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048bb1:	83 c4 24             	add    $0x24,%esp
 8048bb4:	5b                   	pop    %ebx
 8048bb5:	5e                   	pop    %esi
 8048bb6:	c3                   	ret    

08048bb7 <phase_3>:
 8048bb7:	83 ec 1c             	sub    $0x1c,%esp
 8048bba:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048bc0:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048bc4:	31 c0                	xor    %eax,%eax
 8048bc6:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048bca:	50                   	push   %eax
 8048bcb:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048bcf:	50                   	push   %eax
 8048bd0:	68 6f a1 04 08       	push   $0x804a16f; "%d %d"
 8048bd5:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048bd9:	e8 32 fc ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048bde:	83 c4 10             	add    $0x10,%esp
 8048be1:	83 f8 01             	cmp    $0x1,%eax ; need 2 num
 8048be4:	7f 05                	jg     8048beb <phase_3+0x34>
 8048be6:	e8 b2 04 00 00       	call   804909d <explode_bomb>
 8048beb:	83 7c 24 04 07       	cmpl   $0x7,0x4(%esp) ; if (nums[0] > 7) boom
 8048bf0:	77 3c                	ja     8048c2e <phase_3+0x77>
 8048bf2:	8b 44 24 04          	mov    0x4(%esp),%eax ; %eax = nums[1];
 8048bf6:	ff 24 85 00 a0 04 08 	jmp    *0x804a000(,%eax,4); goto *804a000 + %eax * 4
 8048bfd:	b8 7f 03 00 00       	mov    $0x37f,%eax
 8048c02:	eb 3b                	jmp    8048c3f <phase_3+0x88>
 8048c04:	b8 13 03 00 00       	mov    $0x313,%eax
 8048c09:	eb 34                	jmp    8048c3f <phase_3+0x88>
 8048c0b:	b8 eb 01 00 00       	mov    $0x1eb,%eax
 8048c10:	eb 2d                	jmp    8048c3f <phase_3+0x88>
 8048c12:	b8 9b 01 00 00       	mov    $0x19b,%eax
 8048c17:	eb 26                	jmp    8048c3f <phase_3+0x88>
 8048c19:	b8 d4 00 00 00       	mov    $0xd4,%eax
 8048c1e:	eb 1f                	jmp    8048c3f <phase_3+0x88>
 8048c20:	b8 ba 00 00 00       	mov    $0xba,%eax
 8048c25:	eb 18                	jmp    8048c3f <phase_3+0x88>
 8048c27:	b8 7a 01 00 00       	mov    $0x17a,%eax
 8048c2c:	eb 11                	jmp    8048c3f <phase_3+0x88>
 8048c2e:	e8 6a 04 00 00       	call   804909d <explode_bomb>
 8048c33:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c38:	eb 05                	jmp    8048c3f <phase_3+0x88>
 8048c3a:	b8 f9 01 00 00       	mov    $0x1f9,%eax
 8048c3f:	3b 44 24 08          	cmp    0x8(%esp),%eax
 8048c43:	74 05                	je     8048c4a <phase_3+0x93>
 8048c45:	e8 53 04 00 00       	call   804909d <explode_bomb>
 8048c4a:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048c4e:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048c55:	74 05                	je     8048c5c <phase_3+0xa5>
 8048c57:	e8 34 fb ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048c5c:	83 c4 1c             	add    $0x1c,%esp
 8048c5f:	c3                   	ret    

; int func4(int cx, int bx, int si) {
;   int ax = si;
;   ax -= bx;
;   int dx = (unsigned)ax << 31;
;   ax += dx;
;   ax >>= 1;
;   dx = ax + bx;
;   if (dx <= cx) {
;     ax = 0;
;     if (dx != cx) {
;       dx += 1;
;       ax = func4(cx, dx, si);
;       ax = 2 * ax + 1;
;     }
;   } else {
;     dx -= 1;
;     ax = func4(cx, bx, dx);
;     ax = 2 * ax;
;   }
;   return ax;
; }

08048c60 <func4>:
 8048c60:	56                   	push   %esi
 8048c61:	53                   	push   %ebx
 8048c62:	83 ec 04             	sub    $0x4,%esp
 8048c65:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 8048c69:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048c6d:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048c71:	89 f0                	mov    %esi,%eax
 8048c73:	29 d8                	sub    %ebx,%eax
 8048c75:	89 c2                	mov    %eax,%edx
 8048c77:	c1 ea 1f             	shr    $0x1f,%edx
 8048c7a:	01 d0                	add    %edx,%eax
 8048c7c:	d1 f8                	sar    %eax
 8048c7e:	8d 14 18             	lea    (%eax,%ebx,1),%edx
 8048c81:	39 ca                	cmp    %ecx,%edx
 8048c83:	7e 15                	jle    8048c9a <func4+0x3a>
 8048c85:	83 ec 04             	sub    $0x4,%esp
 8048c88:	83 ea 01             	sub    $0x1,%edx
 8048c8b:	52                   	push   %edx
 8048c8c:	53                   	push   %ebx
 8048c8d:	51                   	push   %ecx
 8048c8e:	e8 cd ff ff ff       	call   8048c60 <func4>
 8048c93:	83 c4 10             	add    $0x10,%esp
 8048c96:	01 c0                	add    %eax,%eax
 8048c98:	eb 1e                	jmp    8048cb8 <func4+0x58>
 8048c9a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c9f:	39 ca                	cmp    %ecx,%edx
 8048ca1:	7d 15                	jge    8048cb8 <func4+0x58>
 8048ca3:	83 ec 04             	sub    $0x4,%esp
 8048ca6:	56                   	push   %esi
 8048ca7:	83 c2 01             	add    $0x1,%edx
 8048caa:	52                   	push   %edx
 8048cab:	51                   	push   %ecx
 8048cac:	e8 af ff ff ff       	call   8048c60 <func4>
 8048cb1:	83 c4 10             	add    $0x10,%esp
 8048cb4:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048cb8:	83 c4 04             	add    $0x4,%esp
 8048cbb:	5b                   	pop    %ebx
 8048cbc:	5e                   	pop    %esi
 8048cbd:	c3                   	ret    

08048cbe <phase_4>:
 8048cbe:	83 ec 1c             	sub    $0x1c,%esp
 8048cc1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048cc7:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048ccb:	31 c0                	xor    %eax,%eax
 8048ccd:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048cd1:	50                   	push   %eax
 8048cd2:	8d 44 24 08          	lea    0x8(%esp),%eax
 8048cd6:	50                   	push   %eax
 8048cd7:	68 6f a1 04 08       	push   $0x804a16f; "%d %d"
 8048cdc:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048ce0:	e8 2b fb ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048ce5:	83 c4 10             	add    $0x10,%esp
 8048ce8:	83 f8 02             	cmp    $0x2,%eax
 8048ceb:	75 07                	jne    8048cf4 <phase_4+0x36> ; len != 2, boom
 8048ced:	83 7c 24 04 0e       	cmpl   $0xe,0x4(%esp) ; nums[0] <= 0xe
 8048cf2:	76 05                	jbe    8048cf9 <phase_4+0x3b>
 8048cf4:	e8 a4 03 00 00       	call   804909d <explode_bomb>
 8048cf9:	83 ec 04             	sub    $0x4,%esp
 8048cfc:	6a 0e                	push   $0xe
 8048cfe:	6a 00                	push   $0x0
 8048d00:	ff 74 24 10          	pushl  0x10(%esp)
 8048d04:	e8 57 ff ff ff       	call   8048c60 <func4>
 8048d09:	83 c4 10             	add    $0x10,%esp
 8048d0c:	83 f8 03             	cmp    $0x3,%eax ; func4(nums[0],0,e) == 3;
 8048d0f:	75 07                	jne    8048d18 <phase_4+0x5a>
 8048d11:	83 7c 24 08 03       	cmpl   $0x3,0x8(%esp) ; nums[1] == 3
 8048d16:	74 05                	je     8048d1d <phase_4+0x5f>
 8048d18:	e8 80 03 00 00       	call   804909d <explode_bomb>
 8048d1d:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048d21:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048d28:	74 05                	je     8048d2f <phase_4+0x71>
 8048d2a:	e8 61 fa ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048d2f:	83 c4 1c             	add    $0x1c,%esp
 8048d32:	c3                   	ret    

08048d33 <phase_5>:
 8048d33:	53                   	push   %ebx
 8048d34:	83 ec 14             	sub    $0x14,%esp
 8048d37:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
 8048d3b:	53                   	push   %ebx
 8048d3c:	e8 46 02 00 00       	call   8048f87 <string_length>
 8048d41:	83 c4 10             	add    $0x10,%esp
 8048d44:	83 f8 06             	cmp    $0x6,%eax ; input length = 6
 8048d47:	74 05                	je     8048d4e <phase_5+0x1b>
 8048d49:	e8 4f 03 00 00       	call   804909d <explode_bomb>
 8048d4e:	89 d8                	mov    %ebx,%eax ; eax = input_str
 8048d50:	83 c3 06             	add    $0x6,%ebx ; ebx = 0
 8048d53:	b9 00 00 00 00       	mov    $0x0,%ecx ; ecx = 0
 8048d58:	0f b6 10             	movzbl (%eax),%edx ; char x form input_str
 8048d5b:	83 e2 0f             	and    $0xf,%edx ; lowest byte of edx
 8048d5e:	03 0c 95 20 a0 04 08 	add    0x804a020(,%edx,4),%ecx
 8048d65:	83 c0 01             	add    $0x1,%eax
 8048d68:	39 d8                	cmp    %ebx,%eax
 8048d6a:	75 ec                	jne    8048d58 <phase_5+0x25>
 8048d6c:	83 f9 45             	cmp    $0x45,%ecx
 8048d6f:	74 05                	je     8048d76 <phase_5+0x43>
 8048d71:	e8 27 03 00 00       	call   804909d <explode_bomb>
 8048d76:	83 c4 08             	add    $0x8,%esp
 8048d79:	5b                   	pop    %ebx
 8048d7a:	c3                   	ret    

08048d7b <phase_6>:
 8048d7b:	56                   	push   %esi
 8048d7c:	53                   	push   %ebx
 8048d7d:	83 ec 4c             	sub    $0x4c,%esp
 8048d80:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048d86:	89 44 24 44          	mov    %eax,0x44(%esp)
 8048d8a:	31 c0                	xor    %eax,%eax
 8048d8c:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048d90:	50                   	push   %eax
 8048d91:	ff 74 24 5c          	pushl  0x5c(%esp)
 8048d95:	e8 28 03 00 00       	call   80490c2 <read_six_numbers>
 8048d9a:	83 c4 10             	add    $0x10,%esp
 8048d9d:	be 00 00 00 00       	mov    $0x0,%esi
 8048da2:	8b 44 b4 0c          	mov    0xc(%esp,%esi,4),%eax
 8048da6:	83 e8 01             	sub    $0x1,%eax
 8048da9:	83 f8 05             	cmp    $0x5,%eax
 8048dac:	76 05                	jbe    8048db3 <phase_6+0x38>
 8048dae:	e8 ea 02 00 00       	call   804909d <explode_bomb>
 8048db3:	83 c6 01             	add    $0x1,%esi
 8048db6:	83 fe 06             	cmp    $0x6,%esi
 8048db9:	74 33                	je     8048dee <phase_6+0x73>
 8048dbb:	89 f3                	mov    %esi,%ebx
 8048dbd:	8b 44 9c 0c          	mov    0xc(%esp,%ebx,4),%eax
 8048dc1:	39 44 b4 08          	cmp    %eax,0x8(%esp,%esi,4)
 8048dc5:	75 05                	jne    8048dcc <phase_6+0x51>
 8048dc7:	e8 d1 02 00 00       	call   804909d <explode_bomb>
 8048dcc:	83 c3 01             	add    $0x1,%ebx
 8048dcf:	83 fb 05             	cmp    $0x5,%ebx
 8048dd2:	7e e9                	jle    8048dbd <phase_6+0x42>
 8048dd4:	eb cc                	jmp    8048da2 <phase_6+0x27>
 8048dd6:	8b 52 08             	mov    0x8(%edx),%edx
 8048dd9:	83 c0 01             	add    $0x1,%eax
 8048ddc:	39 c8                	cmp    %ecx,%eax
 8048dde:	75 f6                	jne    8048dd6 <phase_6+0x5b>
 8048de0:	89 54 b4 24          	mov    %edx,0x24(%esp,%esi,4)
 8048de4:	83 c3 01             	add    $0x1,%ebx
 8048de7:	83 fb 06             	cmp    $0x6,%ebx
 8048dea:	75 07                	jne    8048df3 <phase_6+0x78>
 8048dec:	eb 1c                	jmp    8048e0a <phase_6+0x8f>
 8048dee:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048df3:	89 de                	mov    %ebx,%esi
 8048df5:	8b 4c 9c 0c          	mov    0xc(%esp,%ebx,4),%ecx
 8048df9:	b8 01 00 00 00       	mov    $0x1,%eax
 8048dfe:	ba 3c c1 04 08       	mov    $0x804c13c,%edx
 8048e03:	83 f9 01             	cmp    $0x1,%ecx
 8048e06:	7f ce                	jg     8048dd6 <phase_6+0x5b>
 8048e08:	eb d6                	jmp    8048de0 <phase_6+0x65>
 8048e0a:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 8048e0e:	8d 44 24 24          	lea    0x24(%esp),%eax
 8048e12:	8d 74 24 38          	lea    0x38(%esp),%esi
 8048e16:	89 d9                	mov    %ebx,%ecx
 8048e18:	8b 50 04             	mov    0x4(%eax),%edx
 8048e1b:	89 51 08             	mov    %edx,0x8(%ecx)
 8048e1e:	83 c0 04             	add    $0x4,%eax
 8048e21:	89 d1                	mov    %edx,%ecx
 8048e23:	39 f0                	cmp    %esi,%eax
 8048e25:	75 f1                	jne    8048e18 <phase_6+0x9d>
 8048e27:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8048e2e:	be 05 00 00 00       	mov    $0x5,%esi
 8048e33:	8b 43 08             	mov    0x8(%ebx),%eax
 8048e36:	8b 00                	mov    (%eax),%eax
 8048e38:	39 03                	cmp    %eax,(%ebx)
 8048e3a:	7e 05                	jle    8048e41 <phase_6+0xc6>
 8048e3c:	e8 5c 02 00 00       	call   804909d <explode_bomb>
 8048e41:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048e44:	83 ee 01             	sub    $0x1,%esi
 8048e47:	75 ea                	jne    8048e33 <phase_6+0xb8>
 8048e49:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 8048e4d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048e54:	74 05                	je     8048e5b <phase_6+0xe0>
 8048e56:	e8 35 f9 ff ff       	call   8048790 <__stack_chk_fail@plt>
 8048e5b:	83 c4 44             	add    $0x44,%esp
 8048e5e:	5b                   	pop    %ebx
 8048e5f:	5e                   	pop    %esi
 8048e60:	c3                   	ret    

08048e61 <fun7>:
 8048e61:	53                   	push   %ebx
 8048e62:	83 ec 08             	sub    $0x8,%esp
 8048e65:	8b 54 24 10          	mov    0x10(%esp),%edx; tree (ptr)
 8048e69:	8b 4c 24 14          	mov    0x14(%esp),%ecx; input
 8048e6d:	85 d2                	test   %edx,%edx ; if tree==nullptr
 8048e6f:	74 37                	je     8048ea8 <fun7+0x47> ;return -1
 8048e71:	8b 1a                	mov    (%edx),%ebx; ebx=tree->val
 8048e73:	39 cb                	cmp    %ecx,%ebx; if tree->val <= input
 8048e75:	7e 13                	jle    8048e8a <fun7+0x29>
 8048e77:	83 ec 08             	sub    $0x8,%esp
 8048e7a:	51                   	push   %ecx
 8048e7b:	ff 72 04             	pushl  0x4(%edx); tree=tree->left
 8048e7e:	e8 de ff ff ff       	call   8048e61 <fun7>; eax = fun7(tree, input)
 8048e83:	83 c4 10             	add    $0x10,%esp
 8048e86:	01 c0                	add    %eax,%eax; eax *=2;
 8048e88:	eb 23                	jmp    8048ead <fun7+0x4c>; return eax
 8048e8a:	b8 00 00 00 00       	mov    $0x0,%eax; eax = 0
 8048e8f:	39 cb                	cmp    %ecx,%ebx; if tree->val = input
 8048e91:	74 1a                	je     8048ead <fun7+0x4c>; return 0
 8048e93:	83 ec 08             	sub    $0x8,%esp
 8048e96:	51                   	push   %ecx
 8048e97:	ff 72 08             	pushl  0x8(%edx); tree=tree->right
 8048e9a:	e8 c2 ff ff ff       	call   8048e61 <fun7>; eax = fun7(tree, input)
 8048e9f:	83 c4 10             	add    $0x10,%esp
 8048ea2:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax; eax = 2*eax + 1
 8048ea6:	eb 05                	jmp    8048ead <fun7+0x4c>; return eax
 8048ea8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048ead:	83 c4 08             	add    $0x8,%esp
 8048eb0:	5b                   	pop    %ebx
 8048eb1:	c3                   	ret    

08048eb2 <secret_phase>:
 8048eb2:	53                   	push   %ebx
 8048eb3:	83 ec 08             	sub    $0x8,%esp
 8048eb6:	e8 42 02 00 00       	call   80490fd <read_line>
 8048ebb:	83 ec 04             	sub    $0x4,%esp
 8048ebe:	6a 0a                	push   $0xa
 8048ec0:	6a 00                	push   $0x0
 8048ec2:	50                   	push   %eax
 8048ec3:	e8 b8 f9 ff ff       	call   8048880 <strtol@plt>
 8048ec8:	89 c3                	mov    %eax,%ebx
 8048eca:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048ecd:	83 c4 10             	add    $0x10,%esp
 8048ed0:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048ed5:	76 05                	jbe    8048edc <secret_phase+0x2a>
 8048ed7:	e8 c1 01 00 00       	call   804909d <explode_bomb>
 8048edc:	83 ec 08             	sub    $0x8,%esp
 8048edf:	53                   	push   %ebx
 8048ee0:	68 88 c0 04 08       	push   $0x804c088
 8048ee5:	e8 77 ff ff ff       	call   8048e61 <fun7>
 8048eea:	83 c4 10             	add    $0x10,%esp
 8048eed:	83 f8 05             	cmp    $0x5,%eax
 8048ef0:	74 05                	je     8048ef7 <secret_phasWe+0x45>
 8048ef2:	e8 a6 01 00 00       	call   804909d <explode_bomb>
 8048ef7:	83 ec 0c             	sub    $0xc,%esp
 8048efa:	68 d4 9f 04 08       	push   $0x8049fd4
 8048eff:	e8 bc f8 ff ff       	call   80487c0 <puts@plt>
 8048f04:	e8 ed 02 00 00       	call   80491f6 <phase_defused>
 8048f09:	83 c4 18             	add    $0x18,%esp
 8048f0c:	5b                   	pop    %ebx
 8048f0d:	c3                   	ret    

08048f0e <sig_handler>:
 8048f0e:	83 ec 18             	sub    $0x18,%esp
 8048f11:	68 60 a0 04 08       	push   $0x804a060
 8048f16:	e8 a5 f8 ff ff       	call   80487c0 <puts@plt>
 8048f1b:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048f22:	e8 49 f8 ff ff       	call   8048770 <sleep@plt>
 8048f27:	83 c4 08             	add    $0x8,%esp
 8048f2a:	68 22 a1 04 08       	push   $0x804a122
 8048f2f:	6a 01                	push   $0x1
 8048f31:	e8 0a f9 ff ff       	call   8048840 <__printf_chk@plt>
 8048f36:	83 c4 04             	add    $0x4,%esp
 8048f39:	ff 35 c4 c3 04 08    	pushl  0x804c3c4
 8048f3f:	e8 fc f7 ff ff       	call   8048740 <fflush@plt>
 8048f44:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f4b:	e8 20 f8 ff ff       	call   8048770 <sleep@plt>
 8048f50:	c7 04 24 2a a1 04 08 	movl   $0x804a12a,(%esp)
 8048f57:	e8 64 f8 ff ff       	call   80487c0 <puts@plt>
 8048f5c:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048f63:	e8 78 f8 ff ff       	call   80487e0 <exit@plt>

08048f68 <invalid_phase>:
 8048f68:	83 ec 10             	sub    $0x10,%esp
 8048f6b:	ff 74 24 14          	pushl  0x14(%esp)
 8048f6f:	68 32 a1 04 08       	push   $0x804a132
 8048f74:	6a 01                	push   $0x1
 8048f76:	e8 c5 f8 ff ff       	call   8048840 <__printf_chk@plt>
 8048f7b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048f82:	e8 59 f8 ff ff       	call   80487e0 <exit@plt>

08048f87 <string_length>:
 8048f87:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048f8b:	80 3a 00             	cmpb   $0x0,(%edx)
 8048f8e:	74 10                	je     8048fa0 <string_length+0x19>
 8048f90:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f95:	83 c0 01             	add    $0x1,%eax
 8048f98:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048f9c:	75 f7                	jne    8048f95 <string_length+0xe>
 8048f9e:	f3 c3                	repz ret 
 8048fa0:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fa5:	c3                   	ret    

08048fa6 <strings_not_equal>:
 8048fa6:	57                   	push   %edi
 8048fa7:	56                   	push   %esi
 8048fa8:	53                   	push   %ebx
 8048fa9:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048fad:	8b 74 24 14          	mov    0x14(%esp),%esi
 8048fb1:	53                   	push   %ebx
 8048fb2:	e8 d0 ff ff ff       	call   8048f87 <string_length>
 8048fb7:	89 c7                	mov    %eax,%edi
 8048fb9:	89 34 24             	mov    %esi,(%esp)
 8048fbc:	e8 c6 ff ff ff       	call   8048f87 <string_length>
 8048fc1:	83 c4 04             	add    $0x4,%esp
 8048fc4:	ba 01 00 00 00       	mov    $0x1,%edx
 8048fc9:	39 c7                	cmp    %eax,%edi
 8048fcb:	75 38                	jne    8049005 <strings_not_equal+0x5f>
 8048fcd:	0f b6 03             	movzbl (%ebx),%eax
 8048fd0:	84 c0                	test   %al,%al
 8048fd2:	74 1e                	je     8048ff2 <strings_not_equal+0x4c>
 8048fd4:	3a 06                	cmp    (%esi),%al
 8048fd6:	74 06                	je     8048fde <strings_not_equal+0x38>
 8048fd8:	eb 1f                	jmp    8048ff9 <strings_not_equal+0x53>
 8048fda:	3a 06                	cmp    (%esi),%al
 8048fdc:	75 22                	jne    8049000 <strings_not_equal+0x5a>
 8048fde:	83 c3 01             	add    $0x1,%ebx
 8048fe1:	83 c6 01             	add    $0x1,%esi
 8048fe4:	0f b6 03             	movzbl (%ebx),%eax
 8048fe7:	84 c0                	test   %al,%al
 8048fe9:	75 ef                	jne    8048fda <strings_not_equal+0x34>
 8048feb:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ff0:	eb 13                	jmp    8049005 <strings_not_equal+0x5f>
 8048ff2:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ff7:	eb 0c                	jmp    8049005 <strings_not_equal+0x5f>
 8048ff9:	ba 01 00 00 00       	mov    $0x1,%edx
 8048ffe:	eb 05                	jmp    8049005 <strings_not_equal+0x5f>
 8049000:	ba 01 00 00 00       	mov    $0x1,%edx
 8049005:	89 d0                	mov    %edx,%eax
 8049007:	5b                   	pop    %ebx
 8049008:	5e                   	pop    %esi
 8049009:	5f                   	pop    %edi
 804900a:	c3                   	ret    

0804900b <initialize_bomb>:
 804900b:	83 ec 14             	sub    $0x14,%esp
 804900e:	68 0e 8f 04 08       	push   $0x8048f0e
 8049013:	6a 02                	push   $0x2
 8049015:	e8 46 f7 ff ff       	call   8048760 <signal@plt>
 804901a:	83 c4 1c             	add    $0x1c,%esp
 804901d:	c3                   	ret    

0804901e <initialize_bomb_solve>:
 804901e:	f3 c3                	repz ret 

08049020 <blank_line>:
 8049020:	56                   	push   %esi
 8049021:	53                   	push   %ebx
 8049022:	83 ec 04             	sub    $0x4,%esp
 8049025:	8b 74 24 10          	mov    0x10(%esp),%esi
 8049029:	eb 14                	jmp    804903f <blank_line+0x1f>
 804902b:	e8 80 f8 ff ff       	call   80488b0 <__ctype_b_loc@plt>
 8049030:	83 c6 01             	add    $0x1,%esi
 8049033:	0f be db             	movsbl %bl,%ebx
 8049036:	8b 00                	mov    (%eax),%eax
 8049038:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 804903d:	74 0e                	je     804904d <blank_line+0x2d>
 804903f:	0f b6 1e             	movzbl (%esi),%ebx
 8049042:	84 db                	test   %bl,%bl
 8049044:	75 e5                	jne    804902b <blank_line+0xb>
 8049046:	b8 01 00 00 00       	mov    $0x1,%eax
 804904b:	eb 05                	jmp    8049052 <blank_line+0x32>
 804904d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049052:	83 c4 04             	add    $0x4,%esp
 8049055:	5b                   	pop    %ebx
 8049056:	5e                   	pop    %esi
 8049057:	c3                   	ret    

08049058 <skip>:
 8049058:	53                   	push   %ebx
 8049059:	83 ec 08             	sub    $0x8,%esp
 804905c:	83 ec 04             	sub    $0x4,%esp
 804905f:	ff 35 d0 c3 04 08    	pushl  0x804c3d0
 8049065:	6a 50                	push   $0x50
 8049067:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 804906c:	8d 04 80             	lea    (%eax,%eax,4),%eax
 804906f:	c1 e0 04             	shl    $0x4,%eax
 8049072:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 8049077:	50                   	push   %eax
 8049078:	e8 d3 f6 ff ff       	call   8048750 <fgets@plt>
 804907d:	89 c3                	mov    %eax,%ebx
 804907f:	83 c4 10             	add    $0x10,%esp
 8049082:	85 c0                	test   %eax,%eax
 8049084:	74 10                	je     8049096 <skip+0x3e>
 8049086:	83 ec 0c             	sub    $0xc,%esp
 8049089:	50                   	push   %eax
 804908a:	e8 91 ff ff ff       	call   8049020 <blank_line>
 804908f:	83 c4 10             	add    $0x10,%esp
 8049092:	85 c0                	test   %eax,%eax
 8049094:	75 c6                	jne    804905c <skip+0x4>
 8049096:	89 d8                	mov    %ebx,%eax
 8049098:	83 c4 08             	add    $0x8,%esp
 804909b:	5b                   	pop    %ebx
 804909c:	c3                   	ret    

0804909d <explode_bomb>:
 804909d:	83 ec 18             	sub    $0x18,%esp
 80490a0:	68 43 a1 04 08       	push   $0x804a143
 80490a5:	e8 16 f7 ff ff       	call   80487c0 <puts@plt>
 80490aa:	c7 04 24 4c a1 04 08 	movl   $0x804a14c,(%esp)
 80490b1:	e8 0a f7 ff ff       	call   80487c0 <puts@plt>
 80490b6:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80490bd:	e8 1e f7 ff ff       	call   80487e0 <exit@plt>

080490c2 <read_six_numbers>:
 80490c2:	83 ec 0c             	sub    $0xc,%esp
 80490c5:	8b 44 24 14          	mov    0x14(%esp),%eax
 80490c9:	8d 50 14             	lea    0x14(%eax),%edx
 80490cc:	52                   	push   %edx
 80490cd:	8d 50 10             	lea    0x10(%eax),%edx
 80490d0:	52                   	push   %edx
 80490d1:	8d 50 0c             	lea    0xc(%eax),%edx
 80490d4:	52                   	push   %edx
 80490d5:	8d 50 08             	lea    0x8(%eax),%edx
 80490d8:	52                   	push   %edx
 80490d9:	8d 50 04             	lea    0x4(%eax),%edx
 80490dc:	52                   	push   %edx
 80490dd:	50                   	push   %eax
 80490de:	68 63 a1 04 08       	push   $0x804a163
 80490e3:	ff 74 24 2c          	pushl  0x2c(%esp)
 80490e7:	e8 24 f7 ff ff       	call   8048810 <__isoc99_sscanf@plt>
 80490ec:	83 c4 20             	add    $0x20,%esp
 80490ef:	83 f8 05             	cmp    $0x5,%eax ; if num > 5, boom
 80490f2:	7f 05                	jg     80490f9 <read_six_numbers+0x37>
 80490f4:	e8 a4 ff ff ff       	call   804909d <explode_bomb>
 80490f9:	83 c4 0c             	add    $0xc,%esp
 80490fc:	c3                   	ret    

	 <read_line>:
 80490fd:	57                   	push   %edi
 80490fe:	56                   	push   %esi
 80490ff:	53                   	push   %ebx
 8049100:	e8 53 ff ff ff       	call   8049058 <skip>
 8049105:	85 c0                	test   %eax,%eax
 8049107:	75 70                	jne    8049179 <read_line+0x7c>
 8049109:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 804910e:	39 05 d0 c3 04 08    	cmp    %eax,0x804c3d0
 8049114:	75 19                	jne    804912f <read_line+0x32>
 8049116:	83 ec 0c             	sub    $0xc,%esp
 8049119:	68 75 a1 04 08       	push   $0x804a175
 804911e:	e8 9d f6 ff ff       	call   80487c0 <puts@plt>
 8049123:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804912a:	e8 b1 f6 ff ff       	call   80487e0 <exit@plt>
 804912f:	83 ec 0c             	sub    $0xc,%esp
 8049132:	68 93 a1 04 08       	push   $0x804a193
 8049137:	e8 74 f6 ff ff       	call   80487b0 <getenv@plt>
 804913c:	83 c4 10             	add    $0x10,%esp
 804913f:	85 c0                	test   %eax,%eax
 8049141:	74 0a                	je     804914d <read_line+0x50>
 8049143:	83 ec 0c             	sub    $0xc,%esp
 8049146:	6a 00                	push   $0x0
 8049148:	e8 93 f6 ff ff       	call   80487e0 <exit@plt>
 804914d:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 8049152:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8049157:	e8 fc fe ff ff       	call   8049058 <skip>
 804915c:	85 c0                	test   %eax,%eax
 804915e:	75 19                	jne    8049179 <read_line+0x7c>
 8049160:	83 ec 0c             	sub    $0xc,%esp
 8049163:	68 75 a1 04 08       	push   $0x804a175
 8049168:	e8 53 f6 ff ff       	call   80487c0 <puts@plt>
 804916d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049174:	e8 67 f6 ff ff       	call   80487e0 <exit@plt>
 8049179:	8b 15 cc c3 04 08    	mov    0x804c3cc,%edx
 804917f:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 8049182:	c1 e3 04             	shl    $0x4,%ebx
 8049185:	81 c3 e0 c3 04 08    	add    $0x804c3e0,%ebx
 804918b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049190:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049195:	89 df                	mov    %ebx,%edi
 8049197:	f2 ae                	repnz scas %es:(%edi),%al
 8049199:	f7 d1                	not    %ecx
 804919b:	83 e9 01             	sub    $0x1,%ecx
 804919e:	83 f9 4e             	cmp    $0x4e,%ecx
 80491a1:	7e 36                	jle    80491d9 <read_line+0xdc>
 80491a3:	83 ec 0c             	sub    $0xc,%esp
 80491a6:	68 9e a1 04 08       	push   $0x804a19e
 80491ab:	e8 10 f6 ff ff       	call   80487c0 <puts@plt>
 80491b0:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 80491b5:	8d 50 01             	lea    0x1(%eax),%edx
 80491b8:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 80491be:	6b c0 50             	imul   $0x50,%eax,%eax
 80491c1:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 80491c6:	be b9 a1 04 08       	mov    $0x804a1b9,%esi
 80491cb:	b9 04 00 00 00       	mov    $0x4,%ecx
 80491d0:	89 c7                	mov    %eax,%edi
 80491d2:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80491d4:	e8 c4 fe ff ff       	call   804909d <explode_bomb>
 80491d9:	8d 04 92             	lea    (%edx,%edx,4),%eax
 80491dc:	c1 e0 04             	shl    $0x4,%eax
 80491df:	c6 84 01 df c3 04 08 	movb   $0x0,0x804c3df(%ecx,%eax,1)
 80491e6:	00 
 80491e7:	83 c2 01             	add    $0x1,%edx
 80491ea:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 80491f0:	89 d8                	mov    %ebx,%eax
 80491f2:	5b                   	pop    %ebx
 80491f3:	5e                   	pop    %esi
 80491f4:	5f                   	pop    %edi
 80491f5:	c3                   	ret    

080491f6 <phase_defused>:
 80491f6:	83 ec 6c             	sub    $0x6c,%esp
 80491f9:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80491ff:	89 44 24 5c          	mov    %eax,0x5c(%esp)
 8049203:	31 c0                	xor    %eax,%eax
 8049205:	83 3d cc c3 04 08 06 	cmpl   $0x6,0x804c3cc ; <num_input_strings> when finsh all 6 phases
 804920c:	75 73                	jne    8049281 <phase_defused+0x8b>
 804920e:	83 ec 0c             	sub    $0xc,%esp
 8049211:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049215:	50                   	push   %eax
 8049216:	8d 44 24 18          	lea    0x18(%esp),%eax
 804921a:	50                   	push   %eax
 804921b:	8d 44 24 18          	lea    0x18(%esp),%eax
 804921f:	50                   	push   %eax
 8049220:	68 c9 a1 04 08       	push   $0x804a1c9; "%d %d %s"
 8049225:	68 d0 c4 04 08       	push   $0x804c4d0
 804922a:	e8 e1 f5 ff ff       	call   8048810 <__isoc99_sscanf@plt>
 804922f:	83 c4 20             	add    $0x20,%esp
 8049232:	83 f8 03             	cmp    $0x3,%eax
 8049235:	75 3a                	jne    8049271 <phase_defused+0x7b>
 8049237:	83 ec 08             	sub    $0x8,%esp
 804923a:	68 d2 a1 04 08       	push   $0x804a1d2 ; "DrEvil"
 804923f:	8d 44 24 18          	lea    0x18(%esp),%eax
 8049243:	50                   	push   %eax
 8049244:	e8 5d fd ff ff       	call   8048fa6 <strings_not_equal>
 8049249:	83 c4 10             	add    $0x10,%esp
 804924c:	85 c0                	test   %eax,%eax
 804924e:	75 21                	jne    8049271 <phase_defused+0x7b>
 8049250:	83 ec 0c             	sub    $0xc,%esp
 8049253:	68 98 a0 04 08       	push   $0x804a098
 8049258:	e8 63 f5 ff ff       	call   80487c0 <puts@plt>
 804925d:	c7 04 24 c0 a0 04 08 	movl   $0x804a0c0,(%esp)
 8049264:	e8 57 f5 ff ff       	call   80487c0 <puts@plt>
 8049269:	e8 44 fc ff ff       	call   8048eb2 <secret_phase>
 804926e:	83 c4 10             	add    $0x10,%esp
 8049271:	83 ec 0c             	sub    $0xc,%esp
 8049274:	68 f8 a0 04 08       	push   $0x804a0f8
 8049279:	e8 42 f5 ff ff       	call   80487c0 <puts@plt>
 804927e:	83 c4 10             	add    $0x10,%esp
 8049281:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 8049285:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 804928c:	74 05                	je     8049293 <phase_defused+0x9d>
 804928e:	e8 fd f4 ff ff       	call   8048790 <__stack_chk_fail@plt>
 8049293:	83 c4 6c             	add    $0x6c,%esp
 8049296:	c3                   	ret    

08049297 <sigalrm_handler>:
 8049297:	83 ec 0c             	sub    $0xc,%esp
 804929a:	6a 00                	push   $0x0
 804929c:	68 28 a2 04 08       	push   $0x804a228
 80492a1:	6a 01                	push   $0x1
 80492a3:	ff 35 a0 c3 04 08    	pushl  0x804c3a0
 80492a9:	e8 b2 f5 ff ff       	call   8048860 <__fprintf_chk@plt>
 80492ae:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492b5:	e8 26 f5 ff ff       	call   80487e0 <exit@plt>

080492ba <rio_readlineb>:
 80492ba:	55                   	push   %ebp
 80492bb:	57                   	push   %edi
 80492bc:	56                   	push   %esi
 80492bd:	53                   	push   %ebx
 80492be:	83 ec 2c             	sub    $0x2c,%esp
 80492c1:	89 d7                	mov    %edx,%edi
 80492c3:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 80492c7:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 80492ce:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 80492d2:	31 d2                	xor    %edx,%edx
 80492d4:	83 f9 01             	cmp    $0x1,%ecx
 80492d7:	76 79                	jbe    8049352 <rio_readlineb+0x98>
 80492d9:	89 c3                	mov    %eax,%ebx
 80492db:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80492df:	bd 01 00 00 00       	mov    $0x1,%ebp
 80492e4:	8d 73 0c             	lea    0xc(%ebx),%esi
 80492e7:	eb 2d                	jmp    8049316 <rio_readlineb+0x5c>
 80492e9:	83 ec 04             	sub    $0x4,%esp
 80492ec:	68 00 20 00 00       	push   $0x2000
 80492f1:	56                   	push   %esi
 80492f2:	ff 33                	pushl  (%ebx)
 80492f4:	e8 37 f4 ff ff       	call   8048730 <read@plt>
 80492f9:	89 43 04             	mov    %eax,0x4(%ebx)
 80492fc:	83 c4 10             	add    $0x10,%esp
 80492ff:	85 c0                	test   %eax,%eax
 8049301:	79 0c                	jns    804930f <rio_readlineb+0x55>
 8049303:	e8 28 f5 ff ff       	call   8048830 <__errno_location@plt>
 8049308:	83 38 04             	cmpl   $0x4,(%eax)
 804930b:	74 09                	je     8049316 <rio_readlineb+0x5c>
 804930d:	eb 62                	jmp    8049371 <rio_readlineb+0xb7>
 804930f:	85 c0                	test   %eax,%eax
 8049311:	74 63                	je     8049376 <rio_readlineb+0xbc>
 8049313:	89 73 08             	mov    %esi,0x8(%ebx)
 8049316:	8b 43 04             	mov    0x4(%ebx),%eax
 8049319:	85 c0                	test   %eax,%eax
 804931b:	7e cc                	jle    80492e9 <rio_readlineb+0x2f>
 804931d:	8b 4b 08             	mov    0x8(%ebx),%ecx
 8049320:	0f b6 11             	movzbl (%ecx),%edx
 8049323:	88 54 24 1b          	mov    %dl,0x1b(%esp)
 8049327:	83 c1 01             	add    $0x1,%ecx
 804932a:	89 4b 08             	mov    %ecx,0x8(%ebx)
 804932d:	83 e8 01             	sub    $0x1,%eax
 8049330:	89 43 04             	mov    %eax,0x4(%ebx)
 8049333:	83 c7 01             	add    $0x1,%edi
 8049336:	88 57 ff             	mov    %dl,-0x1(%edi)
 8049339:	80 fa 0a             	cmp    $0xa,%dl
 804933c:	75 09                	jne    8049347 <rio_readlineb+0x8d>
 804933e:	eb 1d                	jmp    804935d <rio_readlineb+0xa3>
 8049340:	83 fd 01             	cmp    $0x1,%ebp
 8049343:	75 18                	jne    804935d <rio_readlineb+0xa3>
 8049345:	eb 1b                	jmp    8049362 <rio_readlineb+0xa8>
 8049347:	83 c5 01             	add    $0x1,%ebp
 804934a:	3b 6c 24 08          	cmp    0x8(%esp),%ebp
 804934e:	74 09                	je     8049359 <rio_readlineb+0x9f>
 8049350:	eb c4                	jmp    8049316 <rio_readlineb+0x5c>
 8049352:	bd 01 00 00 00       	mov    $0x1,%ebp
 8049357:	eb 04                	jmp    804935d <rio_readlineb+0xa3>
 8049359:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
 804935d:	c6 07 00             	movb   $0x0,(%edi)
 8049360:	89 e8                	mov    %ebp,%eax
 8049362:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049366:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 804936d:	74 17                	je     8049386 <rio_readlineb+0xcc>
 804936f:	eb 10                	jmp    8049381 <rio_readlineb+0xc7>
 8049371:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049376:	85 c0                	test   %eax,%eax
 8049378:	74 c6                	je     8049340 <rio_readlineb+0x86>
 804937a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804937f:	eb e1                	jmp    8049362 <rio_readlineb+0xa8>
 8049381:	e8 0a f4 ff ff       	call   8048790 <__stack_chk_fail@plt>
 8049386:	83 c4 2c             	add    $0x2c,%esp
 8049389:	5b                   	pop    %ebx
 804938a:	5e                   	pop    %esi
 804938b:	5f                   	pop    %edi
 804938c:	5d                   	pop    %ebp
 804938d:	c3                   	ret    

0804938e <submitr>:
 804938e:	55                   	push   %ebp
 804938f:	57                   	push   %edi
 8049390:	56                   	push   %esi
 8049391:	53                   	push   %ebx
 8049392:	81 ec 60 a0 00 00    	sub    $0xa060,%esp
 8049398:	8b b4 24 74 a0 00 00 	mov    0xa074(%esp),%esi
 804939f:	8b 84 24 7c a0 00 00 	mov    0xa07c(%esp),%eax
 80493a6:	89 44 24 10          	mov    %eax,0x10(%esp)
 80493aa:	8b 84 24 80 a0 00 00 	mov    0xa080(%esp),%eax
 80493b1:	89 44 24 14          	mov    %eax,0x14(%esp)
 80493b5:	8b 84 24 84 a0 00 00 	mov    0xa084(%esp),%eax
 80493bc:	89 44 24 18          	mov    %eax,0x18(%esp)
 80493c0:	8b 9c 24 88 a0 00 00 	mov    0xa088(%esp),%ebx
 80493c7:	8b 84 24 8c a0 00 00 	mov    0xa08c(%esp),%eax
 80493ce:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80493d2:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80493d8:	89 84 24 50 a0 00 00 	mov    %eax,0xa050(%esp)
 80493df:	31 c0                	xor    %eax,%eax
 80493e1:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 80493e8:	00 
 80493e9:	6a 00                	push   $0x0
 80493eb:	6a 01                	push   $0x1
 80493ed:	6a 02                	push   $0x2
 80493ef:	e8 5c f4 ff ff       	call   8048850 <socket@plt>
 80493f4:	89 44 24 18          	mov    %eax,0x18(%esp)
 80493f8:	83 c4 10             	add    $0x10,%esp
 80493fb:	85 c0                	test   %eax,%eax
 80493fd:	79 52                	jns    8049451 <submitr+0xc3>
 80493ff:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049403:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049409:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049410:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049417:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804941e:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049425:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804942c:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049433:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804943a:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049441:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049447:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804944c:	e9 3f 06 00 00       	jmp    8049a90 <submitr+0x702>
 8049451:	83 ec 0c             	sub    $0xc,%esp
 8049454:	56                   	push   %esi
 8049455:	e8 16 f4 ff ff       	call   8048870 <gethostbyname@plt>
 804945a:	83 c4 10             	add    $0x10,%esp
 804945d:	85 c0                	test   %eax,%eax
 804945f:	75 73                	jne    80494d4 <submitr+0x146>
 8049461:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049465:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804946b:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 8049472:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 8049479:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 8049480:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049487:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804948e:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 8049495:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 804949c:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80494a3:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 80494aa:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 80494b1:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 80494b7:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 80494bb:	83 ec 0c             	sub    $0xc,%esp
 80494be:	ff 74 24 14          	pushl  0x14(%esp)
 80494c2:	e8 d9 f3 ff ff       	call   80488a0 <close@plt>
 80494c7:	83 c4 10             	add    $0x10,%esp
 80494ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80494cf:	e9 bc 05 00 00       	jmp    8049a90 <submitr+0x702>
 80494d4:	8d 74 24 30          	lea    0x30(%esp),%esi
 80494d8:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 80494df:	00 
 80494e0:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 80494e7:	00 
 80494e8:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 80494ef:	00 
 80494f0:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%esp)
 80494f7:	00 
 80494f8:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%esp)
 80494ff:	6a 0c                	push   $0xc
 8049501:	ff 70 0c             	pushl  0xc(%eax)
 8049504:	8b 40 10             	mov    0x10(%eax),%eax
 8049507:	ff 30                	pushl  (%eax)
 8049509:	8d 44 24 40          	lea    0x40(%esp),%eax
 804950d:	50                   	push   %eax
 804950e:	e8 bd f2 ff ff       	call   80487d0 <__memmove_chk@plt>
 8049513:	0f b7 84 24 84 a0 00 	movzwl 0xa084(%esp),%eax
 804951a:	00 
 804951b:	66 c1 c8 08          	ror    $0x8,%ax
 804951f:	66 89 44 24 42       	mov    %ax,0x42(%esp)
 8049524:	83 c4 0c             	add    $0xc,%esp
 8049527:	6a 10                	push   $0x10
 8049529:	56                   	push   %esi
 804952a:	ff 74 24 14          	pushl  0x14(%esp)
 804952e:	e8 5d f3 ff ff       	call   8048890 <connect@plt>
 8049533:	83 c4 10             	add    $0x10,%esp
 8049536:	85 c0                	test   %eax,%eax
 8049538:	79 65                	jns    804959f <submitr+0x211>
 804953a:	8b 44 24 18          	mov    0x18(%esp),%eax
 804953e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049544:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
 804954b:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
 8049552:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
 8049559:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
 8049560:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
 8049567:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
 804956e:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
 8049575:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 804957c:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
 8049582:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 8049586:	83 ec 0c             	sub    $0xc,%esp
 8049589:	ff 74 24 14          	pushl  0x14(%esp)
 804958d:	e8 0e f3 ff ff       	call   80488a0 <close@plt>
 8049592:	83 c4 10             	add    $0x10,%esp
 8049595:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804959a:	e9 f1 04 00 00       	jmp    8049a90 <submitr+0x702>
 804959f:	be ff ff ff ff       	mov    $0xffffffff,%esi
 80495a4:	b8 00 00 00 00       	mov    $0x0,%eax
 80495a9:	89 f1                	mov    %esi,%ecx
 80495ab:	89 df                	mov    %ebx,%edi
 80495ad:	f2 ae                	repnz scas %es:(%edi),%al
 80495af:	f7 d1                	not    %ecx
 80495b1:	89 cd                	mov    %ecx,%ebp
 80495b3:	89 f1                	mov    %esi,%ecx
 80495b5:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 80495b9:	f2 ae                	repnz scas %es:(%edi),%al
 80495bb:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 80495bf:	89 f1                	mov    %esi,%ecx
 80495c1:	8b 7c 24 10          	mov    0x10(%esp),%edi
 80495c5:	f2 ae                	repnz scas %es:(%edi),%al
 80495c7:	89 ca                	mov    %ecx,%edx
 80495c9:	f7 d2                	not    %edx
 80495cb:	89 f1                	mov    %esi,%ecx
 80495cd:	8b 7c 24 14          	mov    0x14(%esp),%edi
 80495d1:	f2 ae                	repnz scas %es:(%edi),%al
 80495d3:	2b 54 24 1c          	sub    0x1c(%esp),%edx
 80495d7:	29 ca                	sub    %ecx,%edx
 80495d9:	8d 44 6d fd          	lea    -0x3(%ebp,%ebp,2),%eax
 80495dd:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 80495e1:	3d 00 20 00 00       	cmp    $0x2000,%eax
 80495e6:	76 7e                	jbe    8049666 <submitr+0x2d8>
 80495e8:	8b 44 24 18          	mov    0x18(%esp),%eax
 80495ec:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80495f2:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 80495f9:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049600:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049607:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804960e:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049615:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804961c:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049623:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804962a:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049631:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 8049638:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804963f:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049646:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804964d:	83 ec 0c             	sub    $0xc,%esp
 8049650:	ff 74 24 14          	pushl  0x14(%esp)
 8049654:	e8 47 f2 ff ff       	call   80488a0 <close@plt>
 8049659:	83 c4 10             	add    $0x10,%esp
 804965c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049661:	e9 2a 04 00 00       	jmp    8049a90 <submitr+0x702>
 8049666:	8d 94 24 4c 40 00 00 	lea    0x404c(%esp),%edx
 804966d:	b9 00 08 00 00       	mov    $0x800,%ecx
 8049672:	b8 00 00 00 00       	mov    $0x0,%eax
 8049677:	89 d7                	mov    %edx,%edi
 8049679:	f3 ab                	rep stos %eax,%es:(%edi)
 804967b:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049680:	89 df                	mov    %ebx,%edi
 8049682:	f2 ae                	repnz scas %es:(%edi),%al
 8049684:	f7 d1                	not    %ecx
 8049686:	89 ce                	mov    %ecx,%esi
 8049688:	83 ee 01             	sub    $0x1,%esi
 804968b:	0f 84 5c 04 00 00    	je     8049aed <submitr+0x75f>
 8049691:	89 d5                	mov    %edx,%ebp
 8049693:	bf d9 ff 00 00       	mov    $0xffd9,%edi
 8049698:	0f b6 13             	movzbl (%ebx),%edx
 804969b:	8d 4a d6             	lea    -0x2a(%edx),%ecx
 804969e:	b8 01 00 00 00       	mov    $0x1,%eax
 80496a3:	80 f9 0f             	cmp    $0xf,%cl
 80496a6:	77 0a                	ja     80496b2 <submitr+0x324>
 80496a8:	89 f8                	mov    %edi,%eax
 80496aa:	d3 e8                	shr    %cl,%eax
 80496ac:	83 f0 01             	xor    $0x1,%eax
 80496af:	83 e0 01             	and    $0x1,%eax
 80496b2:	80 fa 5f             	cmp    $0x5f,%dl
 80496b5:	0f 94 c1             	sete   %cl
 80496b8:	38 c1                	cmp    %al,%cl
 80496ba:	73 0c                	jae    80496c8 <submitr+0x33a>
 80496bc:	89 d0                	mov    %edx,%eax
 80496be:	83 e0 df             	and    $0xffffffdf,%eax
 80496c1:	83 e8 41             	sub    $0x41,%eax
 80496c4:	3c 19                	cmp    $0x19,%al
 80496c6:	77 08                	ja     80496d0 <submitr+0x342>
 80496c8:	88 55 00             	mov    %dl,0x0(%ebp)
 80496cb:	8d 6d 01             	lea    0x1(%ebp),%ebp
 80496ce:	eb 62                	jmp    8049732 <submitr+0x3a4>
 80496d0:	80 fa 20             	cmp    $0x20,%dl
 80496d3:	75 09                	jne    80496de <submitr+0x350>
 80496d5:	c6 45 00 2b          	movb   $0x2b,0x0(%ebp)
 80496d9:	8d 6d 01             	lea    0x1(%ebp),%ebp
 80496dc:	eb 54                	jmp    8049732 <submitr+0x3a4>
 80496de:	8d 42 e0             	lea    -0x20(%edx),%eax
 80496e1:	3c 5f                	cmp    $0x5f,%al
 80496e3:	76 09                	jbe    80496ee <submitr+0x360>
 80496e5:	80 fa 09             	cmp    $0x9,%dl
 80496e8:	0f 85 bb 03 00 00    	jne    8049aa9 <submitr+0x71b>
 80496ee:	83 ec 0c             	sub    $0xc,%esp
 80496f1:	0f b6 d2             	movzbl %dl,%edx
 80496f4:	52                   	push   %edx
 80496f5:	68 34 a3 04 08       	push   $0x804a334
 80496fa:	6a 08                	push   $0x8
 80496fc:	6a 01                	push   $0x1
 80496fe:	8d 84 24 68 80 00 00 	lea    0x8068(%esp),%eax
 8049705:	50                   	push   %eax
 8049706:	e8 b5 f1 ff ff       	call   80488c0 <__sprintf_chk@plt>
 804970b:	0f b6 84 24 6c 80 00 	movzbl 0x806c(%esp),%eax
 8049712:	00 
 8049713:	88 45 00             	mov    %al,0x0(%ebp)
 8049716:	0f b6 84 24 6d 80 00 	movzbl 0x806d(%esp),%eax
 804971d:	00 
 804971e:	88 45 01             	mov    %al,0x1(%ebp)
 8049721:	0f b6 84 24 6e 80 00 	movzbl 0x806e(%esp),%eax
 8049728:	00 
 8049729:	88 45 02             	mov    %al,0x2(%ebp)
 804972c:	83 c4 20             	add    $0x20,%esp
 804972f:	8d 6d 03             	lea    0x3(%ebp),%ebp
 8049732:	83 c3 01             	add    $0x1,%ebx
 8049735:	83 ee 01             	sub    $0x1,%esi
 8049738:	0f 85 5a ff ff ff    	jne    8049698 <submitr+0x30a>
 804973e:	e9 aa 03 00 00       	jmp    8049aed <submitr+0x75f>
 8049743:	83 ec 04             	sub    $0x4,%esp
 8049746:	53                   	push   %ebx
 8049747:	56                   	push   %esi
 8049748:	55                   	push   %ebp
 8049749:	e8 b2 f0 ff ff       	call   8048800 <write@plt>
 804974e:	83 c4 10             	add    $0x10,%esp
 8049751:	85 c0                	test   %eax,%eax
 8049753:	7f 0f                	jg     8049764 <submitr+0x3d6>
 8049755:	e8 d6 f0 ff ff       	call   8048830 <__errno_location@plt>
 804975a:	83 38 04             	cmpl   $0x4,(%eax)
 804975d:	75 0f                	jne    804976e <submitr+0x3e0>
 804975f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049764:	01 c6                	add    %eax,%esi
 8049766:	29 c3                	sub    %eax,%ebx
 8049768:	75 d9                	jne    8049743 <submitr+0x3b5>
 804976a:	85 ff                	test   %edi,%edi
 804976c:	79 69                	jns    80497d7 <submitr+0x449>
 804976e:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049772:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049778:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804977f:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049786:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804978d:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049794:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804979b:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 80497a2:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 80497a9:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 80497b0:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 80497b7:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 80497be:	83 ec 0c             	sub    $0xc,%esp
 80497c1:	ff 74 24 14          	pushl  0x14(%esp)
 80497c5:	e8 d6 f0 ff ff       	call   80488a0 <close@plt>
 80497ca:	83 c4 10             	add    $0x10,%esp
 80497cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497d2:	e9 b9 02 00 00       	jmp    8049a90 <submitr+0x702>
 80497d7:	8b 44 24 08          	mov    0x8(%esp),%eax
 80497db:	89 44 24 40          	mov    %eax,0x40(%esp)
 80497df:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 80497e6:	00 
 80497e7:	8d 44 24 4c          	lea    0x4c(%esp),%eax
 80497eb:	89 44 24 48          	mov    %eax,0x48(%esp)
 80497ef:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80497f4:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 80497fb:	8d 44 24 40          	lea    0x40(%esp),%eax
 80497ff:	e8 b6 fa ff ff       	call   80492ba <rio_readlineb>
 8049804:	85 c0                	test   %eax,%eax
 8049806:	7f 7d                	jg     8049885 <submitr+0x4f7>
 8049808:	8b 44 24 18          	mov    0x18(%esp),%eax
 804980c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049812:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049819:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049820:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049827:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804982e:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049835:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804983c:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049843:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 804984a:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 8049851:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049858:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 804985f:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 8049866:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 804986c:	83 ec 0c             	sub    $0xc,%esp
 804986f:	ff 74 24 14          	pushl  0x14(%esp)
 8049873:	e8 28 f0 ff ff       	call   80488a0 <close@plt>
 8049878:	83 c4 10             	add    $0x10,%esp
 804987b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049880:	e9 0b 02 00 00       	jmp    8049a90 <submitr+0x702>
 8049885:	83 ec 0c             	sub    $0xc,%esp
 8049888:	8d 84 24 58 80 00 00 	lea    0x8058(%esp),%eax
 804988f:	50                   	push   %eax
 8049890:	8d 44 24 3c          	lea    0x3c(%esp),%eax
 8049894:	50                   	push   %eax
 8049895:	8d 84 24 60 60 00 00 	lea    0x6060(%esp),%eax
 804989c:	50                   	push   %eax
 804989d:	68 3b a3 04 08       	push   $0x804a33b
 80498a2:	8d 84 24 68 20 00 00 	lea    0x2068(%esp),%eax
 80498a9:	50                   	push   %eax
 80498aa:	e8 61 ef ff ff       	call   8048810 <__isoc99_sscanf@plt>
 80498af:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 80498b3:	83 c4 20             	add    $0x20,%esp
 80498b6:	3d c8 00 00 00       	cmp    $0xc8,%eax
 80498bb:	0f 84 c4 00 00 00    	je     8049985 <submitr+0x5f7>
 80498c1:	83 ec 08             	sub    $0x8,%esp
 80498c4:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
 80498cb:	52                   	push   %edx
 80498cc:	50                   	push   %eax
 80498cd:	68 4c a2 04 08       	push   $0x804a24c
 80498d2:	6a ff                	push   $0xffffffff
 80498d4:	6a 01                	push   $0x1
 80498d6:	ff 74 24 34          	pushl  0x34(%esp)
 80498da:	e8 e1 ef ff ff       	call   80488c0 <__sprintf_chk@plt>
 80498df:	83 c4 14             	add    $0x14,%esp
 80498e2:	ff 74 24 14          	pushl  0x14(%esp)
 80498e6:	e8 b5 ef ff ff       	call   80488a0 <close@plt>
 80498eb:	83 c4 10             	add    $0x10,%esp
 80498ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498f3:	e9 98 01 00 00       	jmp    8049a90 <submitr+0x702>
 80498f8:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80498fd:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 8049904:	8d 44 24 40          	lea    0x40(%esp),%eax
 8049908:	e8 ad f9 ff ff       	call   80492ba <rio_readlineb>
 804990d:	85 c0                	test   %eax,%eax
 804990f:	7f 74                	jg     8049985 <submitr+0x5f7>
 8049911:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049915:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804991b:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049922:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049929:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049930:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049937:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804993e:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049945:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 804994c:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049953:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 804995a:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049961:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 8049968:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 804996c:	83 ec 0c             	sub    $0xc,%esp
 804996f:	ff 74 24 14          	pushl  0x14(%esp)
 8049973:	e8 28 ef ff ff       	call   80488a0 <close@plt>
 8049978:	83 c4 10             	add    $0x10,%esp
 804997b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049980:	e9 0b 01 00 00       	jmp    8049a90 <submitr+0x702>
 8049985:	80 bc 24 4c 20 00 00 	cmpb   $0xd,0x204c(%esp)
 804998c:	0d 
 804998d:	0f 85 65 ff ff ff    	jne    80498f8 <submitr+0x56a>
 8049993:	80 bc 24 4d 20 00 00 	cmpb   $0xa,0x204d(%esp)
 804999a:	0a 
 804999b:	0f 85 57 ff ff ff    	jne    80498f8 <submitr+0x56a>
 80499a1:	80 bc 24 4e 20 00 00 	cmpb   $0x0,0x204e(%esp)
 80499a8:	00 
 80499a9:	0f 85 49 ff ff ff    	jne    80498f8 <submitr+0x56a>
 80499af:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80499b4:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
 80499bb:	8d 44 24 40          	lea    0x40(%esp),%eax
 80499bf:	e8 f6 f8 ff ff       	call   80492ba <rio_readlineb>
 80499c4:	85 c0                	test   %eax,%eax
 80499c6:	7f 7b                	jg     8049a43 <submitr+0x6b5>
 80499c8:	8b 44 24 18          	mov    0x18(%esp),%eax
 80499cc:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80499d2:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80499d9:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80499e0:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80499e7:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80499ee:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80499f5:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 80499fc:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049a03:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049a0a:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049a11:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049a18:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049a1f:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049a26:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049a2d:	83 ec 0c             	sub    $0xc,%esp
 8049a30:	ff 74 24 14          	pushl  0x14(%esp)
 8049a34:	e8 67 ee ff ff       	call   80488a0 <close@plt>
 8049a39:	83 c4 10             	add    $0x10,%esp
 8049a3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a41:	eb 4d                	jmp    8049a90 <submitr+0x702>
 8049a43:	83 ec 08             	sub    $0x8,%esp
 8049a46:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049a4d:	50                   	push   %eax
 8049a4e:	8b 7c 24 24          	mov    0x24(%esp),%edi
 8049a52:	57                   	push   %edi
 8049a53:	e8 48 ed ff ff       	call   80487a0 <strcpy@plt>
 8049a58:	83 c4 04             	add    $0x4,%esp
 8049a5b:	ff 74 24 14          	pushl  0x14(%esp)
 8049a5f:	e8 3c ee ff ff       	call   80488a0 <close@plt>
 8049a64:	0f b6 17             	movzbl (%edi),%edx
 8049a67:	b8 4f 00 00 00       	mov    $0x4f,%eax
 8049a6c:	83 c4 10             	add    $0x10,%esp
 8049a6f:	29 d0                	sub    %edx,%eax
 8049a71:	75 13                	jne    8049a86 <submitr+0x6f8>
 8049a73:	0f b6 57 01          	movzbl 0x1(%edi),%edx
 8049a77:	b8 4b 00 00 00       	mov    $0x4b,%eax
 8049a7c:	29 d0                	sub    %edx,%eax
 8049a7e:	75 06                	jne    8049a86 <submitr+0x6f8>
 8049a80:	0f b6 47 02          	movzbl 0x2(%edi),%eax
 8049a84:	f7 d8                	neg    %eax
 8049a86:	85 c0                	test   %eax,%eax
 8049a88:	0f 95 c0             	setne  %al
 8049a8b:	0f b6 c0             	movzbl %al,%eax
 8049a8e:	f7 d8                	neg    %eax
 8049a90:	8b bc 24 4c a0 00 00 	mov    0xa04c(%esp),%edi
 8049a97:	65 33 3d 14 00 00 00 	xor    %gs:0x14,%edi
 8049a9e:	0f 84 a9 00 00 00    	je     8049b4d <submitr+0x7bf>
 8049aa4:	e9 9f 00 00 00       	jmp    8049b48 <submitr+0x7ba>
 8049aa9:	a1 7c a2 04 08       	mov    0x804a27c,%eax
 8049aae:	8b 7c 24 18          	mov    0x18(%esp),%edi
 8049ab2:	89 07                	mov    %eax,(%edi)
 8049ab4:	a1 bb a2 04 08       	mov    0x804a2bb,%eax
 8049ab9:	89 47 3f             	mov    %eax,0x3f(%edi)
 8049abc:	89 f8                	mov    %edi,%eax
 8049abe:	83 c7 04             	add    $0x4,%edi
 8049ac1:	83 e7 fc             	and    $0xfffffffc,%edi
 8049ac4:	29 f8                	sub    %edi,%eax
 8049ac6:	be 7c a2 04 08       	mov    $0x804a27c,%esi
 8049acb:	29 c6                	sub    %eax,%esi
 8049acd:	83 c0 43             	add    $0x43,%eax
 8049ad0:	c1 e8 02             	shr    $0x2,%eax
 8049ad3:	89 c1                	mov    %eax,%ecx
 8049ad5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049ad7:	83 ec 0c             	sub    $0xc,%esp
 8049ada:	ff 74 24 14          	pushl  0x14(%esp)
 8049ade:	e8 bd ed ff ff       	call   80488a0 <close@plt>
 8049ae3:	83 c4 10             	add    $0x10,%esp
 8049ae6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049aeb:	eb a3                	jmp    8049a90 <submitr+0x702>
 8049aed:	8d 84 24 4c 40 00 00 	lea    0x404c(%esp),%eax
 8049af4:	50                   	push   %eax
 8049af5:	ff 74 24 18          	pushl  0x18(%esp)
 8049af9:	ff 74 24 18          	pushl  0x18(%esp)
 8049afd:	ff 74 24 18          	pushl  0x18(%esp)
 8049b01:	68 c0 a2 04 08       	push   $0x804a2c0
 8049b06:	68 00 20 00 00       	push   $0x2000
 8049b0b:	6a 01                	push   $0x1
 8049b0d:	8d bc 24 68 20 00 00 	lea    0x2068(%esp),%edi
 8049b14:	57                   	push   %edi
 8049b15:	e8 a6 ed ff ff       	call   80488c0 <__sprintf_chk@plt>
 8049b1a:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b1f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049b24:	f2 ae                	repnz scas %es:(%edi),%al
 8049b26:	f7 d1                	not    %ecx
 8049b28:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049b2b:	83 c4 20             	add    $0x20,%esp
 8049b2e:	89 fb                	mov    %edi,%ebx
 8049b30:	8d b4 24 4c 20 00 00 	lea    0x204c(%esp),%esi
 8049b37:	8b 6c 24 08          	mov    0x8(%esp),%ebp
 8049b3b:	85 ff                	test   %edi,%edi
 8049b3d:	0f 85 00 fc ff ff    	jne    8049743 <submitr+0x3b5>
 8049b43:	e9 8f fc ff ff       	jmp    80497d7 <submitr+0x449>
 8049b48:	e8 43 ec ff ff       	call   8048790 <__stack_chk_fail@plt>
 8049b4d:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049b53:	5b                   	pop    %ebx
 8049b54:	5e                   	pop    %esi
 8049b55:	5f                   	pop    %edi
 8049b56:	5d                   	pop    %ebp
 8049b57:	c3                   	ret    

08049b58 <init_timeout>:
 8049b58:	53                   	push   %ebx
 8049b59:	83 ec 08             	sub    $0x8,%esp
 8049b5c:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8049b60:	85 db                	test   %ebx,%ebx
 8049b62:	74 24                	je     8049b88 <init_timeout+0x30>
 8049b64:	83 ec 08             	sub    $0x8,%esp
 8049b67:	68 97 92 04 08       	push   $0x8049297
 8049b6c:	6a 0e                	push   $0xe
 8049b6e:	e8 ed eb ff ff       	call   8048760 <signal@plt>
 8049b73:	85 db                	test   %ebx,%ebx
 8049b75:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b7a:	0f 48 d8             	cmovs  %eax,%ebx
 8049b7d:	89 1c 24             	mov    %ebx,(%esp)
 8049b80:	e8 fb eb ff ff       	call   8048780 <alarm@plt>
 8049b85:	83 c4 10             	add    $0x10,%esp
 8049b88:	83 c4 08             	add    $0x8,%esp
 8049b8b:	5b                   	pop    %ebx
 8049b8c:	c3                   	ret    

08049b8d <init_driver>:
 8049b8d:	57                   	push   %edi
 8049b8e:	56                   	push   %esi
 8049b8f:	53                   	push   %ebx
 8049b90:	83 ec 28             	sub    $0x28,%esp
 8049b93:	8b 74 24 38          	mov    0x38(%esp),%esi
 8049b97:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049b9d:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049ba1:	31 c0                	xor    %eax,%eax
 8049ba3:	6a 01                	push   $0x1
 8049ba5:	6a 0d                	push   $0xd
 8049ba7:	e8 b4 eb ff ff       	call   8048760 <signal@plt>
 8049bac:	83 c4 08             	add    $0x8,%esp
 8049baf:	6a 01                	push   $0x1
 8049bb1:	6a 1d                	push   $0x1d
 8049bb3:	e8 a8 eb ff ff       	call   8048760 <signal@plt>
 8049bb8:	83 c4 08             	add    $0x8,%esp
 8049bbb:	6a 01                	push   $0x1
 8049bbd:	6a 1d                	push   $0x1d
 8049bbf:	e8 9c eb ff ff       	call   8048760 <signal@plt>
 8049bc4:	83 c4 0c             	add    $0xc,%esp
 8049bc7:	6a 00                	push   $0x0
 8049bc9:	6a 01                	push   $0x1
 8049bcb:	6a 02                	push   $0x2
 8049bcd:	e8 7e ec ff ff       	call   8048850 <socket@plt>
 8049bd2:	83 c4 10             	add    $0x10,%esp
 8049bd5:	85 c0                	test   %eax,%eax
 8049bd7:	79 4e                	jns    8049c27 <init_driver+0x9a>
 8049bd9:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049bdf:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049be6:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049bed:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049bf4:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049bfb:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049c02:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049c09:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049c10:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049c17:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049c1d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c22:	e9 1f 01 00 00       	jmp    8049d46 <init_driver+0x1b9>
 8049c27:	89 c3                	mov    %eax,%ebx
 8049c29:	83 ec 0c             	sub    $0xc,%esp
 8049c2c:	68 4c a3 04 08       	push   $0x804a34c
 8049c31:	e8 3a ec ff ff       	call   8048870 <gethostbyname@plt>
 8049c36:	83 c4 10             	add    $0x10,%esp
 8049c39:	85 c0                	test   %eax,%eax
 8049c3b:	75 6c                	jne    8049ca9 <init_driver+0x11c>
 8049c3d:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049c43:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049c4a:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049c51:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049c58:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049c5f:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049c66:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049c6d:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049c74:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049c7b:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049c82:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049c89:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049c8f:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049c93:	83 ec 0c             	sub    $0xc,%esp
 8049c96:	53                   	push   %ebx
 8049c97:	e8 04 ec ff ff       	call   80488a0 <close@plt>
 8049c9c:	83 c4 10             	add    $0x10,%esp
 8049c9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ca4:	e9 9d 00 00 00       	jmp    8049d46 <init_driver+0x1b9>
 8049ca9:	8d 7c 24 0c          	lea    0xc(%esp),%edi
 8049cad:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049cb4:	00 
 8049cb5:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8049cbc:	00 
 8049cbd:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8049cc4:	00 
 8049cc5:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8049ccc:	00 
 8049ccd:	66 c7 44 24 0c 02 00 	movw   $0x2,0xc(%esp)
 8049cd4:	6a 0c                	push   $0xc
 8049cd6:	ff 70 0c             	pushl  0xc(%eax)
 8049cd9:	8b 40 10             	mov    0x10(%eax),%eax
 8049cdc:	ff 30                	pushl  (%eax)
 8049cde:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8049ce2:	50                   	push   %eax
 8049ce3:	e8 e8 ea ff ff       	call   80487d0 <__memmove_chk@plt>
 8049ce8:	66 c7 44 24 1e 3b 6e 	movw   $0x6e3b,0x1e(%esp)
 8049cef:	83 c4 0c             	add    $0xc,%esp
 8049cf2:	6a 10                	push   $0x10
 8049cf4:	57                   	push   %edi
 8049cf5:	53                   	push   %ebx
 8049cf6:	e8 95 eb ff ff       	call   8048890 <connect@plt>
 8049cfb:	83 c4 10             	add    $0x10,%esp
 8049cfe:	85 c0                	test   %eax,%eax
 8049d00:	79 2a                	jns    8049d2c <init_driver+0x19f>
 8049d02:	83 ec 0c             	sub    $0xc,%esp
 8049d05:	68 4c a3 04 08       	push   $0x804a34c
 8049d0a:	68 0c a3 04 08       	push   $0x804a30c
 8049d0f:	6a ff                	push   $0xffffffff
 8049d11:	6a 01                	push   $0x1
 8049d13:	56                   	push   %esi
 8049d14:	e8 a7 eb ff ff       	call   80488c0 <__sprintf_chk@plt>
 8049d19:	83 c4 14             	add    $0x14,%esp
 8049d1c:	53                   	push   %ebx
 8049d1d:	e8 7e eb ff ff       	call   80488a0 <close@plt>
 8049d22:	83 c4 10             	add    $0x10,%esp
 8049d25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d2a:	eb 1a                	jmp    8049d46 <init_driver+0x1b9>
 8049d2c:	83 ec 0c             	sub    $0xc,%esp
 8049d2f:	53                   	push   %ebx
 8049d30:	e8 6b eb ff ff       	call   80488a0 <close@plt>
 8049d35:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049d3a:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049d3e:	83 c4 10             	add    $0x10,%esp
 8049d41:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d46:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049d4a:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049d51:	74 05                	je     8049d58 <init_driver+0x1cb>
 8049d53:	e8 38 ea ff ff       	call   8048790 <__stack_chk_fail@plt>
 8049d58:	83 c4 20             	add    $0x20,%esp
 8049d5b:	5b                   	pop    %ebx
 8049d5c:	5e                   	pop    %esi
 8049d5d:	5f                   	pop    %edi
 8049d5e:	c3                   	ret    

08049d5f <driver_post>:
 8049d5f:	53                   	push   %ebx
 8049d60:	83 ec 08             	sub    $0x8,%esp
 8049d63:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049d67:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
 8049d6b:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8049d70:	74 26                	je     8049d98 <driver_post+0x39>
 8049d72:	83 ec 04             	sub    $0x4,%esp
 8049d75:	ff 74 24 18          	pushl  0x18(%esp)
 8049d79:	68 5a a3 04 08       	push   $0x804a35a
 8049d7e:	6a 01                	push   $0x1
 8049d80:	e8 bb ea ff ff       	call   8048840 <__printf_chk@plt>
 8049d85:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049d8a:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049d8e:	83 c4 10             	add    $0x10,%esp
 8049d91:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d96:	eb 3e                	jmp    8049dd6 <driver_post+0x77>
 8049d98:	85 c0                	test   %eax,%eax
 8049d9a:	74 2c                	je     8049dc8 <driver_post+0x69>
 8049d9c:	80 38 00             	cmpb   $0x0,(%eax)
 8049d9f:	74 27                	je     8049dc8 <driver_post+0x69>
 8049da1:	83 ec 04             	sub    $0x4,%esp
 8049da4:	53                   	push   %ebx
 8049da5:	ff 74 24 1c          	pushl  0x1c(%esp)
 8049da9:	68 71 a3 04 08       	push   $0x804a371
 8049dae:	50                   	push   %eax
 8049daf:	68 79 a3 04 08       	push   $0x804a379
 8049db4:	68 6e 3b 00 00       	push   $0x3b6e
 8049db9:	68 4c a3 04 08       	push   $0x804a34c
 8049dbe:	e8 cb f5 ff ff       	call   804938e <submitr>
 8049dc3:	83 c4 20             	add    $0x20,%esp
 8049dc6:	eb 0e                	jmp    8049dd6 <driver_post+0x77>
 8049dc8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049dcd:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049dd1:	b8 00 00 00 00       	mov    $0x0,%eax
 8049dd6:	83 c4 08             	add    $0x8,%esp
 8049dd9:	5b                   	pop    %ebx
 8049dda:	c3                   	ret    
 8049ddb:	66 90                	xchg   %ax,%ax
 8049ddd:	66 90                	xchg   %ax,%ax
 8049ddf:	90                   	nop

08049de0 <__libc_csu_init>:
 8049de0:	55                   	push   %ebp
 8049de1:	57                   	push   %edi
 8049de2:	56                   	push   %esi
 8049de3:	53                   	push   %ebx
 8049de4:	e8 27 eb ff ff       	call   8048910 <__x86.get_pc_thunk.bx>
 8049de9:	81 c3 17 22 00 00    	add    $0x2217,%ebx
 8049def:	83 ec 0c             	sub    $0xc,%esp
 8049df2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8049df6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8049dfc:	e8 f3 e8 ff ff       	call   80486f4 <_init>
 8049e01:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049e07:	29 c6                	sub    %eax,%esi
 8049e09:	c1 fe 02             	sar    $0x2,%esi
 8049e0c:	85 f6                	test   %esi,%esi
 8049e0e:	74 25                	je     8049e35 <__libc_csu_init+0x55>
 8049e10:	31 ff                	xor    %edi,%edi
 8049e12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049e18:	83 ec 04             	sub    $0x4,%esp
 8049e1b:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049e1f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049e23:	55                   	push   %ebp
 8049e24:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049e2b:	83 c7 01             	add    $0x1,%edi
 8049e2e:	83 c4 10             	add    $0x10,%esp
 8049e31:	39 f7                	cmp    %esi,%edi
 8049e33:	75 e3                	jne    8049e18 <__libc_csu_init+0x38>
 8049e35:	83 c4 0c             	add    $0xc,%esp
 8049e38:	5b                   	pop    %ebx
 8049e39:	5e                   	pop    %esi
 8049e3a:	5f                   	pop    %edi
 8049e3b:	5d                   	pop    %ebp
 8049e3c:	c3                   	ret    
 8049e3d:	8d 76 00             	lea    0x0(%esi),%esi

08049e40 <__libc_csu_fini>:
 8049e40:	f3 c3                	repz ret 

Disassembly of section .fini:

08049e44 <_fini>:
 8049e44:	53                   	push   %ebx
 8049e45:	83 ec 08             	sub    $0x8,%esp
 8049e48:	e8 c3 ea ff ff       	call   8048910 <__x86.get_pc_thunk.bx>
 8049e4d:	81 c3 b3 21 00 00    	add    $0x21b3,%ebx
 8049e53:	83 c4 08             	add    $0x8,%esp
 8049e56:	5b                   	pop    %ebx
 8049e57:	c3                   	ret    
