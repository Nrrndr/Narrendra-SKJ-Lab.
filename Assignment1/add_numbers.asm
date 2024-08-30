
add_numbers.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 65 34 00 00 	mov    0x3465(%rip),%rax        # 140004480 <.refptr.mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 66 34 00 00 	mov    0x3466(%rip),%rax        # 140004490 <.refptr.mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 69 34 00 00 	mov    0x3469(%rip),%rax        # 1400044a0 <.refptr.mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 2c 34 00 00 	mov    0x342c(%rip),%rax        # 140004470 <.refptr.mingw_initcharmax>
   140001044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000104a:	48 8b 05 ef 32 00 00 	mov    0x32ef(%rip),%rax        # 140004340 <.refptr.__image_base__>
   140001051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001056:	75 0f                	jne    140001067 <pre_c_init+0x57>
   140001058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000105c:	48 01 d0             	add    %rdx,%rax
   14000105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001065:	74 69                	je     1400010d0 <pre_c_init+0xc0>
   140001067:	48 8b 05 f2 33 00 00 	mov    0x33f2(%rip),%rax        # 140004460 <.refptr.mingw_app_type>
   14000106e:	89 0d ac 5f 00 00    	mov    %ecx,0x5fac(%rip)        # 140007020 <managedapp>
   140001074:	8b 00                	mov    (%rax),%eax
   140001076:	85 c0                	test   %eax,%eax
   140001078:	74 46                	je     1400010c0 <pre_c_init+0xb0>
   14000107a:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000107f:	e8 74 15 00 00       	call   1400025f8 <__set_app_type>
   140001084:	e8 f7 15 00 00       	call   140002680 <__p__fmode>
   140001089:	48 8b 15 90 33 00 00 	mov    0x3390(%rip),%rdx        # 140004420 <.refptr._fmode>
   140001090:	8b 12                	mov    (%rdx),%edx
   140001092:	89 10                	mov    %edx,(%rax)
   140001094:	e8 d7 15 00 00       	call   140002670 <__p__commode>
   140001099:	48 8b 15 60 33 00 00 	mov    0x3360(%rip),%rdx        # 140004400 <.refptr._commode>
   1400010a0:	8b 12                	mov    (%rdx),%edx
   1400010a2:	89 10                	mov    %edx,(%rax)
   1400010a4:	e8 97 05 00 00       	call   140001640 <_setargv>
   1400010a9:	48 8b 05 40 32 00 00 	mov    0x3240(%rip),%rax        # 1400042f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010b0:	83 38 01             	cmpl   $0x1,(%rax)
   1400010b3:	74 53                	je     140001108 <pre_c_init+0xf8>
   1400010b5:	31 c0                	xor    %eax,%eax
   1400010b7:	48 83 c4 28          	add    $0x28,%rsp
   1400010bb:	c3                   	ret    
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010c5:	e8 2e 15 00 00       	call   1400025f8 <__set_app_type>
   1400010ca:	eb b8                	jmp    140001084 <pre_c_init+0x74>
   1400010cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010d9:	74 45                	je     140001120 <pre_c_init+0x110>
   1400010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010e0:	75 85                	jne    140001067 <pre_c_init+0x57>
   1400010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010e9:	0f 86 78 ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   1400010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010f5:	31 c9                	xor    %ecx,%ecx
   1400010f7:	85 d2                	test   %edx,%edx
   1400010f9:	0f 95 c1             	setne  %cl
   1400010fc:	e9 66 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   140001101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001108:	48 8b 0d 31 33 00 00 	mov    0x3331(%rip),%rcx        # 140004440 <.refptr._matherr>
   14000110f:	e8 dc 0b 00 00       	call   140001cf0 <__mingw_setusermatherr>
   140001114:	31 c0                	xor    %eax,%eax
   140001116:	48 83 c4 28          	add    $0x28,%rsp
   14000111a:	c3                   	ret    
   14000111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001124:	0f 86 3d ff ff ff    	jbe    140001067 <pre_c_init+0x57>
   14000112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001131:	31 c9                	xor    %ecx,%ecx
   140001133:	45 85 c0             	test   %r8d,%r8d
   140001136:	0f 95 c1             	setne  %cl
   140001139:	e9 29 ff ff ff       	jmp    140001067 <pre_c_init+0x57>
   14000113e:	66 90                	xchg   %ax,%ax

0000000140001140 <pre_cpp_init>:
   140001140:	48 83 ec 38          	sub    $0x38,%rsp
   140001144:	48 8b 05 05 33 00 00 	mov    0x3305(%rip),%rax        # 140004450 <.refptr._newmode>
   14000114b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007028 <envp>
   140001152:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007030 <argv>
   140001159:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007038 <argc>
   140001160:	8b 00                	mov    (%rax),%eax
   140001162:	89 05 b0 5e 00 00    	mov    %eax,0x5eb0(%rip)        # 140007018 <startinfo>
   140001168:	48 8d 05 a9 5e 00 00 	lea    0x5ea9(%rip),%rax        # 140007018 <startinfo>
   14000116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001174:	48 8b 05 95 32 00 00 	mov    0x3295(%rip),%rax        # 140004410 <.refptr._dowildcard>
   14000117b:	44 8b 08             	mov    (%rax),%r9d
   14000117e:	e8 85 14 00 00       	call   140002608 <__getmainargs>
   140001183:	90                   	nop
   140001184:	48 83 c4 38          	add    $0x38,%rsp
   140001188:	c3                   	ret    
   140001189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001190 <__tmainCRTStartup>:
   140001190:	41 55                	push   %r13
   140001192:	41 54                	push   %r12
   140001194:	55                   	push   %rbp
   140001195:	57                   	push   %rdi
   140001196:	56                   	push   %rsi
   140001197:	53                   	push   %rbx
   140001198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   1400011a4:	31 c0                	xor    %eax,%eax
   1400011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   1400011ab:	4c 89 c7             	mov    %r8,%rdi
   1400011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011b1:	48 8b 3d a8 32 00 00 	mov    0x32a8(%rip),%rdi        # 140004460 <.refptr.mingw_app_type>
   1400011b8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011bb:	45 85 c9             	test   %r9d,%r9d
   1400011be:	0f 85 9c 02 00 00    	jne    140001460 <__tmainCRTStartup+0x2d0>
   1400011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011cb:	00 00 
   1400011cd:	48 8b 1d cc 31 00 00 	mov    0x31cc(%rip),%rbx        # 1400043a0 <.refptr.__native_startup_lock>
   1400011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011d8:	31 ed                	xor    %ebp,%ebp
   1400011da:	4c 8b 25 cb 6f 00 00 	mov    0x6fcb(%rip),%r12        # 1400081ac <__imp_Sleep>
   1400011e1:	eb 16                	jmp    1400011f9 <__tmainCRTStartup+0x69>
   1400011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011e8:	48 39 c6             	cmp    %rax,%rsi
   1400011eb:	0f 84 17 02 00 00    	je     140001408 <__tmainCRTStartup+0x278>
   1400011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011f6:	41 ff d4             	call   *%r12
   1400011f9:	48 89 e8             	mov    %rbp,%rax
   1400011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001201:	48 85 c0             	test   %rax,%rax
   140001204:	75 e2                	jne    1400011e8 <__tmainCRTStartup+0x58>
   140001206:	48 8b 35 a3 31 00 00 	mov    0x31a3(%rip),%rsi        # 1400043b0 <.refptr.__native_startup_state>
   14000120d:	31 ed                	xor    %ebp,%ebp
   14000120f:	8b 06                	mov    (%rsi),%eax
   140001211:	83 f8 01             	cmp    $0x1,%eax
   140001214:	0f 84 05 02 00 00    	je     14000141f <__tmainCRTStartup+0x28f>
   14000121a:	8b 06                	mov    (%rsi),%eax
   14000121c:	85 c0                	test   %eax,%eax
   14000121e:	0f 84 6c 02 00 00    	je     140001490 <__tmainCRTStartup+0x300>
   140001224:	c7 05 ee 5d 00 00 01 	movl   $0x1,0x5dee(%rip)        # 14000701c <has_cctor>
   14000122b:	00 00 00 
   14000122e:	8b 06                	mov    (%rsi),%eax
   140001230:	83 f8 01             	cmp    $0x1,%eax
   140001233:	0f 84 fb 01 00 00    	je     140001434 <__tmainCRTStartup+0x2a4>
   140001239:	85 ed                	test   %ebp,%ebp
   14000123b:	0f 84 14 02 00 00    	je     140001455 <__tmainCRTStartup+0x2c5>
   140001241:	48 8b 05 e8 30 00 00 	mov    0x30e8(%rip),%rax        # 140004330 <.refptr.__dyn_tls_init_callback>
   140001248:	48 8b 00             	mov    (%rax),%rax
   14000124b:	48 85 c0             	test   %rax,%rax
   14000124e:	74 0c                	je     14000125c <__tmainCRTStartup+0xcc>
   140001250:	45 31 c0             	xor    %r8d,%r8d
   140001253:	ba 02 00 00 00       	mov    $0x2,%edx
   140001258:	31 c9                	xor    %ecx,%ecx
   14000125a:	ff d0                	call   *%rax
   14000125c:	e8 af 07 00 00       	call   140001a10 <_pei386_runtime_relocator>
   140001261:	48 8b 0d c8 31 00 00 	mov    0x31c8(%rip),%rcx        # 140004430 <.refptr._gnu_exception_handler>
   140001268:	ff 15 36 6f 00 00    	call   *0x6f36(%rip)        # 1400081a4 <__imp_SetUnhandledExceptionFilter>
   14000126e:	48 8b 15 1b 31 00 00 	mov    0x311b(%rip),%rdx        # 140004390 <.refptr.__mingw_oldexcpt_handler>
   140001275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000127c:	48 89 02             	mov    %rax,(%rdx)
   14000127f:	e8 cc 13 00 00       	call   140002650 <_set_invalid_parameter_handler>
   140001284:	e8 97 05 00 00       	call   140001820 <_fpreset>
   140001289:	48 8b 05 b0 30 00 00 	mov    0x30b0(%rip),%rax        # 140004340 <.refptr.__image_base__>
   140001290:	48 89 05 79 5d 00 00 	mov    %rax,0x5d79(%rip)        # 140007010 <__mingw_winmain_hInstance>
   140001297:	e8 c4 13 00 00       	call   140002660 <__p__acmdln>
   14000129c:	31 c9                	xor    %ecx,%ecx
   14000129e:	48 8b 00             	mov    (%rax),%rax
   1400012a1:	48 85 c0             	test   %rax,%rax
   1400012a4:	75 1c                	jne    1400012c2 <__tmainCRTStartup+0x132>
   1400012a6:	eb 58                	jmp    140001300 <__tmainCRTStartup+0x170>
   1400012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400012af:	00 
   1400012b0:	84 d2                	test   %dl,%dl
   1400012b2:	74 45                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012b4:	83 e1 01             	and    $0x1,%ecx
   1400012b7:	74 27                	je     1400012e0 <__tmainCRTStartup+0x150>
   1400012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012be:	48 83 c0 01          	add    $0x1,%rax
   1400012c2:	0f b6 10             	movzbl (%rax),%edx
   1400012c5:	80 fa 20             	cmp    $0x20,%dl
   1400012c8:	7e e6                	jle    1400012b0 <__tmainCRTStartup+0x120>
   1400012ca:	41 89 c8             	mov    %ecx,%r8d
   1400012cd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012d1:	80 fa 22             	cmp    $0x22,%dl
   1400012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012d8:	eb e4                	jmp    1400012be <__tmainCRTStartup+0x12e>
   1400012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 15                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012ec:	48 83 c0 01          	add    $0x1,%rax
   1400012f0:	84 d2                	test   %dl,%dl
   1400012f2:	74 05                	je     1400012f9 <__tmainCRTStartup+0x169>
   1400012f4:	80 fa 20             	cmp    $0x20,%dl
   1400012f7:	7e ef                	jle    1400012e8 <__tmainCRTStartup+0x158>
   1400012f9:	48 89 05 08 5d 00 00 	mov    %rax,0x5d08(%rip)        # 140007008 <__mingw_winmain_lpCmdLine>
   140001300:	44 8b 07             	mov    (%rdi),%r8d
   140001303:	45 85 c0             	test   %r8d,%r8d
   140001306:	74 16                	je     14000131e <__tmainCRTStartup+0x18e>
   140001308:	b8 0a 00 00 00       	mov    $0xa,%eax
   14000130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001312:	0f 85 e0 00 00 00    	jne    1400013f8 <__tmainCRTStartup+0x268>
   140001318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 140003000 <__data_start__>
   14000131e:	48 63 2d 13 5d 00 00 	movslq 0x5d13(%rip),%rbp        # 140007038 <argc>
   140001325:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001329:	4d 63 e4             	movslq %r12d,%r12
   14000132c:	49 c1 e4 03          	shl    $0x3,%r12
   140001330:	4c 89 e1             	mov    %r12,%rcx
   140001333:	e8 60 12 00 00       	call   140002598 <malloc>
   140001338:	4c 8b 2d f1 5c 00 00 	mov    0x5cf1(%rip),%r13        # 140007030 <argv>
   14000133f:	48 89 c7             	mov    %rax,%rdi
   140001342:	85 ed                	test   %ebp,%ebp
   140001344:	7e 42                	jle    140001388 <__tmainCRTStartup+0x1f8>
   140001346:	31 db                	xor    %ebx,%ebx
   140001348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000134f:	00 
   140001350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001355:	e8 26 12 00 00       	call   140002580 <strlen>
   14000135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000135e:	48 89 f1             	mov    %rsi,%rcx
   140001361:	e8 32 12 00 00       	call   140002598 <malloc>
   140001366:	49 89 f0             	mov    %rsi,%r8
   140001369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001372:	48 89 c1             	mov    %rax,%rcx
   140001375:	48 83 c3 01          	add    $0x1,%rbx
   140001379:	e8 12 12 00 00       	call   140002590 <memcpy>
   14000137e:	48 39 dd             	cmp    %rbx,%rbp
   140001381:	75 cd                	jne    140001350 <__tmainCRTStartup+0x1c0>
   140001383:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001388:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000138f:	48 89 3d 9a 5c 00 00 	mov    %rdi,0x5c9a(%rip)        # 140007030 <argv>
   140001396:	e8 75 02 00 00       	call   140001610 <__main>
   14000139b:	48 8b 05 ae 2f 00 00 	mov    0x2fae(%rip),%rax        # 140004350 <.refptr.__imp___initenv>
   1400013a2:	4c 8b 05 7f 5c 00 00 	mov    0x5c7f(%rip),%r8        # 140007028 <envp>
   1400013a9:	8b 0d 89 5c 00 00    	mov    0x5c89(%rip),%ecx        # 140007038 <argc>
   1400013af:	48 8b 00             	mov    (%rax),%rax
   1400013b2:	4c 89 00             	mov    %r8,(%rax)
   1400013b5:	48 8b 15 74 5c 00 00 	mov    0x5c74(%rip),%rdx        # 140007030 <argv>
   1400013bc:	e8 7f 01 00 00       	call   140001540 <main>
   1400013c1:	8b 0d 59 5c 00 00    	mov    0x5c59(%rip),%ecx        # 140007020 <managedapp>
   1400013c7:	89 05 57 5c 00 00    	mov    %eax,0x5c57(%rip)        # 140007024 <mainret>
   1400013cd:	85 c9                	test   %ecx,%ecx
   1400013cf:	0f 84 d9 00 00 00    	je     1400014ae <__tmainCRTStartup+0x31e>
   1400013d5:	8b 15 41 5c 00 00    	mov    0x5c41(%rip),%edx        # 14000701c <has_cctor>
   1400013db:	85 d2                	test   %edx,%edx
   1400013dd:	0f 84 8d 00 00 00    	je     140001470 <__tmainCRTStartup+0x2e0>
   1400013e3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013ea:	5b                   	pop    %rbx
   1400013eb:	5e                   	pop    %rsi
   1400013ec:	5f                   	pop    %rdi
   1400013ed:	5d                   	pop    %rbp
   1400013ee:	41 5c                	pop    %r12
   1400013f0:	41 5d                	pop    %r13
   1400013f2:	c3                   	ret    
   1400013f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013f8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013fd:	e9 16 ff ff ff       	jmp    140001318 <__tmainCRTStartup+0x188>
   140001402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001408:	48 8b 35 a1 2f 00 00 	mov    0x2fa1(%rip),%rsi        # 1400043b0 <.refptr.__native_startup_state>
   14000140f:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001414:	8b 06                	mov    (%rsi),%eax
   140001416:	83 f8 01             	cmp    $0x1,%eax
   140001419:	0f 85 fb fd ff ff    	jne    14000121a <__tmainCRTStartup+0x8a>
   14000141f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001424:	e8 bf 11 00 00       	call   1400025e8 <_amsg_exit>
   140001429:	8b 06                	mov    (%rsi),%eax
   14000142b:	83 f8 01             	cmp    $0x1,%eax
   14000142e:	0f 85 05 fe ff ff    	jne    140001239 <__tmainCRTStartup+0xa9>
   140001434:	48 8b 15 95 2f 00 00 	mov    0x2f95(%rip),%rdx        # 1400043d0 <.refptr.__xc_z>
   14000143b:	48 8b 0d 7e 2f 00 00 	mov    0x2f7e(%rip),%rcx        # 1400043c0 <.refptr.__xc_a>
   140001442:	e8 91 11 00 00       	call   1400025d8 <_initterm>
   140001447:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000144d:	85 ed                	test   %ebp,%ebp
   14000144f:	0f 85 ec fd ff ff    	jne    140001241 <__tmainCRTStartup+0xb1>
   140001455:	31 c0                	xor    %eax,%eax
   140001457:	48 87 03             	xchg   %rax,(%rbx)
   14000145a:	e9 e2 fd ff ff       	jmp    140001241 <__tmainCRTStartup+0xb1>
   14000145f:	90                   	nop
   140001460:	4c 89 c1             	mov    %r8,%rcx
   140001463:	ff 15 23 6d 00 00    	call   *0x6d23(%rip)        # 14000818c <__imp_GetStartupInfoA>
   140001469:	e9 56 fd ff ff       	jmp    1400011c4 <__tmainCRTStartup+0x34>
   14000146e:	66 90                	xchg   %ax,%ax
   140001470:	e8 6b 11 00 00       	call   1400025e0 <_cexit>
   140001475:	8b 05 a9 5b 00 00    	mov    0x5ba9(%rip),%eax        # 140007024 <mainret>
   14000147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001482:	5b                   	pop    %rbx
   140001483:	5e                   	pop    %rsi
   140001484:	5f                   	pop    %rdi
   140001485:	5d                   	pop    %rbp
   140001486:	41 5c                	pop    %r12
   140001488:	41 5d                	pop    %r13
   14000148a:	c3                   	ret    
   14000148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001490:	48 8b 15 59 2f 00 00 	mov    0x2f59(%rip),%rdx        # 1400043f0 <.refptr.__xi_z>
   140001497:	48 8b 0d 42 2f 00 00 	mov    0x2f42(%rip),%rcx        # 1400043e0 <.refptr.__xi_a>
   14000149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400014a4:	e8 2f 11 00 00       	call   1400025d8 <_initterm>
   1400014a9:	e9 80 fd ff ff       	jmp    14000122e <__tmainCRTStartup+0x9e>
   1400014ae:	89 c1                	mov    %eax,%ecx
   1400014b0:	e8 03 11 00 00       	call   1400025b8 <exit>
   1400014b5:	90                   	nop
   1400014b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014bd:	00 00 00 

00000001400014c0 <WinMainCRTStartup>:
   1400014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014c4 <.l_startw>:
   1400014c4:	48 8b 05 95 2f 00 00 	mov    0x2f95(%rip),%rax        # 140004460 <.refptr.mingw_app_type>
   1400014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014d1:	e8 ba fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014d6:	90                   	nop

00000001400014d7 <.l_endw>:
   1400014d7:	90                   	nop
   1400014d8:	48 83 c4 28          	add    $0x28,%rsp
   1400014dc:	c3                   	ret    
   1400014dd:	0f 1f 00             	nopl   (%rax)

00000001400014e0 <mainCRTStartup>:
   1400014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014e4 <.l_start>:
   1400014e4:	48 8b 05 75 2f 00 00 	mov    0x2f75(%rip),%rax        # 140004460 <.refptr.mingw_app_type>
   1400014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014f1:	e8 9a fc ff ff       	call   140001190 <__tmainCRTStartup>
   1400014f6:	90                   	nop

00000001400014f7 <.l_end>:
   1400014f7:	90                   	nop
   1400014f8:	48 83 c4 28          	add    $0x28,%rsp
   1400014fc:	c3                   	ret    
   1400014fd:	0f 1f 00             	nopl   (%rax)

0000000140001500 <atexit>:
   140001500:	48 83 ec 28          	sub    $0x28,%rsp
   140001504:	e8 c7 10 00 00       	call   1400025d0 <_onexit>
   140001509:	48 83 f8 01          	cmp    $0x1,%rax
   14000150d:	19 c0                	sbb    %eax,%eax
   14000150f:	48 83 c4 28          	add    $0x28,%rsp
   140001513:	c3                   	ret    
   140001514:	90                   	nop
   140001515:	90                   	nop
   140001516:	90                   	nop
   140001517:	90                   	nop
   140001518:	90                   	nop
   140001519:	90                   	nop
   14000151a:	90                   	nop
   14000151b:	90                   	nop
   14000151c:	90                   	nop
   14000151d:	90                   	nop
   14000151e:	90                   	nop
   14000151f:	90                   	nop

0000000140001520 <__gcc_register_frame>:
   140001520:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001530 <__gcc_deregister_frame>
   140001527:	e9 d4 ff ff ff       	jmp    140001500 <atexit>
   14000152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001530 <__gcc_deregister_frame>:
   140001530:	c3                   	ret    
   140001531:	90                   	nop
   140001532:	90                   	nop
   140001533:	90                   	nop
   140001534:	90                   	nop
   140001535:	90                   	nop
   140001536:	90                   	nop
   140001537:	90                   	nop
   140001538:	90                   	nop
   140001539:	90                   	nop
   14000153a:	90                   	nop
   14000153b:	90                   	nop
   14000153c:	90                   	nop
   14000153d:	90                   	nop
   14000153e:	90                   	nop
   14000153f:	90                   	nop

0000000140001540 <main>:
   140001540:	55                   	push   %rbp
   140001541:	48 89 e5             	mov    %rsp,%rbp
   140001544:	48 83 ec 20          	sub    $0x20,%rsp
   140001548:	e8 c3 00 00 00       	call   140001610 <__main>
   14000154d:	b8 00 00 00 00       	mov    $0x0,%eax
   140001552:	48 83 c4 20          	add    $0x20,%rsp
   140001556:	5d                   	pop    %rbp
   140001557:	c3                   	ret    
   140001558:	90                   	nop
   140001559:	90                   	nop
   14000155a:	90                   	nop
   14000155b:	90                   	nop
   14000155c:	90                   	nop
   14000155d:	90                   	nop
   14000155e:	90                   	nop
   14000155f:	90                   	nop

0000000140001560 <__do_global_dtors>:
   140001560:	48 83 ec 28          	sub    $0x28,%rsp
   140001564:	48 8b 05 a5 1a 00 00 	mov    0x1aa5(%rip),%rax        # 140003010 <p.0>
   14000156b:	48 8b 00             	mov    (%rax),%rax
   14000156e:	48 85 c0             	test   %rax,%rax
   140001571:	74 22                	je     140001595 <__do_global_dtors+0x35>
   140001573:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001578:	ff d0                	call   *%rax
   14000157a:	48 8b 05 8f 1a 00 00 	mov    0x1a8f(%rip),%rax        # 140003010 <p.0>
   140001581:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001585:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001589:	48 89 15 80 1a 00 00 	mov    %rdx,0x1a80(%rip)        # 140003010 <p.0>
   140001590:	48 85 c0             	test   %rax,%rax
   140001593:	75 e3                	jne    140001578 <__do_global_dtors+0x18>
   140001595:	48 83 c4 28          	add    $0x28,%rsp
   140001599:	c3                   	ret    
   14000159a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015a0 <__do_global_ctors>:
   1400015a0:	56                   	push   %rsi
   1400015a1:	53                   	push   %rbx
   1400015a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015a6:	48 8b 15 53 2d 00 00 	mov    0x2d53(%rip),%rdx        # 140004300 <.refptr.__CTOR_LIST__>
   1400015ad:	48 8b 02             	mov    (%rdx),%rax
   1400015b0:	89 c1                	mov    %eax,%ecx
   1400015b2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015b5:	74 39                	je     1400015f0 <__do_global_ctors+0x50>
   1400015b7:	85 c9                	test   %ecx,%ecx
   1400015b9:	74 20                	je     1400015db <__do_global_ctors+0x3b>
   1400015bb:	89 c8                	mov    %ecx,%eax
   1400015bd:	83 e9 01             	sub    $0x1,%ecx
   1400015c0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015c4:	48 29 c8             	sub    %rcx,%rax
   1400015c7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400015d0:	ff 13                	call   *(%rbx)
   1400015d2:	48 83 eb 08          	sub    $0x8,%rbx
   1400015d6:	48 39 f3             	cmp    %rsi,%rbx
   1400015d9:	75 f5                	jne    1400015d0 <__do_global_ctors+0x30>
   1400015db:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001560 <__do_global_dtors>
   1400015e2:	48 83 c4 28          	add    $0x28,%rsp
   1400015e6:	5b                   	pop    %rbx
   1400015e7:	5e                   	pop    %rsi
   1400015e8:	e9 13 ff ff ff       	jmp    140001500 <atexit>
   1400015ed:	0f 1f 00             	nopl   (%rax)
   1400015f0:	31 c0                	xor    %eax,%eax
   1400015f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400015f8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400015fc:	89 c1                	mov    %eax,%ecx
   1400015fe:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001603:	4c 89 c0             	mov    %r8,%rax
   140001606:	75 f0                	jne    1400015f8 <__do_global_ctors+0x58>
   140001608:	eb ad                	jmp    1400015b7 <__do_global_ctors+0x17>
   14000160a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001610 <__main>:
   140001610:	8b 05 2a 5a 00 00    	mov    0x5a2a(%rip),%eax        # 140007040 <initialized>
   140001616:	85 c0                	test   %eax,%eax
   140001618:	74 06                	je     140001620 <__main+0x10>
   14000161a:	c3                   	ret    
   14000161b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001620:	c7 05 16 5a 00 00 01 	movl   $0x1,0x5a16(%rip)        # 140007040 <initialized>
   140001627:	00 00 00 
   14000162a:	e9 71 ff ff ff       	jmp    1400015a0 <__do_global_ctors>
   14000162f:	90                   	nop

0000000140001630 <my_lconv_init>:
   140001630:	48 ff 25 bd 6b 00 00 	rex.W jmp *0x6bbd(%rip)        # 1400081f4 <__imp___lconv_init>
   140001637:	90                   	nop
   140001638:	90                   	nop
   140001639:	90                   	nop
   14000163a:	90                   	nop
   14000163b:	90                   	nop
   14000163c:	90                   	nop
   14000163d:	90                   	nop
   14000163e:	90                   	nop
   14000163f:	90                   	nop

0000000140001640 <_setargv>:
   140001640:	31 c0                	xor    %eax,%eax
   140001642:	c3                   	ret    
   140001643:	90                   	nop
   140001644:	90                   	nop
   140001645:	90                   	nop
   140001646:	90                   	nop
   140001647:	90                   	nop
   140001648:	90                   	nop
   140001649:	90                   	nop
   14000164a:	90                   	nop
   14000164b:	90                   	nop
   14000164c:	90                   	nop
   14000164d:	90                   	nop
   14000164e:	90                   	nop
   14000164f:	90                   	nop

0000000140001650 <__dyn_tls_dtor>:
   140001650:	48 83 ec 28          	sub    $0x28,%rsp
   140001654:	83 fa 03             	cmp    $0x3,%edx
   140001657:	74 17                	je     140001670 <__dyn_tls_dtor+0x20>
   140001659:	85 d2                	test   %edx,%edx
   14000165b:	74 13                	je     140001670 <__dyn_tls_dtor+0x20>
   14000165d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001662:	48 83 c4 28          	add    $0x28,%rsp
   140001666:	c3                   	ret    
   140001667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000166e:	00 00 
   140001670:	e8 eb 09 00 00       	call   140002060 <__mingw_TLScallback>
   140001675:	b8 01 00 00 00       	mov    $0x1,%eax
   14000167a:	48 83 c4 28          	add    $0x28,%rsp
   14000167e:	c3                   	ret    
   14000167f:	90                   	nop

0000000140001680 <__dyn_tls_init>:
   140001680:	56                   	push   %rsi
   140001681:	53                   	push   %rbx
   140001682:	48 83 ec 28          	sub    $0x28,%rsp
   140001686:	48 8b 05 53 2c 00 00 	mov    0x2c53(%rip),%rax        # 1400042e0 <.refptr._CRT_MT>
   14000168d:	83 38 02             	cmpl   $0x2,(%rax)
   140001690:	74 06                	je     140001698 <__dyn_tls_init+0x18>
   140001692:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001698:	83 fa 02             	cmp    $0x2,%edx
   14000169b:	74 13                	je     1400016b0 <__dyn_tls_init+0x30>
   14000169d:	83 fa 01             	cmp    $0x1,%edx
   1400016a0:	74 4e                	je     1400016f0 <__dyn_tls_init+0x70>
   1400016a2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016a7:	48 83 c4 28          	add    $0x28,%rsp
   1400016ab:	5b                   	pop    %rbx
   1400016ac:	5e                   	pop    %rsi
   1400016ad:	c3                   	ret    
   1400016ae:	66 90                	xchg   %ax,%ax
   1400016b0:	48 8d 1d a9 79 00 00 	lea    0x79a9(%rip),%rbx        # 140009060 <__xd_z>
   1400016b7:	48 8d 35 a2 79 00 00 	lea    0x79a2(%rip),%rsi        # 140009060 <__xd_z>
   1400016be:	48 39 de             	cmp    %rbx,%rsi
   1400016c1:	74 df                	je     1400016a2 <__dyn_tls_init+0x22>
   1400016c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016c8:	48 8b 03             	mov    (%rbx),%rax
   1400016cb:	48 85 c0             	test   %rax,%rax
   1400016ce:	74 02                	je     1400016d2 <__dyn_tls_init+0x52>
   1400016d0:	ff d0                	call   *%rax
   1400016d2:	48 83 c3 08          	add    $0x8,%rbx
   1400016d6:	48 39 de             	cmp    %rbx,%rsi
   1400016d9:	75 ed                	jne    1400016c8 <__dyn_tls_init+0x48>
   1400016db:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016e0:	48 83 c4 28          	add    $0x28,%rsp
   1400016e4:	5b                   	pop    %rbx
   1400016e5:	5e                   	pop    %rsi
   1400016e6:	c3                   	ret    
   1400016e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400016ee:	00 00 
   1400016f0:	e8 6b 09 00 00       	call   140002060 <__mingw_TLScallback>
   1400016f5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016fa:	48 83 c4 28          	add    $0x28,%rsp
   1400016fe:	5b                   	pop    %rbx
   1400016ff:	5e                   	pop    %rsi
   140001700:	c3                   	ret    
   140001701:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001708:	00 00 00 00 
   14000170c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001710 <__tlregdtor>:
   140001710:	31 c0                	xor    %eax,%eax
   140001712:	c3                   	ret    
   140001713:	90                   	nop
   140001714:	90                   	nop
   140001715:	90                   	nop
   140001716:	90                   	nop
   140001717:	90                   	nop
   140001718:	90                   	nop
   140001719:	90                   	nop
   14000171a:	90                   	nop
   14000171b:	90                   	nop
   14000171c:	90                   	nop
   14000171d:	90                   	nop
   14000171e:	90                   	nop
   14000171f:	90                   	nop

0000000140001720 <_matherr>:
   140001720:	56                   	push   %rsi
   140001721:	53                   	push   %rbx
   140001722:	48 83 ec 78          	sub    $0x78,%rsp
   140001726:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000172b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001730:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001736:	83 39 06             	cmpl   $0x6,(%rcx)
   140001739:	0f 87 cd 00 00 00    	ja     14000180c <_matherr+0xec>
   14000173f:	8b 01                	mov    (%rcx),%eax
   140001741:	48 8d 15 3c 2a 00 00 	lea    0x2a3c(%rip),%rdx        # 140004184 <.rdata+0x124>
   140001748:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000174c:	48 01 d0             	add    %rdx,%rax
   14000174f:	ff e0                	jmp    *%rax
   140001751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001758:	48 8d 1d 20 29 00 00 	lea    0x2920(%rip),%rbx        # 14000407f <.rdata+0x1f>
   14000175f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001765:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000176a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000176f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001773:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001778:	e8 a3 0e 00 00       	call   140002620 <__acrt_iob_func>
   14000177d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001784:	49 89 d8             	mov    %rbx,%r8
   140001787:	48 8d 15 ca 29 00 00 	lea    0x29ca(%rip),%rdx        # 140004158 <.rdata+0xf8>
   14000178e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001794:	48 89 c1             	mov    %rax,%rcx
   140001797:	49 89 f1             	mov    %rsi,%r9
   14000179a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017a0:	e8 0b 0e 00 00       	call   1400025b0 <fprintf>
   1400017a5:	90                   	nop
   1400017a6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400017ab:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400017b0:	31 c0                	xor    %eax,%eax
   1400017b2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400017b8:	48 83 c4 78          	add    $0x78,%rsp
   1400017bc:	5b                   	pop    %rbx
   1400017bd:	5e                   	pop    %rsi
   1400017be:	c3                   	ret    
   1400017bf:	90                   	nop
   1400017c0:	48 8d 1d 99 28 00 00 	lea    0x2899(%rip),%rbx        # 140004060 <.rdata>
   1400017c7:	eb 96                	jmp    14000175f <_matherr+0x3f>
   1400017c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017d0:	48 8d 1d e9 28 00 00 	lea    0x28e9(%rip),%rbx        # 1400040c0 <.rdata+0x60>
   1400017d7:	eb 86                	jmp    14000175f <_matherr+0x3f>
   1400017d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017e0:	48 8d 1d b9 28 00 00 	lea    0x28b9(%rip),%rbx        # 1400040a0 <.rdata+0x40>
   1400017e7:	e9 73 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   1400017ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017f0:	48 8d 1d 19 29 00 00 	lea    0x2919(%rip),%rbx        # 140004110 <.rdata+0xb0>
   1400017f7:	e9 63 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   1400017fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001800:	48 8d 1d e1 28 00 00 	lea    0x28e1(%rip),%rbx        # 1400040e8 <.rdata+0x88>
   140001807:	e9 53 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   14000180c:	48 8d 1d 33 29 00 00 	lea    0x2933(%rip),%rbx        # 140004146 <.rdata+0xe6>
   140001813:	e9 47 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   140001818:	90                   	nop
   140001819:	90                   	nop
   14000181a:	90                   	nop
   14000181b:	90                   	nop
   14000181c:	90                   	nop
   14000181d:	90                   	nop
   14000181e:	90                   	nop
   14000181f:	90                   	nop

0000000140001820 <_fpreset>:
   140001820:	db e3                	fninit 
   140001822:	c3                   	ret    
   140001823:	90                   	nop
   140001824:	90                   	nop
   140001825:	90                   	nop
   140001826:	90                   	nop
   140001827:	90                   	nop
   140001828:	90                   	nop
   140001829:	90                   	nop
   14000182a:	90                   	nop
   14000182b:	90                   	nop
   14000182c:	90                   	nop
   14000182d:	90                   	nop
   14000182e:	90                   	nop
   14000182f:	90                   	nop

0000000140001830 <__report_error>:
   140001830:	41 54                	push   %r12
   140001832:	53                   	push   %rbx
   140001833:	48 83 ec 38          	sub    $0x38,%rsp
   140001837:	49 89 cc             	mov    %rcx,%r12
   14000183a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000183f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001844:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001849:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000184e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001853:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001858:	e8 c3 0d 00 00       	call   140002620 <__acrt_iob_func>
   14000185d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001863:	ba 01 00 00 00       	mov    $0x1,%edx
   140001868:	48 8d 0d 31 29 00 00 	lea    0x2931(%rip),%rcx        # 1400041a0 <.rdata>
   14000186f:	49 89 c1             	mov    %rax,%r9
   140001872:	e8 29 0d 00 00       	call   1400025a0 <fwrite>
   140001877:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000187c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001881:	e8 9a 0d 00 00       	call   140002620 <__acrt_iob_func>
   140001886:	4c 89 e2             	mov    %r12,%rdx
   140001889:	48 89 c1             	mov    %rax,%rcx
   14000188c:	49 89 d8             	mov    %rbx,%r8
   14000188f:	e8 dc 0c 00 00       	call   140002570 <vfprintf>
   140001894:	e8 2f 0d 00 00       	call   1400025c8 <abort>
   140001899:	90                   	nop
   14000189a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400018a0 <mark_section_writable>:
   1400018a0:	41 54                	push   %r12
   1400018a2:	56                   	push   %rsi
   1400018a3:	53                   	push   %rbx
   1400018a4:	48 83 ec 50          	sub    $0x50,%rsp
   1400018a8:	48 63 1d 05 58 00 00 	movslq 0x5805(%rip),%rbx        # 1400070b4 <maxSections>
   1400018af:	49 89 cc             	mov    %rcx,%r12
   1400018b2:	85 db                	test   %ebx,%ebx
   1400018b4:	0f 8e 16 01 00 00    	jle    1400019d0 <mark_section_writable+0x130>
   1400018ba:	48 8b 05 f7 57 00 00 	mov    0x57f7(%rip),%rax        # 1400070b8 <the_secs>
   1400018c1:	45 31 c9             	xor    %r9d,%r9d
   1400018c4:	48 83 c0 18          	add    $0x18,%rax
   1400018c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400018cf:	00 
   1400018d0:	4c 8b 00             	mov    (%rax),%r8
   1400018d3:	4d 39 e0             	cmp    %r12,%r8
   1400018d6:	77 13                	ja     1400018eb <mark_section_writable+0x4b>
   1400018d8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400018dc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400018df:	49 01 d0             	add    %rdx,%r8
   1400018e2:	4d 39 c4             	cmp    %r8,%r12
   1400018e5:	0f 82 8a 00 00 00    	jb     140001975 <mark_section_writable+0xd5>
   1400018eb:	41 83 c1 01          	add    $0x1,%r9d
   1400018ef:	48 83 c0 28          	add    $0x28,%rax
   1400018f3:	41 39 d9             	cmp    %ebx,%r9d
   1400018f6:	75 d8                	jne    1400018d0 <mark_section_writable+0x30>
   1400018f8:	4c 89 e1             	mov    %r12,%rcx
   1400018fb:	e8 70 09 00 00       	call   140002270 <__mingw_GetSectionForAddress>
   140001900:	48 89 c6             	mov    %rax,%rsi
   140001903:	48 85 c0             	test   %rax,%rax
   140001906:	0f 84 e6 00 00 00    	je     1400019f2 <mark_section_writable+0x152>
   14000190c:	48 8b 05 a5 57 00 00 	mov    0x57a5(%rip),%rax        # 1400070b8 <the_secs>
   140001913:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001917:	48 c1 e3 03          	shl    $0x3,%rbx
   14000191b:	48 01 d8             	add    %rbx,%rax
   14000191e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140001922:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001928:	e8 73 0a 00 00       	call   1400023a0 <_GetPEImageBase>
   14000192d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140001930:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001936:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000193a:	48 8b 05 77 57 00 00 	mov    0x5777(%rip),%rax        # 1400070b8 <the_secs>
   140001941:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001946:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000194b:	ff 15 73 68 00 00    	call   *0x6873(%rip)        # 1400081c4 <__imp_VirtualQuery>
   140001951:	48 85 c0             	test   %rax,%rax
   140001954:	0f 84 7d 00 00 00    	je     1400019d7 <mark_section_writable+0x137>
   14000195a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000195e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001961:	83 e2 bf             	and    $0xffffffbf,%edx
   140001964:	74 08                	je     14000196e <mark_section_writable+0xce>
   140001966:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001969:	83 e2 fb             	and    $0xfffffffb,%edx
   14000196c:	75 12                	jne    140001980 <mark_section_writable+0xe0>
   14000196e:	83 05 3f 57 00 00 01 	addl   $0x1,0x573f(%rip)        # 1400070b4 <maxSections>
   140001975:	48 83 c4 50          	add    $0x50,%rsp
   140001979:	5b                   	pop    %rbx
   14000197a:	5e                   	pop    %rsi
   14000197b:	41 5c                	pop    %r12
   14000197d:	c3                   	ret    
   14000197e:	66 90                	xchg   %ax,%ax
   140001980:	83 f8 02             	cmp    $0x2,%eax
   140001983:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001988:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000198d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001993:	b8 40 00 00 00       	mov    $0x40,%eax
   140001998:	44 0f 45 c0          	cmovne %eax,%r8d
   14000199c:	48 03 1d 15 57 00 00 	add    0x5715(%rip),%rbx        # 1400070b8 <the_secs>
   1400019a3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400019a7:	49 89 d9             	mov    %rbx,%r9
   1400019aa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400019ae:	ff 15 08 68 00 00    	call   *0x6808(%rip)        # 1400081bc <__imp_VirtualProtect>
   1400019b4:	85 c0                	test   %eax,%eax
   1400019b6:	75 b6                	jne    14000196e <mark_section_writable+0xce>
   1400019b8:	ff 15 c6 67 00 00    	call   *0x67c6(%rip)        # 140008184 <__imp_GetLastError>
   1400019be:	48 8d 0d 53 28 00 00 	lea    0x2853(%rip),%rcx        # 140004218 <.rdata+0x78>
   1400019c5:	89 c2                	mov    %eax,%edx
   1400019c7:	e8 64 fe ff ff       	call   140001830 <__report_error>
   1400019cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019d0:	31 db                	xor    %ebx,%ebx
   1400019d2:	e9 21 ff ff ff       	jmp    1400018f8 <mark_section_writable+0x58>
   1400019d7:	48 8b 05 da 56 00 00 	mov    0x56da(%rip),%rax        # 1400070b8 <the_secs>
   1400019de:	8b 56 08             	mov    0x8(%rsi),%edx
   1400019e1:	48 8d 0d f8 27 00 00 	lea    0x27f8(%rip),%rcx        # 1400041e0 <.rdata+0x40>
   1400019e8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400019ed:	e8 3e fe ff ff       	call   140001830 <__report_error>
   1400019f2:	4c 89 e2             	mov    %r12,%rdx
   1400019f5:	48 8d 0d c4 27 00 00 	lea    0x27c4(%rip),%rcx        # 1400041c0 <.rdata+0x20>
   1400019fc:	e8 2f fe ff ff       	call   140001830 <__report_error>
   140001a01:	90                   	nop
   140001a02:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001a09:	00 00 00 00 
   140001a0d:	0f 1f 00             	nopl   (%rax)

0000000140001a10 <_pei386_runtime_relocator>:
   140001a10:	55                   	push   %rbp
   140001a11:	41 57                	push   %r15
   140001a13:	41 56                	push   %r14
   140001a15:	41 55                	push   %r13
   140001a17:	41 54                	push   %r12
   140001a19:	57                   	push   %rdi
   140001a1a:	56                   	push   %rsi
   140001a1b:	53                   	push   %rbx
   140001a1c:	48 83 ec 38          	sub    $0x38,%rsp
   140001a20:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140001a25:	8b 3d 85 56 00 00    	mov    0x5685(%rip),%edi        # 1400070b0 <was_init.0>
   140001a2b:	85 ff                	test   %edi,%edi
   140001a2d:	74 11                	je     140001a40 <_pei386_runtime_relocator+0x30>
   140001a2f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a33:	5b                   	pop    %rbx
   140001a34:	5e                   	pop    %rsi
   140001a35:	5f                   	pop    %rdi
   140001a36:	41 5c                	pop    %r12
   140001a38:	41 5d                	pop    %r13
   140001a3a:	41 5e                	pop    %r14
   140001a3c:	41 5f                	pop    %r15
   140001a3e:	5d                   	pop    %rbp
   140001a3f:	c3                   	ret    
   140001a40:	c7 05 66 56 00 00 01 	movl   $0x1,0x5666(%rip)        # 1400070b0 <was_init.0>
   140001a47:	00 00 00 
   140001a4a:	e8 a1 08 00 00       	call   1400022f0 <__mingw_GetSectionCount>
   140001a4f:	48 98                	cltq   
   140001a51:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a55:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a5c:	00 
   140001a5d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a61:	e8 ca 0a 00 00       	call   140002530 <___chkstk_ms>
   140001a66:	4c 8b 25 a3 28 00 00 	mov    0x28a3(%rip),%r12        # 140004310 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a6d:	48 8b 1d ac 28 00 00 	mov    0x28ac(%rip),%rbx        # 140004320 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a74:	c7 05 36 56 00 00 00 	movl   $0x0,0x5636(%rip)        # 1400070b4 <maxSections>
   140001a7b:	00 00 00 
   140001a7e:	48 29 c4             	sub    %rax,%rsp
   140001a81:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001a86:	48 89 05 2b 56 00 00 	mov    %rax,0x562b(%rip)        # 1400070b8 <the_secs>
   140001a8d:	4c 89 e0             	mov    %r12,%rax
   140001a90:	48 29 d8             	sub    %rbx,%rax
   140001a93:	48 83 f8 07          	cmp    $0x7,%rax
   140001a97:	7e 96                	jle    140001a2f <_pei386_runtime_relocator+0x1f>
   140001a99:	8b 13                	mov    (%rbx),%edx
   140001a9b:	48 83 f8 0b          	cmp    $0xb,%rax
   140001a9f:	0f 8f 33 01 00 00    	jg     140001bd8 <_pei386_runtime_relocator+0x1c8>
   140001aa5:	8b 03                	mov    (%rbx),%eax
   140001aa7:	85 c0                	test   %eax,%eax
   140001aa9:	0f 85 a1 01 00 00    	jne    140001c50 <_pei386_runtime_relocator+0x240>
   140001aaf:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ab2:	85 c0                	test   %eax,%eax
   140001ab4:	0f 85 96 01 00 00    	jne    140001c50 <_pei386_runtime_relocator+0x240>
   140001aba:	8b 53 08             	mov    0x8(%rbx),%edx
   140001abd:	83 fa 01             	cmp    $0x1,%edx
   140001ac0:	0f 85 cb 01 00 00    	jne    140001c91 <_pei386_runtime_relocator+0x281>
   140001ac6:	48 83 c3 0c          	add    $0xc,%rbx
   140001aca:	4c 39 e3             	cmp    %r12,%rbx
   140001acd:	0f 83 5c ff ff ff    	jae    140001a2f <_pei386_runtime_relocator+0x1f>
   140001ad3:	4c 8b 2d 66 28 00 00 	mov    0x2866(%rip),%r13        # 140004340 <.refptr.__image_base__>
   140001ada:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
   140001ae1:	ff ff ff 
   140001ae4:	eb 38                	jmp    140001b1e <_pei386_runtime_relocator+0x10e>
   140001ae6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001aed:	00 00 00 
   140001af0:	0f b6 16             	movzbl (%rsi),%edx
   140001af3:	49 89 d1             	mov    %rdx,%r9
   140001af6:	49 81 c9 00 ff ff ff 	or     $0xffffffffffffff00,%r9
   140001afd:	84 d2                	test   %dl,%dl
   140001aff:	49 0f 48 d1          	cmovs  %r9,%rdx
   140001b03:	48 29 c2             	sub    %rax,%rdx
   140001b06:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001b0a:	48 89 f1             	mov    %rsi,%rcx
   140001b0d:	e8 8e fd ff ff       	call   1400018a0 <mark_section_writable>
   140001b12:	44 88 3e             	mov    %r15b,(%rsi)
   140001b15:	48 83 c3 0c          	add    $0xc,%rbx
   140001b19:	4c 39 e3             	cmp    %r12,%rbx
   140001b1c:	73 62                	jae    140001b80 <_pei386_runtime_relocator+0x170>
   140001b1e:	8b 03                	mov    (%rbx),%eax
   140001b20:	8b 73 04             	mov    0x4(%rbx),%esi
   140001b23:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
   140001b27:	4c 01 e8             	add    %r13,%rax
   140001b2a:	4c 01 ee             	add    %r13,%rsi
   140001b2d:	48 8b 08             	mov    (%rax),%rcx
   140001b30:	83 fa 20             	cmp    $0x20,%edx
   140001b33:	0f 84 e7 00 00 00    	je     140001c20 <_pei386_runtime_relocator+0x210>
   140001b39:	0f 87 b9 00 00 00    	ja     140001bf8 <_pei386_runtime_relocator+0x1e8>
   140001b3f:	83 fa 08             	cmp    $0x8,%edx
   140001b42:	74 ac                	je     140001af0 <_pei386_runtime_relocator+0xe0>
   140001b44:	83 fa 10             	cmp    $0x10,%edx
   140001b47:	0f 85 38 01 00 00    	jne    140001c85 <_pei386_runtime_relocator+0x275>
   140001b4d:	0f b7 16             	movzwl (%rsi),%edx
   140001b50:	49 89 d1             	mov    %rdx,%r9
   140001b53:	49 81 c9 00 00 ff ff 	or     $0xffffffffffff0000,%r9
   140001b5a:	66 85 d2             	test   %dx,%dx
   140001b5d:	49 0f 48 d1          	cmovs  %r9,%rdx
   140001b61:	48 83 c3 0c          	add    $0xc,%rbx
   140001b65:	48 29 c2             	sub    %rax,%rdx
   140001b68:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001b6c:	48 89 f1             	mov    %rsi,%rcx
   140001b6f:	e8 2c fd ff ff       	call   1400018a0 <mark_section_writable>
   140001b74:	66 44 89 3e          	mov    %r15w,(%rsi)
   140001b78:	4c 39 e3             	cmp    %r12,%rbx
   140001b7b:	72 a1                	jb     140001b1e <_pei386_runtime_relocator+0x10e>
   140001b7d:	0f 1f 00             	nopl   (%rax)
   140001b80:	8b 15 2e 55 00 00    	mov    0x552e(%rip),%edx        # 1400070b4 <maxSections>
   140001b86:	85 d2                	test   %edx,%edx
   140001b88:	0f 8e a1 fe ff ff    	jle    140001a2f <_pei386_runtime_relocator+0x1f>
   140001b8e:	48 8b 35 27 66 00 00 	mov    0x6627(%rip),%rsi        # 1400081bc <__imp_VirtualProtect>
   140001b95:	31 db                	xor    %ebx,%ebx
   140001b97:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ba0:	48 8b 05 11 55 00 00 	mov    0x5511(%rip),%rax        # 1400070b8 <the_secs>
   140001ba7:	48 01 d8             	add    %rbx,%rax
   140001baa:	44 8b 00             	mov    (%rax),%r8d
   140001bad:	45 85 c0             	test   %r8d,%r8d
   140001bb0:	74 0d                	je     140001bbf <_pei386_runtime_relocator+0x1af>
   140001bb2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001bb6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001bba:	4d 89 e1             	mov    %r12,%r9
   140001bbd:	ff d6                	call   *%rsi
   140001bbf:	83 c7 01             	add    $0x1,%edi
   140001bc2:	48 83 c3 28          	add    $0x28,%rbx
   140001bc6:	3b 3d e8 54 00 00    	cmp    0x54e8(%rip),%edi        # 1400070b4 <maxSections>
   140001bcc:	7c d2                	jl     140001ba0 <_pei386_runtime_relocator+0x190>
   140001bce:	e9 5c fe ff ff       	jmp    140001a2f <_pei386_runtime_relocator+0x1f>
   140001bd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bd8:	85 d2                	test   %edx,%edx
   140001bda:	75 74                	jne    140001c50 <_pei386_runtime_relocator+0x240>
   140001bdc:	8b 43 04             	mov    0x4(%rbx),%eax
   140001bdf:	89 c1                	mov    %eax,%ecx
   140001be1:	0b 4b 08             	or     0x8(%rbx),%ecx
   140001be4:	0f 85 c8 fe ff ff    	jne    140001ab2 <_pei386_runtime_relocator+0xa2>
   140001bea:	48 83 c3 0c          	add    $0xc,%rbx
   140001bee:	e9 b2 fe ff ff       	jmp    140001aa5 <_pei386_runtime_relocator+0x95>
   140001bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bf8:	83 fa 40             	cmp    $0x40,%edx
   140001bfb:	0f 85 84 00 00 00    	jne    140001c85 <_pei386_runtime_relocator+0x275>
   140001c01:	4c 8b 3e             	mov    (%rsi),%r15
   140001c04:	49 29 c7             	sub    %rax,%r15
   140001c07:	49 01 cf             	add    %rcx,%r15
   140001c0a:	48 89 f1             	mov    %rsi,%rcx
   140001c0d:	e8 8e fc ff ff       	call   1400018a0 <mark_section_writable>
   140001c12:	4c 89 3e             	mov    %r15,(%rsi)
   140001c15:	e9 fb fe ff ff       	jmp    140001b15 <_pei386_runtime_relocator+0x105>
   140001c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001c20:	8b 16                	mov    (%rsi),%edx
   140001c22:	49 89 d0             	mov    %rdx,%r8
   140001c25:	4c 09 f2             	or     %r14,%rdx
   140001c28:	45 85 c0             	test   %r8d,%r8d
   140001c2b:	49 0f 49 d0          	cmovns %r8,%rdx
   140001c2f:	48 29 c2             	sub    %rax,%rdx
   140001c32:	4c 8d 3c 0a          	lea    (%rdx,%rcx,1),%r15
   140001c36:	48 89 f1             	mov    %rsi,%rcx
   140001c39:	e8 62 fc ff ff       	call   1400018a0 <mark_section_writable>
   140001c3e:	44 89 3e             	mov    %r15d,(%rsi)
   140001c41:	e9 cf fe ff ff       	jmp    140001b15 <_pei386_runtime_relocator+0x105>
   140001c46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c4d:	00 00 00 
   140001c50:	4c 39 e3             	cmp    %r12,%rbx
   140001c53:	0f 83 d6 fd ff ff    	jae    140001a2f <_pei386_runtime_relocator+0x1f>
   140001c59:	4c 8b 35 e0 26 00 00 	mov    0x26e0(%rip),%r14        # 140004340 <.refptr.__image_base__>
   140001c60:	8b 73 04             	mov    0x4(%rbx),%esi
   140001c63:	44 8b 2b             	mov    (%rbx),%r13d
   140001c66:	48 83 c3 08          	add    $0x8,%rbx
   140001c6a:	4c 01 f6             	add    %r14,%rsi
   140001c6d:	44 03 2e             	add    (%rsi),%r13d
   140001c70:	48 89 f1             	mov    %rsi,%rcx
   140001c73:	e8 28 fc ff ff       	call   1400018a0 <mark_section_writable>
   140001c78:	44 89 2e             	mov    %r13d,(%rsi)
   140001c7b:	4c 39 e3             	cmp    %r12,%rbx
   140001c7e:	72 e0                	jb     140001c60 <_pei386_runtime_relocator+0x250>
   140001c80:	e9 fb fe ff ff       	jmp    140001b80 <_pei386_runtime_relocator+0x170>
   140001c85:	48 8d 0d ec 25 00 00 	lea    0x25ec(%rip),%rcx        # 140004278 <.rdata+0xd8>
   140001c8c:	e8 9f fb ff ff       	call   140001830 <__report_error>
   140001c91:	48 8d 0d a8 25 00 00 	lea    0x25a8(%rip),%rcx        # 140004240 <.rdata+0xa0>
   140001c98:	e8 93 fb ff ff       	call   140001830 <__report_error>
   140001c9d:	90                   	nop
   140001c9e:	90                   	nop
   140001c9f:	90                   	nop

0000000140001ca0 <__mingw_raise_matherr>:
   140001ca0:	48 83 ec 58          	sub    $0x58,%rsp
   140001ca4:	48 8b 05 15 54 00 00 	mov    0x5415(%rip),%rax        # 1400070c0 <stUserMathErr>
   140001cab:	48 85 c0             	test   %rax,%rax
   140001cae:	74 2c                	je     140001cdc <__mingw_raise_matherr+0x3c>
   140001cb0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001cb7:	00 00 
   140001cb9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001cbd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001cc2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001cc7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001ccd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001cd3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001cd9:	ff d0                	call   *%rax
   140001cdb:	90                   	nop
   140001cdc:	48 83 c4 58          	add    $0x58,%rsp
   140001ce0:	c3                   	ret    
   140001ce1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001ce8:	00 00 00 00 
   140001cec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001cf0 <__mingw_setusermatherr>:
   140001cf0:	48 89 0d c9 53 00 00 	mov    %rcx,0x53c9(%rip)        # 1400070c0 <stUserMathErr>
   140001cf7:	e9 f4 08 00 00       	jmp    1400025f0 <__setusermatherr>
   140001cfc:	90                   	nop
   140001cfd:	90                   	nop
   140001cfe:	90                   	nop
   140001cff:	90                   	nop

0000000140001d00 <_gnu_exception_handler>:
   140001d00:	41 54                	push   %r12
   140001d02:	48 83 ec 20          	sub    $0x20,%rsp
   140001d06:	48 8b 11             	mov    (%rcx),%rdx
   140001d09:	8b 02                	mov    (%rdx),%eax
   140001d0b:	49 89 cc             	mov    %rcx,%r12
   140001d0e:	89 c1                	mov    %eax,%ecx
   140001d10:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d16:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d1c:	0f 84 be 00 00 00    	je     140001de0 <_gnu_exception_handler+0xe0>
   140001d22:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d27:	0f 87 9a 00 00 00    	ja     140001dc7 <_gnu_exception_handler+0xc7>
   140001d2d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d32:	76 44                	jbe    140001d78 <_gnu_exception_handler+0x78>
   140001d34:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d39:	83 f8 09             	cmp    $0x9,%eax
   140001d3c:	77 2a                	ja     140001d68 <_gnu_exception_handler+0x68>
   140001d3e:	48 8d 15 6b 25 00 00 	lea    0x256b(%rip),%rdx        # 1400042b0 <.rdata>
   140001d45:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d49:	48 01 d0             	add    %rdx,%rax
   140001d4c:	ff e0                	jmp    *%rax
   140001d4e:	66 90                	xchg   %ax,%ax
   140001d50:	ba 01 00 00 00       	mov    $0x1,%edx
   140001d55:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001d5a:	e8 29 08 00 00       	call   140002588 <signal>
   140001d5f:	e8 bc fa ff ff       	call   140001820 <_fpreset>
   140001d64:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d68:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001d6d:	48 83 c4 20          	add    $0x20,%rsp
   140001d71:	41 5c                	pop    %r12
   140001d73:	c3                   	ret    
   140001d74:	0f 1f 40 00          	nopl   0x0(%rax)
   140001d78:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001d7d:	0f 84 dd 00 00 00    	je     140001e60 <_gnu_exception_handler+0x160>
   140001d83:	76 3b                	jbe    140001dc0 <_gnu_exception_handler+0xc0>
   140001d85:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001d8a:	74 dc                	je     140001d68 <_gnu_exception_handler+0x68>
   140001d8c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001d91:	75 34                	jne    140001dc7 <_gnu_exception_handler+0xc7>
   140001d93:	31 d2                	xor    %edx,%edx
   140001d95:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001d9a:	e8 e9 07 00 00       	call   140002588 <signal>
   140001d9f:	48 83 f8 01          	cmp    $0x1,%rax
   140001da3:	0f 84 e3 00 00 00    	je     140001e8c <_gnu_exception_handler+0x18c>
   140001da9:	48 85 c0             	test   %rax,%rax
   140001dac:	74 19                	je     140001dc7 <_gnu_exception_handler+0xc7>
   140001dae:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001db3:	ff d0                	call   *%rax
   140001db5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001dba:	eb b1                	jmp    140001d6d <_gnu_exception_handler+0x6d>
   140001dbc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001dc0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001dc5:	74 a1                	je     140001d68 <_gnu_exception_handler+0x68>
   140001dc7:	48 8b 05 12 53 00 00 	mov    0x5312(%rip),%rax        # 1400070e0 <__mingw_oldexcpt_handler>
   140001dce:	48 85 c0             	test   %rax,%rax
   140001dd1:	74 1d                	je     140001df0 <_gnu_exception_handler+0xf0>
   140001dd3:	4c 89 e1             	mov    %r12,%rcx
   140001dd6:	48 83 c4 20          	add    $0x20,%rsp
   140001dda:	41 5c                	pop    %r12
   140001ddc:	48 ff e0             	rex.W jmp *%rax
   140001ddf:	90                   	nop
   140001de0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001de4:	0f 85 38 ff ff ff    	jne    140001d22 <_gnu_exception_handler+0x22>
   140001dea:	e9 79 ff ff ff       	jmp    140001d68 <_gnu_exception_handler+0x68>
   140001def:	90                   	nop
   140001df0:	31 c0                	xor    %eax,%eax
   140001df2:	48 83 c4 20          	add    $0x20,%rsp
   140001df6:	41 5c                	pop    %r12
   140001df8:	c3                   	ret    
   140001df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001e00:	31 d2                	xor    %edx,%edx
   140001e02:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e07:	e8 7c 07 00 00       	call   140002588 <signal>
   140001e0c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e10:	0f 84 3a ff ff ff    	je     140001d50 <_gnu_exception_handler+0x50>
   140001e16:	48 85 c0             	test   %rax,%rax
   140001e19:	74 ac                	je     140001dc7 <_gnu_exception_handler+0xc7>
   140001e1b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e20:	ff d0                	call   *%rax
   140001e22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e27:	e9 41 ff ff ff       	jmp    140001d6d <_gnu_exception_handler+0x6d>
   140001e2c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e30:	31 d2                	xor    %edx,%edx
   140001e32:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e37:	e8 4c 07 00 00       	call   140002588 <signal>
   140001e3c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e40:	75 d4                	jne    140001e16 <_gnu_exception_handler+0x116>
   140001e42:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e47:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e4c:	e8 37 07 00 00       	call   140002588 <signal>
   140001e51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e56:	e9 12 ff ff ff       	jmp    140001d6d <_gnu_exception_handler+0x6d>
   140001e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001e60:	31 d2                	xor    %edx,%edx
   140001e62:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e67:	e8 1c 07 00 00       	call   140002588 <signal>
   140001e6c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e70:	74 31                	je     140001ea3 <_gnu_exception_handler+0x1a3>
   140001e72:	48 85 c0             	test   %rax,%rax
   140001e75:	0f 84 4c ff ff ff    	je     140001dc7 <_gnu_exception_handler+0xc7>
   140001e7b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e80:	ff d0                	call   *%rax
   140001e82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e87:	e9 e1 fe ff ff       	jmp    140001d6d <_gnu_exception_handler+0x6d>
   140001e8c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e91:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e96:	e8 ed 06 00 00       	call   140002588 <signal>
   140001e9b:	83 c8 ff             	or     $0xffffffff,%eax
   140001e9e:	e9 ca fe ff ff       	jmp    140001d6d <_gnu_exception_handler+0x6d>
   140001ea3:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ea8:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ead:	e8 d6 06 00 00       	call   140002588 <signal>
   140001eb2:	83 c8 ff             	or     $0xffffffff,%eax
   140001eb5:	e9 b3 fe ff ff       	jmp    140001d6d <_gnu_exception_handler+0x6d>
   140001eba:	90                   	nop
   140001ebb:	90                   	nop
   140001ebc:	90                   	nop
   140001ebd:	90                   	nop
   140001ebe:	90                   	nop
   140001ebf:	90                   	nop

0000000140001ec0 <__mingwthr_run_key_dtors.part.0>:
   140001ec0:	41 55                	push   %r13
   140001ec2:	41 54                	push   %r12
   140001ec4:	57                   	push   %rdi
   140001ec5:	56                   	push   %rsi
   140001ec6:	53                   	push   %rbx
   140001ec7:	48 83 ec 20          	sub    $0x20,%rsp
   140001ecb:	4c 8d 2d 4e 52 00 00 	lea    0x524e(%rip),%r13        # 140007120 <__mingwthr_cs>
   140001ed2:	4c 89 e9             	mov    %r13,%rcx
   140001ed5:	ff 15 a1 62 00 00    	call   *0x62a1(%rip)        # 14000817c <__imp_EnterCriticalSection>
   140001edb:	48 8b 1d 1e 52 00 00 	mov    0x521e(%rip),%rbx        # 140007100 <key_dtor_list>
   140001ee2:	48 85 db             	test   %rbx,%rbx
   140001ee5:	74 35                	je     140001f1c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001ee7:	48 8b 3d c6 62 00 00 	mov    0x62c6(%rip),%rdi        # 1400081b4 <__imp_TlsGetValue>
   140001eee:	48 8b 35 8f 62 00 00 	mov    0x628f(%rip),%rsi        # 140008184 <__imp_GetLastError>
   140001ef5:	0f 1f 00             	nopl   (%rax)
   140001ef8:	8b 0b                	mov    (%rbx),%ecx
   140001efa:	ff d7                	call   *%rdi
   140001efc:	49 89 c4             	mov    %rax,%r12
   140001eff:	ff d6                	call   *%rsi
   140001f01:	85 c0                	test   %eax,%eax
   140001f03:	75 0e                	jne    140001f13 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f05:	4d 85 e4             	test   %r12,%r12
   140001f08:	74 09                	je     140001f13 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f0a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001f0e:	4c 89 e1             	mov    %r12,%rcx
   140001f11:	ff d0                	call   *%rax
   140001f13:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001f17:	48 85 db             	test   %rbx,%rbx
   140001f1a:	75 dc                	jne    140001ef8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f1c:	4c 89 e9             	mov    %r13,%rcx
   140001f1f:	48 83 c4 20          	add    $0x20,%rsp
   140001f23:	5b                   	pop    %rbx
   140001f24:	5e                   	pop    %rsi
   140001f25:	5f                   	pop    %rdi
   140001f26:	41 5c                	pop    %r12
   140001f28:	41 5d                	pop    %r13
   140001f2a:	48 ff 25 6b 62 00 00 	rex.W jmp *0x626b(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   140001f31:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001f38:	00 00 00 00 
   140001f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001f40 <___w64_mingwthr_add_key_dtor>:
   140001f40:	41 54                	push   %r12
   140001f42:	57                   	push   %rdi
   140001f43:	56                   	push   %rsi
   140001f44:	53                   	push   %rbx
   140001f45:	48 83 ec 28          	sub    $0x28,%rsp
   140001f49:	8b 05 b9 51 00 00    	mov    0x51b9(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140001f4f:	89 cf                	mov    %ecx,%edi
   140001f51:	48 89 d6             	mov    %rdx,%rsi
   140001f54:	85 c0                	test   %eax,%eax
   140001f56:	75 10                	jne    140001f68 <___w64_mingwthr_add_key_dtor+0x28>
   140001f58:	48 83 c4 28          	add    $0x28,%rsp
   140001f5c:	5b                   	pop    %rbx
   140001f5d:	5e                   	pop    %rsi
   140001f5e:	5f                   	pop    %rdi
   140001f5f:	41 5c                	pop    %r12
   140001f61:	c3                   	ret    
   140001f62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001f68:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f6d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f72:	e8 49 06 00 00       	call   1400025c0 <calloc>
   140001f77:	48 89 c3             	mov    %rax,%rbx
   140001f7a:	48 85 c0             	test   %rax,%rax
   140001f7d:	74 3d                	je     140001fbc <___w64_mingwthr_add_key_dtor+0x7c>
   140001f7f:	4c 8d 25 9a 51 00 00 	lea    0x519a(%rip),%r12        # 140007120 <__mingwthr_cs>
   140001f86:	89 38                	mov    %edi,(%rax)
   140001f88:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001f8c:	4c 89 e1             	mov    %r12,%rcx
   140001f8f:	ff 15 e7 61 00 00    	call   *0x61e7(%rip)        # 14000817c <__imp_EnterCriticalSection>
   140001f95:	48 8b 05 64 51 00 00 	mov    0x5164(%rip),%rax        # 140007100 <key_dtor_list>
   140001f9c:	4c 89 e1             	mov    %r12,%rcx
   140001f9f:	48 89 1d 5a 51 00 00 	mov    %rbx,0x515a(%rip)        # 140007100 <key_dtor_list>
   140001fa6:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001faa:	ff 15 ec 61 00 00    	call   *0x61ec(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   140001fb0:	31 c0                	xor    %eax,%eax
   140001fb2:	48 83 c4 28          	add    $0x28,%rsp
   140001fb6:	5b                   	pop    %rbx
   140001fb7:	5e                   	pop    %rsi
   140001fb8:	5f                   	pop    %rdi
   140001fb9:	41 5c                	pop    %r12
   140001fbb:	c3                   	ret    
   140001fbc:	83 c8 ff             	or     $0xffffffff,%eax
   140001fbf:	eb 97                	jmp    140001f58 <___w64_mingwthr_add_key_dtor+0x18>
   140001fc1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001fc8:	00 00 00 00 
   140001fcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001fd0 <___w64_mingwthr_remove_key_dtor>:
   140001fd0:	41 54                	push   %r12
   140001fd2:	53                   	push   %rbx
   140001fd3:	48 83 ec 28          	sub    $0x28,%rsp
   140001fd7:	8b 05 2b 51 00 00    	mov    0x512b(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140001fdd:	89 cb                	mov    %ecx,%ebx
   140001fdf:	85 c0                	test   %eax,%eax
   140001fe1:	75 0d                	jne    140001ff0 <___w64_mingwthr_remove_key_dtor+0x20>
   140001fe3:	31 c0                	xor    %eax,%eax
   140001fe5:	48 83 c4 28          	add    $0x28,%rsp
   140001fe9:	5b                   	pop    %rbx
   140001fea:	41 5c                	pop    %r12
   140001fec:	c3                   	ret    
   140001fed:	0f 1f 00             	nopl   (%rax)
   140001ff0:	4c 8d 25 29 51 00 00 	lea    0x5129(%rip),%r12        # 140007120 <__mingwthr_cs>
   140001ff7:	4c 89 e1             	mov    %r12,%rcx
   140001ffa:	ff 15 7c 61 00 00    	call   *0x617c(%rip)        # 14000817c <__imp_EnterCriticalSection>
   140002000:	48 8b 0d f9 50 00 00 	mov    0x50f9(%rip),%rcx        # 140007100 <key_dtor_list>
   140002007:	48 85 c9             	test   %rcx,%rcx
   14000200a:	74 27                	je     140002033 <___w64_mingwthr_remove_key_dtor+0x63>
   14000200c:	31 d2                	xor    %edx,%edx
   14000200e:	eb 0b                	jmp    14000201b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002010:	48 89 ca             	mov    %rcx,%rdx
   140002013:	48 85 c0             	test   %rax,%rax
   140002016:	74 1b                	je     140002033 <___w64_mingwthr_remove_key_dtor+0x63>
   140002018:	48 89 c1             	mov    %rax,%rcx
   14000201b:	8b 01                	mov    (%rcx),%eax
   14000201d:	39 d8                	cmp    %ebx,%eax
   14000201f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002023:	75 eb                	jne    140002010 <___w64_mingwthr_remove_key_dtor+0x40>
   140002025:	48 85 d2             	test   %rdx,%rdx
   140002028:	74 26                	je     140002050 <___w64_mingwthr_remove_key_dtor+0x80>
   14000202a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000202e:	e8 75 05 00 00       	call   1400025a8 <free>
   140002033:	4c 89 e1             	mov    %r12,%rcx
   140002036:	ff 15 60 61 00 00    	call   *0x6160(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   14000203c:	31 c0                	xor    %eax,%eax
   14000203e:	48 83 c4 28          	add    $0x28,%rsp
   140002042:	5b                   	pop    %rbx
   140002043:	41 5c                	pop    %r12
   140002045:	c3                   	ret    
   140002046:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000204d:	00 00 00 
   140002050:	48 89 05 a9 50 00 00 	mov    %rax,0x50a9(%rip)        # 140007100 <key_dtor_list>
   140002057:	eb d5                	jmp    14000202e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002059:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002060 <__mingw_TLScallback>:
   140002060:	53                   	push   %rbx
   140002061:	48 83 ec 20          	sub    $0x20,%rsp
   140002065:	83 fa 02             	cmp    $0x2,%edx
   140002068:	74 46                	je     1400020b0 <__mingw_TLScallback+0x50>
   14000206a:	77 2c                	ja     140002098 <__mingw_TLScallback+0x38>
   14000206c:	85 d2                	test   %edx,%edx
   14000206e:	74 50                	je     1400020c0 <__mingw_TLScallback+0x60>
   140002070:	8b 05 92 50 00 00    	mov    0x5092(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002076:	85 c0                	test   %eax,%eax
   140002078:	0f 84 b2 00 00 00    	je     140002130 <__mingw_TLScallback+0xd0>
   14000207e:	c7 05 80 50 00 00 01 	movl   $0x1,0x5080(%rip)        # 140007108 <__mingwthr_cs_init>
   140002085:	00 00 00 
   140002088:	b8 01 00 00 00       	mov    $0x1,%eax
   14000208d:	48 83 c4 20          	add    $0x20,%rsp
   140002091:	5b                   	pop    %rbx
   140002092:	c3                   	ret    
   140002093:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002098:	83 fa 03             	cmp    $0x3,%edx
   14000209b:	75 eb                	jne    140002088 <__mingw_TLScallback+0x28>
   14000209d:	8b 05 65 50 00 00    	mov    0x5065(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400020a3:	85 c0                	test   %eax,%eax
   1400020a5:	74 e1                	je     140002088 <__mingw_TLScallback+0x28>
   1400020a7:	e8 14 fe ff ff       	call   140001ec0 <__mingwthr_run_key_dtors.part.0>
   1400020ac:	eb da                	jmp    140002088 <__mingw_TLScallback+0x28>
   1400020ae:	66 90                	xchg   %ax,%ax
   1400020b0:	e8 6b f7 ff ff       	call   140001820 <_fpreset>
   1400020b5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020ba:	48 83 c4 20          	add    $0x20,%rsp
   1400020be:	5b                   	pop    %rbx
   1400020bf:	c3                   	ret    
   1400020c0:	8b 05 42 50 00 00    	mov    0x5042(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400020c6:	85 c0                	test   %eax,%eax
   1400020c8:	75 56                	jne    140002120 <__mingw_TLScallback+0xc0>
   1400020ca:	8b 05 38 50 00 00    	mov    0x5038(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400020d0:	83 f8 01             	cmp    $0x1,%eax
   1400020d3:	75 b3                	jne    140002088 <__mingw_TLScallback+0x28>
   1400020d5:	48 8b 1d 24 50 00 00 	mov    0x5024(%rip),%rbx        # 140007100 <key_dtor_list>
   1400020dc:	48 85 db             	test   %rbx,%rbx
   1400020df:	74 18                	je     1400020f9 <__mingw_TLScallback+0x99>
   1400020e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020e8:	48 89 d9             	mov    %rbx,%rcx
   1400020eb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400020ef:	e8 b4 04 00 00       	call   1400025a8 <free>
   1400020f4:	48 85 db             	test   %rbx,%rbx
   1400020f7:	75 ef                	jne    1400020e8 <__mingw_TLScallback+0x88>
   1400020f9:	48 8d 0d 20 50 00 00 	lea    0x5020(%rip),%rcx        # 140007120 <__mingwthr_cs>
   140002100:	48 c7 05 f5 4f 00 00 	movq   $0x0,0x4ff5(%rip)        # 140007100 <key_dtor_list>
   140002107:	00 00 00 00 
   14000210b:	c7 05 f3 4f 00 00 00 	movl   $0x0,0x4ff3(%rip)        # 140007108 <__mingwthr_cs_init>
   140002112:	00 00 00 
   140002115:	ff 15 59 60 00 00    	call   *0x6059(%rip)        # 140008174 <__IAT_start__>
   14000211b:	e9 68 ff ff ff       	jmp    140002088 <__mingw_TLScallback+0x28>
   140002120:	e8 9b fd ff ff       	call   140001ec0 <__mingwthr_run_key_dtors.part.0>
   140002125:	eb a3                	jmp    1400020ca <__mingw_TLScallback+0x6a>
   140002127:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000212e:	00 00 
   140002130:	48 8d 0d e9 4f 00 00 	lea    0x4fe9(%rip),%rcx        # 140007120 <__mingwthr_cs>
   140002137:	ff 15 57 60 00 00    	call   *0x6057(%rip)        # 140008194 <__imp_InitializeCriticalSection>
   14000213d:	e9 3c ff ff ff       	jmp    14000207e <__mingw_TLScallback+0x1e>
   140002142:	90                   	nop
   140002143:	90                   	nop
   140002144:	90                   	nop
   140002145:	90                   	nop
   140002146:	90                   	nop
   140002147:	90                   	nop
   140002148:	90                   	nop
   140002149:	90                   	nop
   14000214a:	90                   	nop
   14000214b:	90                   	nop
   14000214c:	90                   	nop
   14000214d:	90                   	nop
   14000214e:	90                   	nop
   14000214f:	90                   	nop

0000000140002150 <_ValidateImageBase>:
   140002150:	31 c0                	xor    %eax,%eax
   140002152:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002157:	75 0f                	jne    140002168 <_ValidateImageBase+0x18>
   140002159:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000215d:	48 01 d1             	add    %rdx,%rcx
   140002160:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002166:	74 08                	je     140002170 <_ValidateImageBase+0x20>
   140002168:	c3                   	ret    
   140002169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002170:	31 c0                	xor    %eax,%eax
   140002172:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002178:	0f 94 c0             	sete   %al
   14000217b:	c3                   	ret    
   14000217c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002180 <_FindPESection>:
   140002180:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002184:	48 01 c1             	add    %rax,%rcx
   140002187:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000218b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002190:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002194:	85 c9                	test   %ecx,%ecx
   140002196:	74 2d                	je     1400021c5 <_FindPESection+0x45>
   140002198:	83 e9 01             	sub    $0x1,%ecx
   14000219b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000219f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400021a4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400021a8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021ac:	4c 89 c1             	mov    %r8,%rcx
   1400021af:	49 39 d0             	cmp    %rdx,%r8
   1400021b2:	77 08                	ja     1400021bc <_FindPESection+0x3c>
   1400021b4:	03 48 08             	add    0x8(%rax),%ecx
   1400021b7:	48 39 d1             	cmp    %rdx,%rcx
   1400021ba:	77 0b                	ja     1400021c7 <_FindPESection+0x47>
   1400021bc:	48 83 c0 28          	add    $0x28,%rax
   1400021c0:	4c 39 c8             	cmp    %r9,%rax
   1400021c3:	75 e3                	jne    1400021a8 <_FindPESection+0x28>
   1400021c5:	31 c0                	xor    %eax,%eax
   1400021c7:	c3                   	ret    
   1400021c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021cf:	00 

00000001400021d0 <_FindPESectionByName>:
   1400021d0:	41 54                	push   %r12
   1400021d2:	56                   	push   %rsi
   1400021d3:	53                   	push   %rbx
   1400021d4:	48 83 ec 20          	sub    $0x20,%rsp
   1400021d8:	48 89 cb             	mov    %rcx,%rbx
   1400021db:	e8 a0 03 00 00       	call   140002580 <strlen>
   1400021e0:	48 83 f8 08          	cmp    $0x8,%rax
   1400021e4:	77 7a                	ja     140002260 <_FindPESectionByName+0x90>
   1400021e6:	48 8b 15 53 21 00 00 	mov    0x2153(%rip),%rdx        # 140004340 <.refptr.__image_base__>
   1400021ed:	45 31 e4             	xor    %r12d,%r12d
   1400021f0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400021f5:	75 57                	jne    14000224e <_FindPESectionByName+0x7e>
   1400021f7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400021fb:	48 01 d0             	add    %rdx,%rax
   1400021fe:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002204:	75 48                	jne    14000224e <_FindPESectionByName+0x7e>
   140002206:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000220c:	75 40                	jne    14000224e <_FindPESectionByName+0x7e>
   14000220e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002212:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002217:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   14000221b:	85 c0                	test   %eax,%eax
   14000221d:	74 41                	je     140002260 <_FindPESectionByName+0x90>
   14000221f:	83 e8 01             	sub    $0x1,%eax
   140002222:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002226:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   14000222b:	eb 0c                	jmp    140002239 <_FindPESectionByName+0x69>
   14000222d:	0f 1f 00             	nopl   (%rax)
   140002230:	49 83 c4 28          	add    $0x28,%r12
   140002234:	49 39 f4             	cmp    %rsi,%r12
   140002237:	74 27                	je     140002260 <_FindPESectionByName+0x90>
   140002239:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000223f:	48 89 da             	mov    %rbx,%rdx
   140002242:	4c 89 e1             	mov    %r12,%rcx
   140002245:	e8 2e 03 00 00       	call   140002578 <strncmp>
   14000224a:	85 c0                	test   %eax,%eax
   14000224c:	75 e2                	jne    140002230 <_FindPESectionByName+0x60>
   14000224e:	4c 89 e0             	mov    %r12,%rax
   140002251:	48 83 c4 20          	add    $0x20,%rsp
   140002255:	5b                   	pop    %rbx
   140002256:	5e                   	pop    %rsi
   140002257:	41 5c                	pop    %r12
   140002259:	c3                   	ret    
   14000225a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002260:	45 31 e4             	xor    %r12d,%r12d
   140002263:	4c 89 e0             	mov    %r12,%rax
   140002266:	48 83 c4 20          	add    $0x20,%rsp
   14000226a:	5b                   	pop    %rbx
   14000226b:	5e                   	pop    %rsi
   14000226c:	41 5c                	pop    %r12
   14000226e:	c3                   	ret    
   14000226f:	90                   	nop

0000000140002270 <__mingw_GetSectionForAddress>:
   140002270:	48 8b 15 c9 20 00 00 	mov    0x20c9(%rip),%rdx        # 140004340 <.refptr.__image_base__>
   140002277:	31 c0                	xor    %eax,%eax
   140002279:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000227e:	75 10                	jne    140002290 <__mingw_GetSectionForAddress+0x20>
   140002280:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002284:	49 01 d0             	add    %rdx,%r8
   140002287:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000228e:	74 08                	je     140002298 <__mingw_GetSectionForAddress+0x28>
   140002290:	c3                   	ret    
   140002291:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002298:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000229f:	75 ef                	jne    140002290 <__mingw_GetSectionForAddress+0x20>
   1400022a1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400022a6:	48 29 d1             	sub    %rdx,%rcx
   1400022a9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   1400022ae:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400022b3:	85 d2                	test   %edx,%edx
   1400022b5:	74 2e                	je     1400022e5 <__mingw_GetSectionForAddress+0x75>
   1400022b7:	83 ea 01             	sub    $0x1,%edx
   1400022ba:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022be:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400022c8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022cc:	4c 89 c2             	mov    %r8,%rdx
   1400022cf:	4c 39 c1             	cmp    %r8,%rcx
   1400022d2:	72 08                	jb     1400022dc <__mingw_GetSectionForAddress+0x6c>
   1400022d4:	03 50 08             	add    0x8(%rax),%edx
   1400022d7:	48 39 d1             	cmp    %rdx,%rcx
   1400022da:	72 b4                	jb     140002290 <__mingw_GetSectionForAddress+0x20>
   1400022dc:	48 83 c0 28          	add    $0x28,%rax
   1400022e0:	4c 39 c8             	cmp    %r9,%rax
   1400022e3:	75 e3                	jne    1400022c8 <__mingw_GetSectionForAddress+0x58>
   1400022e5:	31 c0                	xor    %eax,%eax
   1400022e7:	c3                   	ret    
   1400022e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400022ef:	00 

00000001400022f0 <__mingw_GetSectionCount>:
   1400022f0:	48 8b 05 49 20 00 00 	mov    0x2049(%rip),%rax        # 140004340 <.refptr.__image_base__>
   1400022f7:	45 31 c0             	xor    %r8d,%r8d
   1400022fa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400022ff:	75 0f                	jne    140002310 <__mingw_GetSectionCount+0x20>
   140002301:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002305:	48 01 d0             	add    %rdx,%rax
   140002308:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000230e:	74 08                	je     140002318 <__mingw_GetSectionCount+0x28>
   140002310:	44 89 c0             	mov    %r8d,%eax
   140002313:	c3                   	ret    
   140002314:	0f 1f 40 00          	nopl   0x0(%rax)
   140002318:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000231e:	75 f0                	jne    140002310 <__mingw_GetSectionCount+0x20>
   140002320:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002325:	44 89 c0             	mov    %r8d,%eax
   140002328:	c3                   	ret    
   140002329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002330 <_FindPESectionExec>:
   140002330:	4c 8b 05 09 20 00 00 	mov    0x2009(%rip),%r8        # 140004340 <.refptr.__image_base__>
   140002337:	31 c0                	xor    %eax,%eax
   140002339:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000233f:	75 0f                	jne    140002350 <_FindPESectionExec+0x20>
   140002341:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002345:	4c 01 c2             	add    %r8,%rdx
   140002348:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000234e:	74 08                	je     140002358 <_FindPESectionExec+0x28>
   140002350:	c3                   	ret    
   140002351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002358:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000235e:	75 f0                	jne    140002350 <_FindPESectionExec+0x20>
   140002360:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002364:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002369:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000236d:	85 d2                	test   %edx,%edx
   14000236f:	74 27                	je     140002398 <_FindPESectionExec+0x68>
   140002371:	83 ea 01             	sub    $0x1,%edx
   140002374:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002378:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000237d:	0f 1f 00             	nopl   (%rax)
   140002380:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002384:	74 09                	je     14000238f <_FindPESectionExec+0x5f>
   140002386:	48 85 c9             	test   %rcx,%rcx
   140002389:	74 c5                	je     140002350 <_FindPESectionExec+0x20>
   14000238b:	48 83 e9 01          	sub    $0x1,%rcx
   14000238f:	48 83 c0 28          	add    $0x28,%rax
   140002393:	48 39 d0             	cmp    %rdx,%rax
   140002396:	75 e8                	jne    140002380 <_FindPESectionExec+0x50>
   140002398:	31 c0                	xor    %eax,%eax
   14000239a:	c3                   	ret    
   14000239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000001400023a0 <_GetPEImageBase>:
   1400023a0:	48 8b 05 99 1f 00 00 	mov    0x1f99(%rip),%rax        # 140004340 <.refptr.__image_base__>
   1400023a7:	45 31 c0             	xor    %r8d,%r8d
   1400023aa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023af:	75 0f                	jne    1400023c0 <_GetPEImageBase+0x20>
   1400023b1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400023b5:	48 01 c2             	add    %rax,%rdx
   1400023b8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400023be:	74 08                	je     1400023c8 <_GetPEImageBase+0x28>
   1400023c0:	4c 89 c0             	mov    %r8,%rax
   1400023c3:	c3                   	ret    
   1400023c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400023c8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400023ce:	4c 0f 44 c0          	cmove  %rax,%r8
   1400023d2:	4c 89 c0             	mov    %r8,%rax
   1400023d5:	c3                   	ret    
   1400023d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023dd:	00 00 00 

00000001400023e0 <_IsNonwritableInCurrentImage>:
   1400023e0:	48 8b 15 59 1f 00 00 	mov    0x1f59(%rip),%rdx        # 140004340 <.refptr.__image_base__>
   1400023e7:	31 c0                	xor    %eax,%eax
   1400023e9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400023ee:	75 10                	jne    140002400 <_IsNonwritableInCurrentImage+0x20>
   1400023f0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400023f4:	49 01 d0             	add    %rdx,%r8
   1400023f7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400023fe:	74 08                	je     140002408 <_IsNonwritableInCurrentImage+0x28>
   140002400:	c3                   	ret    
   140002401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002408:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000240f:	75 ef                	jne    140002400 <_IsNonwritableInCurrentImage+0x20>
   140002411:	48 29 d1             	sub    %rdx,%rcx
   140002414:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002419:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000241e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002423:	45 85 c0             	test   %r8d,%r8d
   140002426:	74 d8                	je     140002400 <_IsNonwritableInCurrentImage+0x20>
   140002428:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   14000242c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002430:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002435:	0f 1f 00             	nopl   (%rax)
   140002438:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   14000243c:	4c 89 c0             	mov    %r8,%rax
   14000243f:	4c 39 c1             	cmp    %r8,%rcx
   140002442:	72 08                	jb     14000244c <_IsNonwritableInCurrentImage+0x6c>
   140002444:	03 42 08             	add    0x8(%rdx),%eax
   140002447:	48 39 c1             	cmp    %rax,%rcx
   14000244a:	72 14                	jb     140002460 <_IsNonwritableInCurrentImage+0x80>
   14000244c:	48 83 c2 28          	add    $0x28,%rdx
   140002450:	4c 39 ca             	cmp    %r9,%rdx
   140002453:	75 e3                	jne    140002438 <_IsNonwritableInCurrentImage+0x58>
   140002455:	31 c0                	xor    %eax,%eax
   140002457:	c3                   	ret    
   140002458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000245f:	00 
   140002460:	8b 42 24             	mov    0x24(%rdx),%eax
   140002463:	f7 d0                	not    %eax
   140002465:	c1 e8 1f             	shr    $0x1f,%eax
   140002468:	c3                   	ret    
   140002469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002470 <__mingw_enum_import_library_names>:
   140002470:	4c 8b 1d c9 1e 00 00 	mov    0x1ec9(%rip),%r11        # 140004340 <.refptr.__image_base__>
   140002477:	45 31 c9             	xor    %r9d,%r9d
   14000247a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002480:	75 10                	jne    140002492 <__mingw_enum_import_library_names+0x22>
   140002482:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002486:	4d 01 d8             	add    %r11,%r8
   140002489:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002490:	74 0e                	je     1400024a0 <__mingw_enum_import_library_names+0x30>
   140002492:	4c 89 c8             	mov    %r9,%rax
   140002495:	c3                   	ret    
   140002496:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000249d:	00 00 00 
   1400024a0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024a7:	75 e9                	jne    140002492 <__mingw_enum_import_library_names+0x22>
   1400024a9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024b0:	85 c0                	test   %eax,%eax
   1400024b2:	74 de                	je     140002492 <__mingw_enum_import_library_names+0x22>
   1400024b4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024b9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024be:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400024c3:	45 85 c0             	test   %r8d,%r8d
   1400024c6:	74 ca                	je     140002492 <__mingw_enum_import_library_names+0x22>
   1400024c8:	41 83 e8 01          	sub    $0x1,%r8d
   1400024cc:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024d0:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024d5:	0f 1f 00             	nopl   (%rax)
   1400024d8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400024dc:	4d 89 c8             	mov    %r9,%r8
   1400024df:	4c 39 c8             	cmp    %r9,%rax
   1400024e2:	72 09                	jb     1400024ed <__mingw_enum_import_library_names+0x7d>
   1400024e4:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400024e8:	4c 39 c0             	cmp    %r8,%rax
   1400024eb:	72 13                	jb     140002500 <__mingw_enum_import_library_names+0x90>
   1400024ed:	48 83 c2 28          	add    $0x28,%rdx
   1400024f1:	49 39 d2             	cmp    %rdx,%r10
   1400024f4:	75 e2                	jne    1400024d8 <__mingw_enum_import_library_names+0x68>
   1400024f6:	45 31 c9             	xor    %r9d,%r9d
   1400024f9:	4c 89 c8             	mov    %r9,%rax
   1400024fc:	c3                   	ret    
   1400024fd:	0f 1f 00             	nopl   (%rax)
   140002500:	4c 01 d8             	add    %r11,%rax
   140002503:	eb 0a                	jmp    14000250f <__mingw_enum_import_library_names+0x9f>
   140002505:	0f 1f 00             	nopl   (%rax)
   140002508:	83 e9 01             	sub    $0x1,%ecx
   14000250b:	48 83 c0 14          	add    $0x14,%rax
   14000250f:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002513:	45 85 c0             	test   %r8d,%r8d
   140002516:	75 07                	jne    14000251f <__mingw_enum_import_library_names+0xaf>
   140002518:	8b 50 0c             	mov    0xc(%rax),%edx
   14000251b:	85 d2                	test   %edx,%edx
   14000251d:	74 d7                	je     1400024f6 <__mingw_enum_import_library_names+0x86>
   14000251f:	85 c9                	test   %ecx,%ecx
   140002521:	7f e5                	jg     140002508 <__mingw_enum_import_library_names+0x98>
   140002523:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002527:	4d 01 d9             	add    %r11,%r9
   14000252a:	4c 89 c8             	mov    %r9,%rax
   14000252d:	c3                   	ret    
   14000252e:	90                   	nop
   14000252f:	90                   	nop

0000000140002530 <___chkstk_ms>:
   140002530:	51                   	push   %rcx
   140002531:	50                   	push   %rax
   140002532:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002538:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000253d:	72 19                	jb     140002558 <___chkstk_ms+0x28>
   14000253f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002546:	48 83 09 00          	orq    $0x0,(%rcx)
   14000254a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002550:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002556:	77 e7                	ja     14000253f <___chkstk_ms+0xf>
   140002558:	48 29 c1             	sub    %rax,%rcx
   14000255b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000255f:	58                   	pop    %rax
   140002560:	59                   	pop    %rcx
   140002561:	c3                   	ret    
   140002562:	90                   	nop
   140002563:	90                   	nop
   140002564:	90                   	nop
   140002565:	90                   	nop
   140002566:	90                   	nop
   140002567:	90                   	nop
   140002568:	90                   	nop
   140002569:	90                   	nop
   14000256a:	90                   	nop
   14000256b:	90                   	nop
   14000256c:	90                   	nop
   14000256d:	90                   	nop
   14000256e:	90                   	nop
   14000256f:	90                   	nop

0000000140002570 <vfprintf>:
   140002570:	ff 25 26 5d 00 00    	jmp    *0x5d26(%rip)        # 14000829c <__imp_vfprintf>
   140002576:	90                   	nop
   140002577:	90                   	nop

0000000140002578 <strncmp>:
   140002578:	ff 25 16 5d 00 00    	jmp    *0x5d16(%rip)        # 140008294 <__imp_strncmp>
   14000257e:	90                   	nop
   14000257f:	90                   	nop

0000000140002580 <strlen>:
   140002580:	ff 25 06 5d 00 00    	jmp    *0x5d06(%rip)        # 14000828c <__imp_strlen>
   140002586:	90                   	nop
   140002587:	90                   	nop

0000000140002588 <signal>:
   140002588:	ff 25 f6 5c 00 00    	jmp    *0x5cf6(%rip)        # 140008284 <__imp_signal>
   14000258e:	90                   	nop
   14000258f:	90                   	nop

0000000140002590 <memcpy>:
   140002590:	ff 25 e6 5c 00 00    	jmp    *0x5ce6(%rip)        # 14000827c <__imp_memcpy>
   140002596:	90                   	nop
   140002597:	90                   	nop

0000000140002598 <malloc>:
   140002598:	ff 25 d6 5c 00 00    	jmp    *0x5cd6(%rip)        # 140008274 <__imp_malloc>
   14000259e:	90                   	nop
   14000259f:	90                   	nop

00000001400025a0 <fwrite>:
   1400025a0:	ff 25 c6 5c 00 00    	jmp    *0x5cc6(%rip)        # 14000826c <__imp_fwrite>
   1400025a6:	90                   	nop
   1400025a7:	90                   	nop

00000001400025a8 <free>:
   1400025a8:	ff 25 b6 5c 00 00    	jmp    *0x5cb6(%rip)        # 140008264 <__imp_free>
   1400025ae:	90                   	nop
   1400025af:	90                   	nop

00000001400025b0 <fprintf>:
   1400025b0:	ff 25 a6 5c 00 00    	jmp    *0x5ca6(%rip)        # 14000825c <__imp_fprintf>
   1400025b6:	90                   	nop
   1400025b7:	90                   	nop

00000001400025b8 <exit>:
   1400025b8:	ff 25 96 5c 00 00    	jmp    *0x5c96(%rip)        # 140008254 <__imp_exit>
   1400025be:	90                   	nop
   1400025bf:	90                   	nop

00000001400025c0 <calloc>:
   1400025c0:	ff 25 86 5c 00 00    	jmp    *0x5c86(%rip)        # 14000824c <__imp_calloc>
   1400025c6:	90                   	nop
   1400025c7:	90                   	nop

00000001400025c8 <abort>:
   1400025c8:	ff 25 76 5c 00 00    	jmp    *0x5c76(%rip)        # 140008244 <__imp_abort>
   1400025ce:	90                   	nop
   1400025cf:	90                   	nop

00000001400025d0 <_onexit>:
   1400025d0:	ff 25 66 5c 00 00    	jmp    *0x5c66(%rip)        # 14000823c <__imp__onexit>
   1400025d6:	90                   	nop
   1400025d7:	90                   	nop

00000001400025d8 <_initterm>:
   1400025d8:	ff 25 56 5c 00 00    	jmp    *0x5c56(%rip)        # 140008234 <__imp__initterm>
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <_cexit>:
   1400025e0:	ff 25 36 5c 00 00    	jmp    *0x5c36(%rip)        # 14000821c <__imp__cexit>
   1400025e6:	90                   	nop
   1400025e7:	90                   	nop

00000001400025e8 <_amsg_exit>:
   1400025e8:	ff 25 26 5c 00 00    	jmp    *0x5c26(%rip)        # 140008214 <__imp__amsg_exit>
   1400025ee:	90                   	nop
   1400025ef:	90                   	nop

00000001400025f0 <__setusermatherr>:
   1400025f0:	ff 25 0e 5c 00 00    	jmp    *0x5c0e(%rip)        # 140008204 <__imp___setusermatherr>
   1400025f6:	90                   	nop
   1400025f7:	90                   	nop

00000001400025f8 <__set_app_type>:
   1400025f8:	ff 25 fe 5b 00 00    	jmp    *0x5bfe(%rip)        # 1400081fc <__imp___set_app_type>
   1400025fe:	90                   	nop
   1400025ff:	90                   	nop

0000000140002600 <__lconv_init>:
   140002600:	ff 25 ee 5b 00 00    	jmp    *0x5bee(%rip)        # 1400081f4 <__imp___lconv_init>
   140002606:	90                   	nop
   140002607:	90                   	nop

0000000140002608 <__getmainargs>:
   140002608:	ff 25 ce 5b 00 00    	jmp    *0x5bce(%rip)        # 1400081dc <__imp___getmainargs>
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <__C_specific_handler>:
   140002610:	ff 25 be 5b 00 00    	jmp    *0x5bbe(%rip)        # 1400081d4 <__imp___C_specific_handler>
   140002616:	90                   	nop
   140002617:	90                   	nop
   140002618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000261f:	00 

0000000140002620 <__acrt_iob_func>:
   140002620:	53                   	push   %rbx
   140002621:	48 83 ec 20          	sub    $0x20,%rsp
   140002625:	89 cb                	mov    %ecx,%ebx
   140002627:	e8 64 00 00 00       	call   140002690 <__iob_func>
   14000262c:	89 d9                	mov    %ebx,%ecx
   14000262e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002632:	48 c1 e2 04          	shl    $0x4,%rdx
   140002636:	48 01 d0             	add    %rdx,%rax
   140002639:	48 83 c4 20          	add    $0x20,%rsp
   14000263d:	5b                   	pop    %rbx
   14000263e:	c3                   	ret    
   14000263f:	90                   	nop

0000000140002640 <_get_invalid_parameter_handler>:
   140002640:	48 8b 05 49 4b 00 00 	mov    0x4b49(%rip),%rax        # 140007190 <handler>
   140002647:	c3                   	ret    
   140002648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000264f:	00 

0000000140002650 <_set_invalid_parameter_handler>:
   140002650:	48 89 c8             	mov    %rcx,%rax
   140002653:	48 87 05 36 4b 00 00 	xchg   %rax,0x4b36(%rip)        # 140007190 <handler>
   14000265a:	c3                   	ret    
   14000265b:	90                   	nop
   14000265c:	90                   	nop
   14000265d:	90                   	nop
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <__p__acmdln>:
   140002660:	48 8b 05 f9 1c 00 00 	mov    0x1cf9(%rip),%rax        # 140004360 <.refptr.__imp__acmdln>
   140002667:	48 8b 00             	mov    (%rax),%rax
   14000266a:	c3                   	ret    
   14000266b:	90                   	nop
   14000266c:	90                   	nop
   14000266d:	90                   	nop
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <__p__commode>:
   140002670:	48 8b 05 f9 1c 00 00 	mov    0x1cf9(%rip),%rax        # 140004370 <.refptr.__imp__commode>
   140002677:	48 8b 00             	mov    (%rax),%rax
   14000267a:	c3                   	ret    
   14000267b:	90                   	nop
   14000267c:	90                   	nop
   14000267d:	90                   	nop
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <__p__fmode>:
   140002680:	48 8b 05 f9 1c 00 00 	mov    0x1cf9(%rip),%rax        # 140004380 <.refptr.__imp__fmode>
   140002687:	48 8b 00             	mov    (%rax),%rax
   14000268a:	c3                   	ret    
   14000268b:	90                   	nop
   14000268c:	90                   	nop
   14000268d:	90                   	nop
   14000268e:	90                   	nop
   14000268f:	90                   	nop

0000000140002690 <__iob_func>:
   140002690:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 1400081ec <__imp___iob_func>
   140002696:	90                   	nop
   140002697:	90                   	nop
   140002698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000269f:	00 

00000001400026a0 <VirtualQuery>:
   1400026a0:	ff 25 1e 5b 00 00    	jmp    *0x5b1e(%rip)        # 1400081c4 <__imp_VirtualQuery>
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop

00000001400026a8 <VirtualProtect>:
   1400026a8:	ff 25 0e 5b 00 00    	jmp    *0x5b0e(%rip)        # 1400081bc <__imp_VirtualProtect>
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <TlsGetValue>:
   1400026b0:	ff 25 fe 5a 00 00    	jmp    *0x5afe(%rip)        # 1400081b4 <__imp_TlsGetValue>
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop

00000001400026b8 <Sleep>:
   1400026b8:	ff 25 ee 5a 00 00    	jmp    *0x5aee(%rip)        # 1400081ac <__imp_Sleep>
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <SetUnhandledExceptionFilter>:
   1400026c0:	ff 25 de 5a 00 00    	jmp    *0x5ade(%rip)        # 1400081a4 <__imp_SetUnhandledExceptionFilter>
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop

00000001400026c8 <LeaveCriticalSection>:
   1400026c8:	ff 25 ce 5a 00 00    	jmp    *0x5ace(%rip)        # 14000819c <__imp_LeaveCriticalSection>
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <InitializeCriticalSection>:
   1400026d0:	ff 25 be 5a 00 00    	jmp    *0x5abe(%rip)        # 140008194 <__imp_InitializeCriticalSection>
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop

00000001400026d8 <GetStartupInfoA>:
   1400026d8:	ff 25 ae 5a 00 00    	jmp    *0x5aae(%rip)        # 14000818c <__imp_GetStartupInfoA>
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <GetLastError>:
   1400026e0:	ff 25 9e 5a 00 00    	jmp    *0x5a9e(%rip)        # 140008184 <__imp_GetLastError>
   1400026e6:	90                   	nop
   1400026e7:	90                   	nop

00000001400026e8 <EnterCriticalSection>:
   1400026e8:	ff 25 8e 5a 00 00    	jmp    *0x5a8e(%rip)        # 14000817c <__imp_EnterCriticalSection>
   1400026ee:	90                   	nop
   1400026ef:	90                   	nop

00000001400026f0 <DeleteCriticalSection>:
   1400026f0:	ff 25 7e 5a 00 00    	jmp    *0x5a7e(%rip)        # 140008174 <__IAT_start__>
   1400026f6:	90                   	nop
   1400026f7:	90                   	nop
   1400026f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400026ff:	00 

0000000140002700 <register_frame_ctor>:
   140002700:	e9 1b ee ff ff       	jmp    140001520 <__gcc_register_frame>
   140002705:	90                   	nop
   140002706:	90                   	nop
   140002707:	90                   	nop
   140002708:	90                   	nop
   140002709:	90                   	nop
   14000270a:	90                   	nop
   14000270b:	90                   	nop
   14000270c:	90                   	nop
   14000270d:	90                   	nop
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <__CTOR_LIST__>:
   140002710:	ff                   	(bad)  
   140002711:	ff                   	(bad)  
   140002712:	ff                   	(bad)  
   140002713:	ff                   	(bad)  
   140002714:	ff                   	(bad)  
   140002715:	ff                   	(bad)  
   140002716:	ff                   	(bad)  
   140002717:	ff                   	.byte 0xff

0000000140002718 <.ctors.65535>:
   140002718:	00 27                	add    %ah,(%rdi)
   14000271a:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002728 <__DTOR_LIST__>:
   140002728:	ff                   	(bad)  
   140002729:	ff                   	(bad)  
   14000272a:	ff                   	(bad)  
   14000272b:	ff                   	(bad)  
   14000272c:	ff                   	(bad)  
   14000272d:	ff                   	(bad)  
   14000272e:	ff                   	(bad)  
   14000272f:	ff 00                	incl   (%rax)
   140002731:	00 00                	add    %al,(%rax)
   140002733:	00 00                	add    %al,(%rax)
   140002735:	00 00                	add    %al,(%rax)
	...
