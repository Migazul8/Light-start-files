	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"crt0.c"
	.def	mainCRTStartup;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	mainCRTStartup                  # -- Begin function mainCRTStartup
	.p2align	4
mainCRTStartup:                         # @mainCRTStartup
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\Users\\Miguel y Diana\\C Proyects\\LightMingw-w64StartFiles\\src\\crt0.c" "F75399E19C5D0AF92D8428482843E244" 1
	.cv_loc	0 1 9 0                         # crt0.c:9:0
.seh_proc mainCRTStartup
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$192, %rsp
	.seh_stackalloc 192
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
.Ltmp0:
	.cv_loc	0 1 11 0                        # crt0.c:11:0
	callq	__security_init_cookie
	.cv_loc	0 1 14 0                        # crt0.c:14:0
	leaq	-40(%rbp), %rcx
	callq	*__imp_GetStartupInfoW(%rip)
	.cv_loc	0 1 16 0                        # crt0.c:16:0
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	*__imp_GetModuleHandleW(%rip)
	movq	%rax, -48(%rbp)
	.cv_loc	0 1 17 0                        # crt0.c:17:0
	movq	$0, -56(%rbp)
	.cv_loc	0 1 18 0                        # crt0.c:18:0
	callq	*__imp_GetCommandLineW(%rip)
	movq	%rax, -64(%rbp)
	.cv_loc	0 1 19 0                        # crt0.c:19:0
	leaq	-40(%rbp), %rax
	addq	$60, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	andq	$3, %rax
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-80(%rbp), %rdx                 # 8-byte Reload
	leaq	.L__unnamed_1(%rip), %rcx
	callq	__ubsan_handle_type_mismatch_v1
.LBB0_2:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.3:
	leaq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	andq	$7, %rax
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	leaq	.L__unnamed_2(%rip), %rcx
	callq	__ubsan_handle_type_mismatch_v1
.LBB0_5:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movzwl	(%rax), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movl	$10, %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -68(%rbp)
	.cv_loc	0 1 23 0                        # crt0.c:23:0
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %r8
	movl	-68(%rbp), %r9d
	callq	wWinMain
	movl	%eax, -72(%rbp)
	.cv_loc	0 1 27 0                        # crt0.c:27:0
	movl	-72(%rbp), %ecx
	callq	*__imp_ExitProcess(%rip)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB0_9
# %bb.8:
	leaq	.L__unnamed_3(%rip), %rcx
	callq	__ubsan_handle_builtin_unreachable
.Ltmp1:
.LBB0_9:
	int3
.Lfunc_end0:
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
.L.src:                                 # @.src
	.asciz	"crt0.c"

	.p2align	4, 0x0                          # @0
.L__unnamed_4:
	.short	0                               # 0x0
	.short	10                              # 0xa
	.asciz	"'DWORD' (aka 'unsigned long')"

	.data
	.p2align	4, 0x0                          # @1
.L__unnamed_1:
	.quad	.L.src
	.long	19                              # 0x13
	.long	36                              # 0x24
	.quad	.L__unnamed_4
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.zero	6

	.section	.rdata,"dr"
	.p2align	4, 0x0                          # @2
.L__unnamed_5:
	.short	0                               # 0x0
	.short	8                               # 0x8
	.asciz	"'WORD' (aka 'unsigned short')"

	.data
	.p2align	4, 0x0                          # @3
.L__unnamed_2:
	.quad	.L.src
	.long	19                              # 0x13
	.long	81                              # 0x51
	.quad	.L__unnamed_5
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.zero	6

	.p2align	3, 0x0                          # @4
.L__unnamed_3:
	.quad	.L.src
	.long	27                              # 0x1b
	.long	9                               # 0x9

	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp3-.Ltmp2                   # Subsection size
.Ltmp2:
	.short	.Ltmp5-.Ltmp4                   # Record length
.Ltmp4:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.asciz	"C:/Users/Miguel y Diana/AppData/Local/zig/tmp/5111a641f830e99b-crt0.s" # Object name
	.p2align	2, 0x0
.Ltmp5:
	.short	.Ltmp7-.Ltmp6                   # Record length
.Ltmp6:
	.short	4412                            # Record kind: S_COMPILE3
	.long	0                               # Flags and language
	.short	208                             # CPUType
	.short	20                              # Frontend version
	.short	1
	.short	2
	.short	0
	.short	20012                           # Backend version
	.short	0
	.short	0
	.short	0
	.asciz	"clang version 20.1.2 (https://github.com/ziglang/zig-bootstrap d6daf9e88675349a8d038f6ddfca1f37c4227ac4)" # Null-terminated compiler version string
	.p2align	2, 0x0
.Ltmp7:
.Ltmp3:
	.p2align	2, 0x0
	.long	241                             # Symbol subsection for mainCRTStartup
	.long	.Ltmp9-.Ltmp8                   # Subsection size
.Ltmp8:
	.short	.Ltmp11-.Ltmp10                 # Record length
.Ltmp10:
	.short	4423                            # Record kind: S_GPROC32_ID
	.long	0                               # PtrParent
	.long	0                               # PtrEnd
	.long	0                               # PtrNext
	.long	.Lfunc_end0-mainCRTStartup      # Code size
	.long	0                               # Offset after prologue
	.long	0                               # Offset before epilogue
	.long	4098                            # Function type index
	.secrel32	mainCRTStartup          # Function section relative address
	.secidx	mainCRTStartup                  # Function section index
	.byte	193                             # Flags
	.asciz	"mainCRTStartup"                # Function name
	.p2align	2, 0x0
.Ltmp11:
	.short	.Ltmp13-.Ltmp12                 # Record length
.Ltmp12:
	.short	4114                            # Record kind: S_FRAMEPROC
	.long	200                             # FrameSize
	.long	0                               # Padding
	.long	0                               # Offset of padding
	.long	0                               # Bytes of callee saved registers
	.long	0                               # Exception handler offset
	.short	0                               # Exception handler section
	.long	163840                          # Flags (defines frame register)
	.p2align	2, 0x0
.Ltmp13:
	.short	.Ltmp15-.Ltmp14                 # Record length
.Ltmp14:
	.short	4414                            # Record kind: S_LOCAL
	.long	4101                            # TypeIndex
	.short	0                               # Flags
	.asciz	"startupInfo"
	.p2align	2, 0x0
.Ltmp15:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, -40
	.short	.Ltmp17-.Ltmp16                 # Record length
.Ltmp16:
	.short	4414                            # Record kind: S_LOCAL
	.long	4105                            # TypeIndex
	.short	0                               # Flags
	.asciz	"hInstance"
	.p2align	2, 0x0
.Ltmp17:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, -48
	.short	.Ltmp19-.Ltmp18                 # Record length
.Ltmp18:
	.short	4414                            # Record kind: S_LOCAL
	.long	4105                            # TypeIndex
	.short	0                               # Flags
	.asciz	"hPrevInstance"
	.p2align	2, 0x0
.Ltmp19:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, -56
	.short	.Ltmp21-.Ltmp20                 # Record length
.Ltmp20:
	.short	4414                            # Record kind: S_LOCAL
	.long	1649                            # TypeIndex
	.short	0                               # Flags
	.asciz	"lpCmdLine"
	.p2align	2, 0x0
.Ltmp21:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, -64
	.short	.Ltmp23-.Ltmp22                 # Record length
.Ltmp22:
	.short	4414                            # Record kind: S_LOCAL
	.long	116                             # TypeIndex
	.short	0                               # Flags
	.asciz	"nShowCmd"
	.p2align	2, 0x0
.Ltmp23:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, -68
	.short	.Ltmp25-.Ltmp24                 # Record length
.Ltmp24:
	.short	4414                            # Record kind: S_LOCAL
	.long	116                             # TypeIndex
	.short	0                               # Flags
	.asciz	"ret"
	.p2align	2, 0x0
.Ltmp25:
	.cv_def_range	 .Ltmp0 .Ltmp1, frame_ptr_rel, -72
	.short	2                               # Record length
	.short	4431                            # Record kind: S_PROC_ID_END
.Ltmp9:
	.p2align	2, 0x0
	.cv_linetable	0, mainCRTStartup, .Lfunc_end0
	.long	241
	.long	.Ltmp27-.Ltmp26                 # Subsection size
.Ltmp26:
	.short	.Ltmp29-.Ltmp28                 # Record length
.Ltmp28:
	.short	4360                            # Record kind: S_UDT
	.long	4101                            # Type
	.asciz	"STARTUPINFOW"
	.p2align	2, 0x0
.Ltmp29:
	.short	.Ltmp31-.Ltmp30                 # Record length
.Ltmp30:
	.short	4360                            # Record kind: S_UDT
	.long	34                              # Type
	.asciz	"DWORD"
	.p2align	2, 0x0
.Ltmp31:
	.short	.Ltmp33-.Ltmp32                 # Record length
.Ltmp32:
	.short	4360                            # Record kind: S_UDT
	.long	33                              # Type
	.asciz	"wchar_t"
	.p2align	2, 0x0
.Ltmp33:
	.short	.Ltmp35-.Ltmp34                 # Record length
.Ltmp34:
	.short	4360                            # Record kind: S_UDT
	.long	33                              # Type
	.asciz	"WCHAR"
	.p2align	2, 0x0
.Ltmp35:
	.short	.Ltmp37-.Ltmp36                 # Record length
.Ltmp36:
	.short	4360                            # Record kind: S_UDT
	.long	1649                            # Type
	.asciz	"LPWSTR"
	.p2align	2, 0x0
.Ltmp37:
	.short	.Ltmp39-.Ltmp38                 # Record length
.Ltmp38:
	.short	4360                            # Record kind: S_UDT
	.long	33                              # Type
	.asciz	"WORD"
	.p2align	2, 0x0
.Ltmp39:
	.short	.Ltmp41-.Ltmp40                 # Record length
.Ltmp40:
	.short	4360                            # Record kind: S_UDT
	.long	32                              # Type
	.asciz	"BYTE"
	.p2align	2, 0x0
.Ltmp41:
	.short	.Ltmp43-.Ltmp42                 # Record length
.Ltmp42:
	.short	4360                            # Record kind: S_UDT
	.long	1568                            # Type
	.asciz	"LPBYTE"
	.p2align	2, 0x0
.Ltmp43:
	.short	.Ltmp45-.Ltmp44                 # Record length
.Ltmp44:
	.short	4360                            # Record kind: S_UDT
	.long	4101                            # Type
	.asciz	"_STARTUPINFOW"
	.p2align	2, 0x0
.Ltmp45:
	.short	.Ltmp47-.Ltmp46                 # Record length
.Ltmp46:
	.short	4360                            # Record kind: S_UDT
	.long	4105                            # Type
	.asciz	"HINSTANCE"
	.p2align	2, 0x0
.Ltmp47:
	.short	.Ltmp49-.Ltmp48                 # Record length
.Ltmp48:
	.short	4360                            # Record kind: S_UDT
	.long	4107                            # Type
	.asciz	"HINSTANCE__"
	.p2align	2, 0x0
.Ltmp49:
	.short	.Ltmp51-.Ltmp50                 # Record length
.Ltmp50:
	.short	4360                            # Record kind: S_UDT
	.long	117                             # Type
	.asciz	"UINT"
	.p2align	2, 0x0
.Ltmp51:
.Ltmp27:
	.p2align	2, 0x0
	.cv_filechecksums                       # File index to string table offset subsection
	.cv_stringtable                         # String table
	.long	241
	.long	.Ltmp53-.Ltmp52                 # Subsection size
.Ltmp52:
	.short	.Ltmp55-.Ltmp54                 # Record length
.Ltmp54:
	.short	4428                            # Record kind: S_BUILDINFO
	.long	4115                            # LF_BUILDINFO index
	.p2align	2, 0x0
.Ltmp55:
.Ltmp53:
	.p2align	2, 0x0
	.section	.debug$T,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	# ArgList (0x1000)
	.short	0x6                             # Record length
	.short	0x1201                          # Record kind: LF_ARGLIST
	.long	0x0                             # NumArgs
	# Procedure (0x1001)
	.short	0xe                             # Record length
	.short	0x1008                          # Record kind: LF_PROCEDURE
	.long	0x3                             # ReturnType: void
	.byte	0x0                             # CallingConvention: NearC
	.byte	0x0                             # FunctionOptions
	.short	0x0                             # NumParameters
	.long	0x1000                          # ArgListType: ()
	# FuncId (0x1002)
	.short	0x1a                            # Record length
	.short	0x1601                          # Record kind: LF_FUNC_ID
	.long	0x0                             # ParentScope
	.long	0x1001                          # FunctionType: void ()
	.asciz	"mainCRTStartup"                # Name
	.byte	241
	# Struct (0x1003)
	.short	0x22                            # Record length
	.short	0x1505                          # Record kind: LF_STRUCTURE
	.short	0x0                             # MemberCount
	.short	0x80                            # Properties ( ForwardReference (0x80) )
	.long	0x0                             # FieldList
	.long	0x0                             # DerivedFrom
	.long	0x0                             # VShape
	.short	0x0                             # SizeOf
	.asciz	"_STARTUPINFOW"                 # Name
	# FieldList (0x1004)
	.short	0x182                           # Record length
	.short	0x1203                          # Record kind: LF_FIELDLIST
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x0                             # FieldOffset
	.asciz	"cb"                            # Name
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x671                           # Type: wchar_t*
	.short	0x8                             # FieldOffset
	.asciz	"lpReserved"                    # Name
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x671                           # Type: wchar_t*
	.short	0x10                            # FieldOffset
	.asciz	"lpDesktop"                     # Name
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x671                           # Type: wchar_t*
	.short	0x18                            # FieldOffset
	.asciz	"lpTitle"                       # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x20                            # FieldOffset
	.asciz	"dwX"                           # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x24                            # FieldOffset
	.asciz	"dwY"                           # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x28                            # FieldOffset
	.asciz	"dwXSize"                       # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x2c                            # FieldOffset
	.asciz	"dwYSize"                       # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x30                            # FieldOffset
	.asciz	"dwXCountChars"                 # Name
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x34                            # FieldOffset
	.asciz	"dwYCountChars"                 # Name
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x38                            # FieldOffset
	.asciz	"dwFillAttribute"               # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x22                            # Type: unsigned long
	.short	0x3c                            # FieldOffset
	.asciz	"dwFlags"                       # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x21                            # Type: unsigned short
	.short	0x40                            # FieldOffset
	.asciz	"wShowWindow"                   # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x21                            # Type: unsigned short
	.short	0x42                            # FieldOffset
	.asciz	"cbReserved2"                   # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x620                           # Type: unsigned char*
	.short	0x48                            # FieldOffset
	.asciz	"lpReserved2"                   # Name
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x603                           # Type: void*
	.short	0x50                            # FieldOffset
	.asciz	"hStdInput"                     # Name
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x603                           # Type: void*
	.short	0x58                            # FieldOffset
	.asciz	"hStdOutput"                    # Name
	.byte	243
	.byte	242
	.byte	241
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x603                           # Type: void*
	.short	0x60                            # FieldOffset
	.asciz	"hStdError"                     # Name
	# Struct (0x1005)
	.short	0x22                            # Record length
	.short	0x1505                          # Record kind: LF_STRUCTURE
	.short	0x12                            # MemberCount
	.short	0x0                             # Properties
	.long	0x1004                          # FieldList: <field list>
	.long	0x0                             # DerivedFrom
	.long	0x0                             # VShape
	.short	0x68                            # SizeOf
	.asciz	"_STARTUPINFOW"                 # Name
	# StringId (0x1006)
	.short	0x7a                            # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\libc\\include\\any-windows-any\\processthreadsapi.h" # StringData
	.byte	242
	.byte	241
	# UdtSourceLine (0x1007)
	.short	0xe                             # Record length
	.short	0x1606                          # Record kind: LF_UDT_SRC_LINE
	.long	0x1005                          # UDT: _STARTUPINFOW
	.long	0x1006                          # SourceFile: C:\Program Files\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\lib\libc\include\any-windows-any\processthreadsapi.h
	.long	0x48                            # LineNumber
	# Struct (0x1008)
	.short	0x22                            # Record length
	.short	0x1505                          # Record kind: LF_STRUCTURE
	.short	0x0                             # MemberCount
	.short	0x80                            # Properties ( ForwardReference (0x80) )
	.long	0x0                             # FieldList
	.long	0x0                             # DerivedFrom
	.long	0x0                             # VShape
	.short	0x0                             # SizeOf
	.asciz	"HINSTANCE__"                   # Name
	.byte	242
	.byte	241
	# Pointer (0x1009)
	.short	0xa                             # Record length
	.short	0x1002                          # Record kind: LF_POINTER
	.long	0x1008                          # PointeeType: HINSTANCE__
	.long	0x1000c                         # Attrs: [ Type: Near64, Mode: Pointer, SizeOf: 8 ]
	# FieldList (0x100A)
	.short	0x16                            # Record length
	.short	0x1203                          # Record kind: LF_FIELDLIST
	.short	0x150d                          # Member kind: DataMember ( LF_MEMBER )
	.short	0x3                             # Attrs: Public
	.long	0x74                            # Type: int
	.short	0x0                             # FieldOffset
	.asciz	"unused"                        # Name
	.byte	243
	.byte	242
	.byte	241
	# Struct (0x100B)
	.short	0x22                            # Record length
	.short	0x1505                          # Record kind: LF_STRUCTURE
	.short	0x1                             # MemberCount
	.short	0x0                             # Properties
	.long	0x100a                          # FieldList: <field list>
	.long	0x0                             # DerivedFrom
	.long	0x0                             # VShape
	.short	0x4                             # SizeOf
	.asciz	"HINSTANCE__"                   # Name
	.byte	242
	.byte	241
	# StringId (0x100C)
	.short	0x72                            # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\libc\\include\\any-windows-any\\minwindef.h" # StringData
	.byte	242
	.byte	241
	# UdtSourceLine (0x100D)
	.short	0xe                             # Record length
	.short	0x1606                          # Record kind: LF_UDT_SRC_LINE
	.long	0x100b                          # UDT: HINSTANCE__
	.long	0x100c                          # SourceFile: C:\Program Files\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\lib\libc\include\any-windows-any\minwindef.h
	.long	0xd0                            # LineNumber
	# StringId (0x100E)
	.short	0x46                            # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"C:/Users/Miguel y Diana/C Proyects/LightMingw-w64StartFiles/src" # StringData
	# StringId (0x100F)
	.short	0xe                             # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"crt0.c"                        # StringData
	.byte	241
	# StringId (0x1010)
	.short	0xa                             # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.byte	0                               # StringData
	.byte	243
	.byte	242
	.byte	241
	# StringId (0x1011)
	.short	0x4e                            # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"C:/Program Files/zig-x86_64-windows-0.15.0-dev.921+97ecb6c55/zig.exe" # StringData
	.byte	243
	.byte	242
	.byte	241
	# StringId (0x1012)
	.short	0x22a6                          # Record length
	.short	0x1605                          # Record kind: LF_STRING_ID
	.long	0x0                             # Id
	.asciz	"\"-cc1\" \"-triple\" \"x86_64-unknown-windows-gnu\" \"-S\" \"-disable-free\" \"-clear-ast-before-backend\" \"-disable-llvm-verifier\" \"-discard-value-names\" \"-mrelocation-model\" \"pic\" \"-pic-level\" \"2\" \"-mframe-pointer=all\" \"-fmath-errno\" \"-ffp-contract=on\" \"-fno-rounding-math\" \"-mconstructor-aliases\" \"-mms-bitfields\" \"-funwind-tables=2\" \"-fno-sized-deallocation\" \"-fno-use-init-array\" \"-target-cpu\" \"x86-64\" \"-tune-cpu\" \"generic\" \"-gno-column-info\" \"-gcodeview\" \"-debug-info-kind=constructor\" \"-debugger-tuning=gdb\" \"-fdebug-compilation-dir=C:/Users/Miguel y Diana/C Proyects/LightMingw-w64StartFiles/src\" \"-fcoverage-compilation-dir=C:/Users/Miguel y Diana/C Proyects/LightMingw-w64StartFiles/src\" \"-nostdsysteminc\" \"-nobuiltininc\" \"-resource-dir\" \"C:/Program Files/lib/clang/20\" \"-dependency-file\" \"C:\\\\Users\\\\Miguel y Diana\\\\AppData\\\\Local\\\\zig\\\\tmp\\\\5111a641f830e99b-crt0.s.d\" \"-MT\" \"C:\\\\Users\\\\Miguel\\\\ y\\\\ Diana\\\\AppData\\\\Local\\\\zig\\\\tmp\\\\5111a641f830e99b-crt0.s\" \"-sys-header-deps\" \"-MV\" \"-isystem\" \"C:\\\\Program Files\\\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\\\lib\\\\include\" \"-isystem\" \"C:\\\\Program Files\\\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\\\lib\\\\libc\\\\include\\\\x86_64-windows-gnu\" \"-isystem\" \"C:\\\\Program Files\\\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\\\lib\\\\libc\\\\include\\\\generic-mingw\" \"-isystem\" \"C:\\\\Program Files\\\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\\\lib\\\\libc\\\\include\\\\x86_64-windows-any\" \"-isystem\" \"C:\\\\Program Files\\\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\\\lib\\\\libc\\\\include\\\\any-windows-any\" \"-D\" \"__MSVCRT_VERSION__=0xE00\" \"-D\" \"_WIN32_WINNT=0x0a00\" \"-O0\" \"-Wno-pragma-pack\" \"-ferror-limit\" \"19\" \"-stack-protector\" \"2\" \"-stack-protector-buffer-size\" \"4\" \"-fno-use-cxa-atexit\" \"-fgnuc-version=4.2.1\" \"-fskip-odr-check-in-gmf\" \"-exception-model=seh\" \"-fcolor-diagnostics\" \"-fno-spell-checking\" \"-target-cpu\" \"skylake\" \"-target-feature\" \"-16bit-mode\" \"-target-feature\" \"-32bit-mode\" \"-target-feature\" \"+64bit\" \"-target-feature\" \"+adx\" \"-target-feature\" \"+aes\" \"-target-feature\" \"+allow-light-256-bit\" \"-target-feature\" \"-amx-avx512\" \"-target-feature\" \"-amx-bf16\" \"-target-feature\" \"-amx-complex\" \"-target-feature\" \"-amx-fp16\" \"-target-feature\" \"-amx-fp8\" \"-target-feature\" \"-amx-int8\" \"-target-feature\" \"-amx-movrs\" \"-target-feature\" \"-amx-tf32\" \"-target-feature\" \"-amx-tile\" \"-target-feature\" \"-amx-transpose\" \"-target-feature\" \"+avx\" \"-target-feature\" \"-avx10.1-256\" \"-target-feature\" \"-avx10.1-512\" \"-target-feature\" \"-avx10.2-256\" \"-target-feature\" \"-avx10.2-512\" \"-target-feature\" \"+avx2\" \"-target-feature\" \"-avx512bf16\" \"-target-feature\" \"-avx512bitalg\" \"-target-feature\" \"-avx512bw\" \"-target-feature\" \"-avx512cd\" \"-target-feature\" \"-avx512dq\" \"-target-feature\" \"-avx512f\" \"-target-feature\" \"-avx512fp16\" \"-target-feature\" \"-avx512ifma\" \"-target-feature\" \"-avx512vbmi\" \"-target-feature\" \"-avx512vbmi2\" \"-target-feature\" \"-avx512vl\" \"-target-feature\" \"-avx512vnni\" \"-target-feature\" \"-avx512vp2intersect\" \"-target-feature\" \"-avx512vpopcntdq\" \"-target-feature\" \"-avxifma\" \"-target-feature\" \"-avxneconvert\" \"-target-feature\" \"-avxvnni\" \"-target-feature\" \"-avxvnniint16\" \"-target-feature\" \"-avxvnniint8\" \"-target-feature\" \"+bmi\" \"-target-feature\" \"+bmi2\" \"-target-feature\" \"-branch-hint\" \"-target-feature\" \"-branchfusion\" \"-target-feature\" \"-ccmp\" \"-target-feature\" \"-cf\" \"-target-feature\" \"-cldemote\" \"-target-feature\" \"+clflushopt\" \"-target-feature\" \"-clwb\" \"-target-feature\" \"-clzero\" \"-target-feature\" \"+cmov\" \"-target-feature\" \"-cmpccxadd\" \"-target-feature\" \"+crc32\" \"-target-feature\" \"+cx16\" \"-target-feature\" \"+cx8\" \"-target-feature\" \"-egpr\" \"-target-feature\" \"-enqcmd\" \"-target-feature\" \"+ermsb\" \"-target-feature\" \"-evex512\" \"-target-feature\" \"+f16c\" \"-target-feature\" \"-false-deps-getmant\" \"-target-feature\" \"-false-deps-lzcnt-tzcnt\" \"-target-feature\" \"-false-deps-mulc\" \"-target-feature\" \"-false-deps-mullq\" \"-target-feature\" \"-false-deps-perm\" \"-target-feature\" \"+false-deps-popcnt\" \"-target-feature\" \"-false-deps-range\" \"-target-feature\" \"-fast-11bytenop\" \"-target-feature\" \"+fast-15bytenop\" \"-target-feature\" \"-fast-7bytenop\" \"-target-feature\" \"-fast-bextr\" \"-target-feature\" \"-fast-dpwssd\" \"-target-feature\" \"+fast-gather\" \"-target-feature\" \"-fast-hops\" \"-target-feature\" \"-fast-imm16\" \"-target-feature\" \"-fast-lzcnt\" \"-target-feature\" \"-fast-movbe\" \"-target-feature\" \"+fast-scalar-fsqrt\" \"-target-feature\" \"-fast-scalar-shift-masks\" \"-target-feature\" \"+fast-shld-rotate\" \"-target-feature\" \"+fast-variable-crosslane-shuffle\" \"-target-feature\" \"+fast-variable-perlane-shuffle\" \"-target-feature\" \"+fast-vector-fsqrt\" \"-target-feature\" \"-fast-vector-shift-masks\" \"-target-feature\" \"-faster-shift-than-shuffle\" \"-target-feature\" \"+fma\" \"-target-feature\" \"-fma4\" \"-target-feature\" \"+fsgsbase\" \"-target-feature\" \"-fsrm\" \"-target-feature\" \"+fxsr\" \"-target-feature\" \"-gfni\" \"-target-feature\" \"-harden-sls-ijmp\" \"-target-feature\" \"-harden-sls-ret\" \"-target-feature\" \"-hreset\" \"-target-feature\" \"-idivl-to-divb\" \"-target-feature\" \"+idivq-to-divl\" \"-target-feature\" \"-inline-asm-use-gpr32\" \"-target-feature\" \"+invpcid\" \"-target-feature\" \"-kl\" \"-target-feature\" \"-lea-sp\" \"-target-feature\" \"-lea-uses-ag\" \"-target-feature\" \"-lvi-cfi\" \"-target-feature\" \"-lvi-load-hardening\" \"-target-feature\" \"-lwp\" \"-target-feature\" \"+lzcnt\" \"-target-feature\" \"+macrofusion\" \"-target-feature\" \"+mmx\" \"-target-feature\" \"+movbe\" \"-target-feature\" \"-movdir64b\" \"-target-feature\" \"-movdiri\" \"-target-feature\" \"-movrs\" \"-target-feature\" \"-mwaitx\" \"-target-feature\" \"-ndd\" \"-target-feature\" \"-nf\" \"-target-feature\" \"-no-bypass-delay\" \"-target-feature\" \"+no-bypass-delay-blend\" \"-target-feature\" \"+no-bypass-delay-mov\" \"-target-feature\" \"+no-bypass-delay-shuffle\" \"-target-feature\" \"+nopl\" \"-target-feature\" \"-pad-short-functions\" \"-target-feature\" \"+pclmul\" \"-target-feature\" \"-pconfig\" \"-target-feature\" \"-pku\" \"-target-feature\" \"+popcnt\" \"-target-feature\" \"-ppx\" \"-target-feature\" \"-prefer-128-bit\" \"-target-feature\" \"-prefer-256-bit\" \"-target-feature\" \"-prefer-mask-registers\" \"-target-feature\" \"-prefer-movmsk-over-vtest\" \"-target-feature\" \"-prefer-no-gather\" \"-target-feature\" \"-prefer-no-scatter\" \"-target-feature\" \"-prefetchi\" \"-target-feature\" \"+prfchw\" \"-target-feature\" \"-ptwrite\" \"-target-feature\" \"-push2pop2\" \"-target-feature\" \"-raoint\" \"-target-feature\" \"-rdpid\" \"-target-feature\" \"-rdpru\" \"-target-feature\" \"+rdrnd\" \"-target-feature\" \"+rdseed\" \"-target-feature\" \"-retpoline\" \"-target-feature\" \"-retpoline-external-thunk\" \"-target-feature\" \"-retpoline-indirect-branches\" \"-target-feature\" \"-retpoline-indirect-calls\" \"-target-feature\" \"-rtm\" \"-target-feature\" \"+sahf\" \"-target-feature\" \"-sbb-dep-breaking\" \"-target-feature\" \"-serialize\" \"-target-feature\" \"-seses\" \"-target-feature\" \"-sgx\" \"-target-feature\" \"-sha\" \"-target-feature\" \"-sha512\" \"-target-feature\" \"-shstk\" \"-target-feature\" \"+slow-3ops-lea\" \"-target-feature\" \"-slow-incdec\" \"-target-feature\" \"-slow-lea\" \"-target-feature\" \"-slow-pmaddwd\" \"-target-feature\" \"-slow-pmulld\" \"-target-feature\" \"-slow-shld\" \"-target-feature\" \"-slow-two-mem-ops\" \"-target-feature\" \"-slow-unaligned-mem-16\" \"-target-feature\" \"-slow-unaligned-mem-32\" \"-target-feature\" \"-sm3\" \"-target-feature\" \"-sm4\" \"-target-feature\" \"+sse\" \"-target-feature\" \"+sse2\" \"-target-feature\" \"+sse3\" \"-target-feature\" \"+sse4.1\" \"-target-feature\" \"+sse4.2\" \"-target-feature\" \"-sse4a\" \"-target-feature\" \"-sse-unaligned-mem\" \"-target-feature\" \"+ssse3\" \"-target-feature\" \"-tagged-globals\" \"-target-feature\" \"-tbm\" \"-target-feature\" \"-tsxldtrk\" \"-target-feature\" \"-tuning-fast-imm-vector-shift\" \"-target-feature\" \"-uintr\" \"-target-feature\" \"-use-glm-div-sqrt-costs\" \"-target-feature\" \"-use-slm-arith-costs\" \"-target-feature\" \"-usermsr\" \"-target-feature\" \"-vaes\" \"-target-feature\" \"-vpclmulqdq\" \"-target-feature\" \"+vzeroupper\" \"-target-feature\" \"-waitpkg\" \"-target-feature\" \"-wbnoinvd\" \"-target-feature\" \"-widekl\" \"-target-feature\" \"+x87\" \"-target-feature\" \"-xop\" \"-target-feature\" \"+xsave\" \"-target-feature\" \"+xsavec\" \"-target-feature\" \"+xsaveopt\" \"-target-feature\" \"+xsaves\" \"-target-feature\" \"-zu\" \"-fsanitize=alignment,array-bounds,bool,builtin,enum,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,return,returns-nonnull-attribute,shift-base,shift-exponent,signed-integer-overflow,unreachable,vla-bound\" \"-fsanitize-recover=alignment,array-bounds,bool,builtin,enum,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,returns-nonnull-attribute,shift-base,shift-exponent,signed-integer-overflow,vla-bound\" \"-fsanitize-merge=alignment,array-bounds,bool,builtin,enum,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,return,returns-nonnull-attribute,shift-base,shift-exponent,signed-integer-overflow,unreachable,vla-bound\" \"-fno-sanitize-memory-param-retval\" \"-fno-sanitize-address-use-odr-indicator\" \"-faddrsig\" \"-x\" \"c\"" # StringData
	.byte	242
	.byte	241
	# BuildInfo (0x1013)
	.short	0x1a                            # Record length
	.short	0x1603                          # Record kind: LF_BUILDINFO
	.short	0x5                             # NumArgs
	.long	0x100e                          # Argument: C:/Users/Miguel y Diana/C Proyects/LightMingw-w64StartFiles/src
	.long	0x1011                          # Argument: C:/Program Files/zig-x86_64-windows-0.15.0-dev.921+97ecb6c55/zig.exe
	.long	0x100f                          # Argument: crt0.c
	.long	0x1010                          # Argument
	.long	0x1012                          # Argument: "-cc1" "-triple" "x86_64-unknown-windows-gnu" "-S" "-disable-free" "-clear-ast-before-backend" "-disable-llvm-verifier" "-discard-value-names" "-mrelocation-model" "pic" "-pic-level" "2" "-mframe-pointer=all" "-fmath-errno" "-ffp-contract=on" "-fno-rounding-math" "-mconstructor-aliases" "-mms-bitfields" "-funwind-tables=2" "-fno-sized-deallocation" "-fno-use-init-array" "-target-cpu" "x86-64" "-tune-cpu" "generic" "-gno-column-info" "-gcodeview" "-debug-info-kind=constructor" "-debugger-tuning=gdb" "-fdebug-compilation-dir=C:/Users/Miguel y Diana/C Proyects/LightMingw-w64StartFiles/src" "-fcoverage-compilation-dir=C:/Users/Miguel y Diana/C Proyects/LightMingw-w64StartFiles/src" "-nostdsysteminc" "-nobuiltininc" "-resource-dir" "C:/Program Files/lib/clang/20" "-dependency-file" "C:\\Users\\Miguel y Diana\\AppData\\Local\\zig\\tmp\\5111a641f830e99b-crt0.s.d" "-MT" "C:\\Users\\Miguel\\ y\\ Diana\\AppData\\Local\\zig\\tmp\\5111a641f830e99b-crt0.s" "-sys-header-deps" "-MV" "-isystem" "C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\include" "-isystem" "C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\libc\\include\\x86_64-windows-gnu" "-isystem" "C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\libc\\include\\generic-mingw" "-isystem" "C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\libc\\include\\x86_64-windows-any" "-isystem" "C:\\Program Files\\zig-x86_64-windows-0.15.0-dev.921+97ecb6c55\\lib\\libc\\include\\any-windows-any" "-D" "__MSVCRT_VERSION__=0xE00" "-D" "_WIN32_WINNT=0x0a00" "-O0" "-Wno-pragma-pack" "-ferror-limit" "19" "-stack-protector" "2" "-stack-protector-buffer-size" "4" "-fno-use-cxa-atexit" "-fgnuc-version=4.2.1" "-fskip-odr-check-in-gmf" "-exception-model=seh" "-fcolor-diagnostics" "-fno-spell-checking" "-target-cpu" "skylake" "-target-feature" "-16bit-mode" "-target-feature" "-32bit-mode" "-target-feature" "+64bit" "-target-feature" "+adx" "-target-feature" "+aes" "-target-feature" "+allow-light-256-bit" "-target-feature" "-amx-avx512" "-target-feature" "-amx-bf16" "-target-feature" "-amx-complex" "-target-feature" "-amx-fp16" "-target-feature" "-amx-fp8" "-target-feature" "-amx-int8" "-target-feature" "-amx-movrs" "-target-feature" "-amx-tf32" "-target-feature" "-amx-tile" "-target-feature" "-amx-transpose" "-target-feature" "+avx" "-target-feature" "-avx10.1-256" "-target-feature" "-avx10.1-512" "-target-feature" "-avx10.2-256" "-target-feature" "-avx10.2-512" "-target-feature" "+avx2" "-target-feature" "-avx512bf16" "-target-feature" "-avx512bitalg" "-target-feature" "-avx512bw" "-target-feature" "-avx512cd" "-target-feature" "-avx512dq" "-target-feature" "-avx512f" "-target-feature" "-avx512fp16" "-target-feature" "-avx512ifma" "-target-feature" "-avx512vbmi" "-target-feature" "-avx512vbmi2" "-target-feature" "-avx512vl" "-target-feature" "-avx512vnni" "-target-feature" "-avx512vp2intersect" "-target-feature" "-avx512vpopcntdq" "-target-feature" "-avxifma" "-target-feature" "-avxneconvert" "-target-feature" "-avxvnni" "-target-feature" "-avxvnniint16" "-target-feature" "-avxvnniint8" "-target-feature" "+bmi" "-target-feature" "+bmi2" "-target-feature" "-branch-hint" "-target-feature" "-branchfusion" "-target-feature" "-ccmp" "-target-feature" "-cf" "-target-feature" "-cldemote" "-target-feature" "+clflushopt" "-target-feature" "-clwb" "-target-feature" "-clzero" "-target-feature" "+cmov" "-target-feature" "-cmpccxadd" "-target-feature" "+crc32" "-target-feature" "+cx16" "-target-feature" "+cx8" "-target-feature" "-egpr" "-target-feature" "-enqcmd" "-target-feature" "+ermsb" "-target-feature" "-evex512" "-target-feature" "+f16c" "-target-feature" "-false-deps-getmant" "-target-feature" "-false-deps-lzcnt-tzcnt" "-target-feature" "-false-deps-mulc" "-target-feature" "-false-deps-mullq" "-target-feature" "-false-deps-perm" "-target-feature" "+false-deps-popcnt" "-target-feature" "-false-deps-range" "-target-feature" "-fast-11bytenop" "-target-feature" "+fast-15bytenop" "-target-feature" "-fast-7bytenop" "-target-feature" "-fast-bextr" "-target-feature" "-fast-dpwssd" "-target-feature" "+fast-gather" "-target-feature" "-fast-hops" "-target-feature" "-fast-imm16" "-target-feature" "-fast-lzcnt" "-target-feature" "-fast-movbe" "-target-feature" "+fast-scalar-fsqrt" "-target-feature" "-fast-scalar-shift-masks" "-target-feature" "+fast-shld-rotate" "-target-feature" "+fast-variable-crosslane-shuffle" "-target-feature" "+fast-variable-perlane-shuffle" "-target-feature" "+fast-vector-fsqrt" "-target-feature" "-fast-vector-shift-masks" "-target-feature" "-faster-shift-than-shuffle" "-target-feature" "+fma" "-target-feature" "-fma4" "-target-feature" "+fsgsbase" "-target-feature" "-fsrm" "-target-feature" "+fxsr" "-target-feature" "-gfni" "-target-feature" "-harden-sls-ijmp" "-target-feature" "-harden-sls-ret" "-target-feature" "-hreset" "-target-feature" "-idivl-to-divb" "-target-feature" "+idivq-to-divl" "-target-feature" "-inline-asm-use-gpr32" "-target-feature" "+invpcid" "-target-feature" "-kl" "-target-feature" "-lea-sp" "-target-feature" "-lea-uses-ag" "-target-feature" "-lvi-cfi" "-target-feature" "-lvi-load-hardening" "-target-feature" "-lwp" "-target-feature" "+lzcnt" "-target-feature" "+macrofusion" "-target-feature" "+mmx" "-target-feature" "+movbe" "-target-feature" "-movdir64b" "-target-feature" "-movdiri" "-target-feature" "-movrs" "-target-feature" "-mwaitx" "-target-feature" "-ndd" "-target-feature" "-nf" "-target-feature" "-no-bypass-delay" "-target-feature" "+no-bypass-delay-blend" "-target-feature" "+no-bypass-delay-mov" "-target-feature" "+no-bypass-delay-shuffle" "-target-feature" "+nopl" "-target-feature" "-pad-short-functions" "-target-feature" "+pclmul" "-target-feature" "-pconfig" "-target-feature" "-pku" "-target-feature" "+popcnt" "-target-feature" "-ppx" "-target-feature" "-prefer-128-bit" "-target-feature" "-prefer-256-bit" "-target-feature" "-prefer-mask-registers" "-target-feature" "-prefer-movmsk-over-vtest" "-target-feature" "-prefer-no-gather" "-target-feature" "-prefer-no-scatter" "-target-feature" "-prefetchi" "-target-feature" "+prfchw" "-target-feature" "-ptwrite" "-target-feature" "-push2pop2" "-target-feature" "-raoint" "-target-feature" "-rdpid" "-target-feature" "-rdpru" "-target-feature" "+rdrnd" "-target-feature" "+rdseed" "-target-feature" "-retpoline" "-target-feature" "-retpoline-external-thunk" "-target-feature" "-retpoline-indirect-branches" "-target-feature" "-retpoline-indirect-calls" "-target-feature" "-rtm" "-target-feature" "+sahf" "-target-feature" "-sbb-dep-breaking" "-target-feature" "-serialize" "-target-feature" "-seses" "-target-feature" "-sgx" "-target-feature" "-sha" "-target-feature" "-sha512" "-target-feature" "-shstk" "-target-feature" "+slow-3ops-lea" "-target-feature" "-slow-incdec" "-target-feature" "-slow-lea" "-target-feature" "-slow-pmaddwd" "-target-feature" "-slow-pmulld" "-target-feature" "-slow-shld" "-target-feature" "-slow-two-mem-ops" "-target-feature" "-slow-unaligned-mem-16" "-target-feature" "-slow-unaligned-mem-32" "-target-feature" "-sm3" "-target-feature" "-sm4" "-target-feature" "+sse" "-target-feature" "+sse2" "-target-feature" "+sse3" "-target-feature" "+sse4.1" "-target-feature" "+sse4.2" "-target-feature" "-sse4a" "-target-feature" "-sse-unaligned-mem" "-target-feature" "+ssse3" "-target-feature" "-tagged-globals" "-target-feature" "-tbm" "-target-feature" "-tsxldtrk" "-target-feature" "-tuning-fast-imm-vector-shift" "-target-feature" "-uintr" "-target-feature" "-use-glm-div-sqrt-costs" "-target-feature" "-use-slm-arith-costs" "-target-feature" "-usermsr" "-target-feature" "-vaes" "-target-feature" "-vpclmulqdq" "-target-feature" "+vzeroupper" "-target-feature" "-waitpkg" "-target-feature" "-wbnoinvd" "-target-feature" "-widekl" "-target-feature" "+x87" "-target-feature" "-xop" "-target-feature" "+xsave" "-target-feature" "+xsavec" "-target-feature" "+xsaveopt" "-target-feature" "+xsaves" "-target-feature" "-zu" "-fsanitize=alignment,array-bounds,bool,builtin,enum,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,return,returns-nonnull-attribute,shift-base,shift-exponent,signed-integer-overflow,unreachable,vla-bound" "-fsanitize-recover=alignment,array-bounds,bool,builtin,enum,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,returns-nonnull-attribute,shift-base,shift-exponent,signed-integer-overflow,vla-bound" "-fsanitize-merge=alignment,array-bounds,bool,builtin,enum,float-cast-overflow,integer-divide-by-zero,nonnull-attribute,null,pointer-overflow,return,returns-nonnull-attribute,shift-base,shift-exponent,signed-integer-overflow,unreachable,vla-bound" "-fno-sanitize-memory-param-retval" "-fno-sanitize-address-use-odr-indicator" "-faddrsig" "-x" "c"
	.byte	242
	.byte	241
	.addrsig
	.addrsig_sym __security_init_cookie
	.addrsig_sym __ubsan_handle_type_mismatch_v1
	.addrsig_sym wWinMain
	.addrsig_sym __ubsan_handle_builtin_unreachable
