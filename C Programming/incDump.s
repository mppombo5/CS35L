
increment:     file format elf64-x86-64


Disassembly of section .init:

0000000000400400 <_init>:
  400400:	48 83 ec 08          	sub    $0x8,%rsp
  400404:	48 8b 05 ed 0b 20 00 	mov    0x200bed(%rip),%rax        # 600ff8 <__gmon_start__>
  40040b:	48 85 c0             	test   %rax,%rax
  40040e:	74 05                	je     400415 <_init+0x15>
  400410:	e8 4b 00 00 00       	callq  400460 <__gmon_start__@plt>
  400415:	48 83 c4 08          	add    $0x8,%rsp
  400419:	c3                   	retq   

Disassembly of section .plt:

0000000000400420 <.plt>:
  400420:	ff 35 e2 0b 20 00    	pushq  0x200be2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400426:	ff 25 e4 0b 20 00    	jmpq   *0x200be4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40042c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400430 <puts@plt>:
  400430:	ff 25 e2 0b 20 00    	jmpq   *0x200be2(%rip)        # 601018 <puts@GLIBC_2.2.5>
  400436:	68 00 00 00 00       	pushq  $0x0
  40043b:	e9 e0 ff ff ff       	jmpq   400420 <.plt>

0000000000400440 <printf@plt>:
  400440:	ff 25 da 0b 20 00    	jmpq   *0x200bda(%rip)        # 601020 <printf@GLIBC_2.2.5>
  400446:	68 01 00 00 00       	pushq  $0x1
  40044b:	e9 d0 ff ff ff       	jmpq   400420 <.plt>

0000000000400450 <__libc_start_main@plt>:
  400450:	ff 25 d2 0b 20 00    	jmpq   *0x200bd2(%rip)        # 601028 <__libc_start_main@GLIBC_2.2.5>
  400456:	68 02 00 00 00       	pushq  $0x2
  40045b:	e9 c0 ff ff ff       	jmpq   400420 <.plt>

0000000000400460 <__gmon_start__@plt>:
  400460:	ff 25 ca 0b 20 00    	jmpq   *0x200bca(%rip)        # 601030 <__gmon_start__>
  400466:	68 03 00 00 00       	pushq  $0x3
  40046b:	e9 b0 ff ff ff       	jmpq   400420 <.plt>

Disassembly of section .text:

0000000000400470 <_start>:
  400470:	31 ed                	xor    %ebp,%ebp
  400472:	49 89 d1             	mov    %rdx,%r9
  400475:	5e                   	pop    %rsi
  400476:	48 89 e2             	mov    %rsp,%rdx
  400479:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40047d:	50                   	push   %rax
  40047e:	54                   	push   %rsp
  40047f:	49 c7 c0 50 06 40 00 	mov    $0x400650,%r8
  400486:	48 c7 c1 e0 05 40 00 	mov    $0x4005e0,%rcx
  40048d:	48 c7 c7 5c 05 40 00 	mov    $0x40055c,%rdi
  400494:	e8 b7 ff ff ff       	callq  400450 <__libc_start_main@plt>
  400499:	f4                   	hlt    
  40049a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004a0 <deregister_tm_clones>:
  4004a0:	b8 48 10 60 00       	mov    $0x601048,%eax
  4004a5:	48 3d 48 10 60 00    	cmp    $0x601048,%rax
  4004ab:	74 13                	je     4004c0 <deregister_tm_clones+0x20>
  4004ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4004b2:	48 85 c0             	test   %rax,%rax
  4004b5:	74 09                	je     4004c0 <deregister_tm_clones+0x20>
  4004b7:	bf 48 10 60 00       	mov    $0x601048,%edi
  4004bc:	ff e0                	jmpq   *%rax
  4004be:	66 90                	xchg   %ax,%ax
  4004c0:	c3                   	retq   
  4004c1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4004c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004cd:	00 00 00 

00000000004004d0 <register_tm_clones>:
  4004d0:	be 48 10 60 00       	mov    $0x601048,%esi
  4004d5:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  4004dc:	48 89 f0             	mov    %rsi,%rax
  4004df:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4004e3:	48 c1 f8 03          	sar    $0x3,%rax
  4004e7:	48 01 c6             	add    %rax,%rsi
  4004ea:	48 d1 fe             	sar    %rsi
  4004ed:	74 11                	je     400500 <register_tm_clones+0x30>
  4004ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4004f4:	48 85 c0             	test   %rax,%rax
  4004f7:	74 07                	je     400500 <register_tm_clones+0x30>
  4004f9:	bf 48 10 60 00       	mov    $0x601048,%edi
  4004fe:	ff e0                	jmpq   *%rax
  400500:	c3                   	retq   
  400501:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40050d:	00 00 00 

0000000000400510 <__do_global_dtors_aux>:
  400510:	80 3d 31 0b 20 00 00 	cmpb   $0x0,0x200b31(%rip)        # 601048 <__TMC_END__>
  400517:	75 17                	jne    400530 <__do_global_dtors_aux+0x20>
  400519:	55                   	push   %rbp
  40051a:	48 89 e5             	mov    %rsp,%rbp
  40051d:	e8 7e ff ff ff       	callq  4004a0 <deregister_tm_clones>
  400522:	c6 05 1f 0b 20 00 01 	movb   $0x1,0x200b1f(%rip)        # 601048 <__TMC_END__>
  400529:	5d                   	pop    %rbp
  40052a:	c3                   	retq   
  40052b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400530:	c3                   	retq   
  400531:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400536:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40053d:	00 00 00 

0000000000400540 <frame_dummy>:
  400540:	eb 8e                	jmp    4004d0 <register_tm_clones>

0000000000400542 <incInt>:
  400542:	55                   	push   %rbp
  400543:	48 89 e5             	mov    %rsp,%rbp
  400546:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40054a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40054e:	8b 00                	mov    (%rax),%eax
  400550:	8d 50 01             	lea    0x1(%rax),%edx
  400553:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400557:	89 10                	mov    %edx,(%rax)
  400559:	90                   	nop
  40055a:	5d                   	pop    %rbp
  40055b:	c3                   	retq   

000000000040055c <main>:
  40055c:	55                   	push   %rbp
  40055d:	48 89 e5             	mov    %rsp,%rbp
  400560:	48 83 ec 20          	sub    $0x20,%rsp
  400564:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400567:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40056b:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  40056f:	7e 11                	jle    400582 <main+0x26>
  400571:	bf 64 06 40 00       	mov    $0x400664,%edi
  400576:	e8 b5 fe ff ff       	callq  400430 <puts@plt>
  40057b:	b8 01 00 00 00       	mov    $0x1,%eax
  400580:	eb 53                	jmp    4005d5 <main+0x79>
  400582:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  400586:	7f 11                	jg     400599 <main+0x3d>
  400588:	bf 73 06 40 00       	mov    $0x400673,%edi
  40058d:	e8 9e fe ff ff       	callq  400430 <puts@plt>
  400592:	b8 01 00 00 00       	mov    $0x1,%eax
  400597:	eb 3c                	jmp    4005d5 <main+0x79>
  400599:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40059d:	48 83 c0 08          	add    $0x8,%rax
  4005a1:	48 8b 00             	mov    (%rax),%rax
  4005a4:	0f b6 00             	movzbl (%rax),%eax
  4005a7:	0f be c0             	movsbl %al,%eax
  4005aa:	83 e8 30             	sub    $0x30,%eax
  4005ad:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4005b0:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  4005b4:	48 89 c7             	mov    %rax,%rdi
  4005b7:	e8 86 ff ff ff       	callq  400542 <incInt>
  4005bc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4005bf:	89 c6                	mov    %eax,%esi
  4005c1:	bf 84 06 40 00       	mov    $0x400684,%edi
  4005c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4005cb:	e8 70 fe ff ff       	callq  400440 <printf@plt>
  4005d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d5:	c9                   	leaveq 
  4005d6:	c3                   	retq   
  4005d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4005de:	00 00 

00000000004005e0 <__libc_csu_init>:
  4005e0:	41 57                	push   %r15
  4005e2:	41 89 ff             	mov    %edi,%r15d
  4005e5:	41 56                	push   %r14
  4005e7:	49 89 f6             	mov    %rsi,%r14
  4005ea:	41 55                	push   %r13
  4005ec:	49 89 d5             	mov    %rdx,%r13
  4005ef:	41 54                	push   %r12
  4005f1:	4c 8d 25 20 08 20 00 	lea    0x200820(%rip),%r12        # 600e18 <__frame_dummy_init_array_entry>
  4005f8:	55                   	push   %rbp
  4005f9:	48 8d 2d 20 08 20 00 	lea    0x200820(%rip),%rbp        # 600e20 <__init_array_end>
  400600:	53                   	push   %rbx
  400601:	4c 29 e5             	sub    %r12,%rbp
  400604:	31 db                	xor    %ebx,%ebx
  400606:	48 c1 fd 03          	sar    $0x3,%rbp
  40060a:	48 83 ec 08          	sub    $0x8,%rsp
  40060e:	e8 ed fd ff ff       	callq  400400 <_init>
  400613:	48 85 ed             	test   %rbp,%rbp
  400616:	74 1e                	je     400636 <__libc_csu_init+0x56>
  400618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40061f:	00 
  400620:	4c 89 ea             	mov    %r13,%rdx
  400623:	4c 89 f6             	mov    %r14,%rsi
  400626:	44 89 ff             	mov    %r15d,%edi
  400629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	75 ea                	jne    400620 <__libc_csu_init+0x40>
  400636:	48 83 c4 08          	add    $0x8,%rsp
  40063a:	5b                   	pop    %rbx
  40063b:	5d                   	pop    %rbp
  40063c:	41 5c                	pop    %r12
  40063e:	41 5d                	pop    %r13
  400640:	41 5e                	pop    %r14
  400642:	41 5f                	pop    %r15
  400644:	c3                   	retq   
  400645:	90                   	nop
  400646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40064d:	00 00 00 

0000000000400650 <__libc_csu_fini>:
  400650:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400654 <_fini>:
  400654:	48 83 ec 08          	sub    $0x8,%rsp
  400658:	48 83 c4 08          	add    $0x8,%rsp
  40065c:	c3                   	retq   
