.text:00401000 ;
.text:00401000 ; +-------------------------------------------------------------------------+
.text:00401000 ; |   This file has been	generated by The Interactive Disassembler (IDA)	   |
.text:00401000 ; |	     Copyright (c) 2014	Hex-Rays, <support@hex-rays.com>	   |
.text:00401000 ; |			License	info: 48-3057-7374-2C			   |
.text:00401000 ; |     Zhou Tao, Jiangsu Australia Sinuo Network Technology Co., Ltd.	   |
.text:00401000 ; +-------------------------------------------------------------------------+
.text:00401000 ;
.text:00401000 ; Input MD5   : 5CBBC4D75196023A92A41741D4F6C8C1
.text:00401000 ; Input CRC32 : 52704021
.text:00401000
.text:00401000 ; File Name   : C:\Users\Night\Documents\Code\exe\test.exe
.text:00401000 ; Format	     : Portable	executable for 80386 (PE)
.text:00401000 ; Imagebase   : 400000
.text:00401000 ; Section 1. (virtual address 00001000)
.text:00401000 ; Virtual size		       : 00000904 (   2308.)
.text:00401000 ; Section size in file	       : 00000A00 (   2560.)
.text:00401000 ; Offset	to raw data for	section: 00000400
.text:00401000 ; Flags 60000060: Text Data Executable Readable
.text:00401000 ; Alignment     : default
.text:00401000 ; OS type	 :  MS Windows
.text:00401000 ; Application type:  Executable 32bit
.text:00401000
.text:00401000		       .686p
.text:00401000		       .mmx
.text:00401000		       .model flat
.text:00401000
.text:00401000 ; ===========================================================================
.text:00401000
.text:00401000 ; Segment type: Pure code
.text:00401000 ; Segment permissions: Read/Execute
.text:00401000 _text	       segment para public 'CODE' use32
.text:00401000		       assume cs:_text
.text:00401000		       ;org 401000h
.text:00401000		       assume es:nothing, ss:nothing, ds:_data,	fs:nothing, gs:nothing
.text:00401000 ; [000000F1 BYTES: COLLAPSED FUNCTION ___crt_xt_end__. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004010F1 ; ---------------------------------------------------------------------------
.text:004010F1		       jmp     short ___mingw_CRTStartup
.text:004010F1 ; ---------------------------------------------------------------------------
.text:004010F3		       align 10h
.text:00401100 ; [00000116 BYTES: COLLAPSED FUNCTION ___mingw_CRTStartup. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
.text:00401216		       align 10h
.text:00401220 ; [00000018 BYTES: COLLAPSED FUNCTION _mainCRTStartup. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401238		       align 10h
.text:00401240 ; [00000018 BYTES: COLLAPSED FUNCTION _WinMainCRTStartup. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401258		       align 10h
.text:00401260 ; [0000000C BYTES: COLLAPSED FUNCTION _atexit. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:0040126C		       align 10h
.text:00401270 ; [0000000C BYTES: COLLAPSED FUNCTION __onexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
.text:0040127C		       align 10h
.text:00401280 ; [00000009 BYTES: COLLAPSED FUNCTION ___do_sjlj_init. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401289		       align 10h
.text:00401290
.text:00401290 ; =============== S U B R O U T I N E =======================================
.text:00401290
.text:00401290 ; Attributes: bp-based frame
.text:00401290
.text:00401290 ; int __cdecl main(int argc, const char **argv, const char **envp)
.text:00401290		       public _main
.text:00401290 _main	       proc near	       ; CODE XREF: ___mingw_CRTStartup+E2p
.text:00401290
.text:00401290 Format	       = dword ptr -18h
.text:00401290 var_14	       = dword ptr -14h
.text:00401290 var_8	       = dword ptr -8
.text:00401290 var_4	       = dword ptr -4
.text:00401290 argc	       = dword ptr  8
.text:00401290 argv	       = dword ptr  0Ch
.text:00401290 envp	       = dword ptr  10h
.text:00401290
.text:00401290		       push    ebp
.text:00401291		       mov     ebp, esp
.text:00401293		       sub     esp, 18h
.text:00401296		       and     esp, 0FFFFFFF0h
.text:00401299		       mov     eax, 0
.text:0040129E		       add     eax, 0Fh
.text:004012A1		       add     eax, 0Fh
.text:004012A4		       shr     eax, 4
.text:004012A7		       shl     eax, 4
.text:004012AA		       mov     [ebp+var_8], eax
.text:004012AD		       mov     eax, [ebp+var_8]
.text:004012B0		       call    __alloca
.text:004012B5		       call    ___main
.text:004012BA		       lea     eax, [ebp+var_4]
.text:004012BD		       mov     [esp+18h+var_14], eax
.text:004012C1		       mov     [esp+18h+Format], offset	Format ; "%d"
.text:004012C8		       call    _scanf
.text:004012CD		       cmp     [ebp+var_4], 0
.text:004012D1		       jle     short loc_4012E1
.text:004012D3		       mov     [esp+18h+Format], offset	aA0 ; "a > 0"
.text:004012DA		       call    _printf
.text:004012DF		       jmp     short locret_4012ED
.text:004012E1 ; ---------------------------------------------------------------------------
.text:004012E1
.text:004012E1 loc_4012E1:			       ; CODE XREF: _main+41j
.text:004012E1		       mov     [esp+18h+Format], offset	aN0 ; "n < 0"
.text:004012E8		       call    _printf
.text:004012ED
.text:004012ED locret_4012ED:			       ; CODE XREF: _main+4Fj
.text:004012ED		       leave
.text:004012EE		       retn
.text:004012EE _main	       endp
.text:004012EE
.text:004012EE ; ---------------------------------------------------------------------------
.text:004012EF		       align 10h
.text:004012F0 ; [00000028 BYTES: COLLAPSED FUNCTION __pei386_runtime_relocator. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401318		       align 10h
.text:00401320
.text:00401320 ; =============== S U B R O U T I N E =======================================
.text:00401320
.text:00401320 ; Attributes: bp-based frame
.text:00401320
.text:00401320 ; void __cdecl _fpreset()
.text:00401320		       public __fpreset
.text:00401320 __fpreset       proc near	       ; CODE XREF: ___crt_xt_end__+C6p
.text:00401320					       ; ___mingw_CRTStartup+19p
.text:00401320		       push    ebp
.text:00401321		       mov     ebp, esp
.text:00401323		       fninit
.text:00401325		       pop     ebp
.text:00401326		       retn
.text:00401326 __fpreset       endp
.text:00401326
.text:00401326 ; ---------------------------------------------------------------------------
.text:00401327		       align 10h
.text:00401330 ; [00000039 BYTES: COLLAPSED FUNCTION ___do_global_dtors. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401369		       align 10h
.text:00401370 ; [00000054 BYTES: COLLAPSED FUNCTION ___do_global_ctors. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004013C4		       align 10h
.text:004013D0 ; [00000064 BYTES: COLLAPSED FUNCTION ___main. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401434		       align 10h
.text:00401440 ; [0000000E BYTES: COLLAPSED FUNCTION ___w32_sharedptr_default_unexpected. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
.text:0040144E		       align 10h
.text:00401450 ; [00000092 BYTES: COLLAPSED FUNCTION ___w32_sharedptr_get. PRESS KEYPAD	CTRL-"+" TO EXPAND]
.text:004014E2		       align 10h
.text:004014F0 ; [00000235 BYTES: COLLAPSED FUNCTION ___w32_sharedptr_initialize. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
.text:00401725		       align 10h
.text:00401730 ; [0000002D BYTES: COLLAPSED FUNCTION __alloca. PRESS KEYPAD CTRL-"+" TO	EXPAND]
.text:0040175D		       align 10h
.text:00401760 ; [00000047 BYTES: COLLAPSED FUNCTION ___eprintf. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004017A7		       align 10h
.text:004017B0 ; [00000006 BYTES: COLLAPSED FUNCTION ___set_app_type. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004017B6		       align 10h
.text:004017C0 ; [00000006 BYTES: COLLAPSED FUNCTION __cexit. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004017C6		       align 10h
.text:004017D0 ; [00000006 BYTES: COLLAPSED FUNCTION ___p__environ. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004017D6		       align 10h
.text:004017E0 ; [00000006 BYTES: COLLAPSED FUNCTION _signal. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004017E6		       align 10h
.text:004017F0 ; [00000006 BYTES: COLLAPSED FUNCTION ___p__fmode. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
.text:004017F6		       align 10h
.text:00401800 ; [00000006 BYTES: COLLAPSED FUNCTION __setmode.	PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401806		       align 10h
.text:00401810 ; [00000006 BYTES: COLLAPSED FUNCTION ___getmainargs. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401816		       align 10h
.text:00401820 ; [00000006 BYTES: COLLAPSED FUNCTION _printf. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401826		       align 10h
.text:00401830 ; [00000006 BYTES: COLLAPSED FUNCTION _scanf. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401836		       align 10h
.text:00401840 ; [00000006 BYTES: COLLAPSED FUNCTION _free. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401846		       align 10h
.text:00401850 ; [00000006 BYTES: COLLAPSED FUNCTION _malloc. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401856		       align 10h
.text:00401860 ; [00000006 BYTES: COLLAPSED FUNCTION _abort. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401866		       align 10h
.text:00401870 ; [00000006 BYTES: COLLAPSED FUNCTION _fflush. PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401876		       align 10h
.text:00401880 ; [00000006 BYTES: COLLAPSED FUNCTION _fprintf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
.text:00401886		       align 10h
.text:00401890 ; [00000006 BYTES: COLLAPSED FUNCTION SetUnhandledExceptionFilter(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:00401896		       align 10h
.text:004018A0 ; [00000006 BYTES: COLLAPSED FUNCTION ExitProcess(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004018A6		       align 10h
.text:004018B0 ; [00000006 BYTES: COLLAPSED FUNCTION GetAtomNameA(x,x,x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
.text:004018B6		       align 10h
.text:004018C0 ; [00000006 BYTES: COLLAPSED FUNCTION FindAtomA(x). PRESS KEYPAD	CTRL-"+" TO EXPAND]
.text:004018C6		       align 10h
.text:004018D0 ; [00000006 BYTES: COLLAPSED FUNCTION AddAtomA(x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
.text:004018D6		       align 10h
.text:004018E0 ; [00000009 BYTES: COLLAPSED FUNCTION ___sjlj_init_ctor.	PRESS KEYPAD CTRL-"+" TO EXPAND]
.text:004018E9		       align 10h
.text:004018F0		       public ___CTOR_LIST__
.text:004018F0 ___CTOR_LIST__  dd 0FFFFFFFFh	       ; DATA XREF: ___do_global_ctors+7r
.text:004018F0					       ; ___do_global_ctors:loc_401390r ...
.text:004018F4 off_4018F4      dd offset ___sjlj_init_ctor
.text:004018F4					       ; DATA XREF: ___do_global_ctors:loc_4013AAr
.text:004018F4					       ; ___do_global_ctors+47r ...
.text:004018F8		       dd 0
.text:004018FC		       public __DTOR_LIST__
.text:004018FC __DTOR_LIST__   dd 0FFFFFFFFh
.text:00401900 dword_401900    dd 40h dup(0)	       ; DATA XREF: .data:p_0o
.text:00401A00		       dd 180h dup(?)
.text:00401A00 _text	       ends
.text:00401A00
.data:00402000 ; Section 2. (virtual address 00002000)
.data:00402000 ; Virtual size		       : 00000040 (	64.)
.data:00402000 ; Section size in file	       : 00000200 (    512.)
.data:00402000 ; Offset	to raw data for	section: 00000E00
.data:00402000 ; Flags C0000040: Data Readable Writable
.data:00402000 ; Alignment     : default
.data:00402000 ; ===========================================================================
.data:00402000
.data:00402000 ; Segment type: Pure data
.data:00402000 ; Segment permissions: Read/Write
.data:00402000 _data	       segment para public 'DATA' use32
.data:00402000		       assume cs:_data
.data:00402000		       ;org 402000h
.data:00402000		       public __CRT_glob
.data:00402000 __CRT_glob      dd 0FFFFFFFFh	       ; DATA XREF: ___mingw_CRTStartup+31r
.data:00402004		       align 10h
.data:00402010		       public __fmode
.data:00402010 ; int _fmode
.data:00402010 __fmode	       dd 4000h		       ; DATA XREF: ___mingw_CRTStartup+58w
.data:00402010					       ; ___mingw_CRTStartup+B5r
.data:00402014		       align 10h
.data:00402020 p_0	       dd offset dword_401900  ; DATA XREF: ___do_global_dtors+6r
.data:00402020					       ; ___do_global_dtors+22r ...
.data:00402024		       align 10h
.data:00402030 dw2_once_1      dd 0		       ; DATA XREF: ___w32_sharedptr_initialize+115r
.data:00402034 dword_402034    dd 0FFFFFFFFh	       ; DATA XREF: ___w32_sharedptr_initialize+11Dr
.data:00402038 sjl_once_3      dd 0		       ; DATA XREF: ___w32_sharedptr_initialize+13Er
.data:0040203C dword_40203C    dd 0FFFFFFFFh	       ; DATA XREF: ___w32_sharedptr_initialize+138r
.data:00402040		       public __data_end__
.data:00402040 __data_end__    dd 70h dup(0)
.data:00402200		       align 1000h
.data:00402200 _data	       ends
.data:00402200
.rdata:00403000	; Section 3. (virtual address 00003000)
.rdata:00403000	; Virtual size			: 000000F0 (	240.)
.rdata:00403000	; Section size in file		: 00000200 (	512.)
.rdata:00403000	; Offset to raw	data for section: 00001000
.rdata:00403000	; Flags	40000040: Data Readable
.rdata:00403000	; Alignment	: default
.rdata:00403000	; ===========================================================================
.rdata:00403000
.rdata:00403000	; Segment type:	Pure data
.rdata:00403000	; Segment permissions: Read
.rdata:00403000	_rdata		segment	para public 'DATA' use32
.rdata:00403000			assume cs:_rdata
.rdata:00403000			;org 403000h
.rdata:00403000	; char Format[3]
.rdata:00403000	Format		db '%d',0               ; DATA XREF: _main+31o
.rdata:00403003	; char aA0[]
.rdata:00403003	aA0		db 'a > 0',0            ; DATA XREF: _main+43o
.rdata:00403009	; char aN0[]
.rdata:00403009	aN0		db 'n < 0',0            ; DATA XREF: _main:loc_4012E1o
.rdata:0040300F			align 10h
.rdata:00403010	_w32_atom_suffix dd 42494C2Dh		; DATA XREF: ___w32_sharedptr_initialize+25r
.rdata:00403010						; ___w32_sharedptr_initialize+169r
.rdata:00403014	dword_403014	dd 57434347h		; DATA XREF: ___w32_sharedptr_initialize+3Er
.rdata:00403014						; ___w32_sharedptr_initialize+174r
.rdata:00403018	dword_403018	dd 452D3233h		; DATA XREF: ___w32_sharedptr_initialize+54r
.rdata:00403018						; ___w32_sharedptr_initialize+17Fr
.rdata:0040301C	dword_40301C	dd 2D322D48h		; DATA XREF: ___w32_sharedptr_initialize+6Ar
.rdata:0040301C						; ___w32_sharedptr_initialize+18Ar
.rdata:00403020	dword_403020	dd 4A4C4A53h		; DATA XREF: ___w32_sharedptr_initialize+79r
.rdata:00403020						; ___w32_sharedptr_initialize+195r
.rdata:00403024	dword_403024	dd 4854472Dh		; DATA XREF: ___w32_sharedptr_initialize+81r
.rdata:00403024						; ___w32_sharedptr_initialize+1A0r
.rdata:00403028	dword_403028	dd 494D2D52h		; DATA XREF: ___w32_sharedptr_initialize+89r
.rdata:00403028						; ___w32_sharedptr_initialize+1ABr
.rdata:0040302C	dword_40302C	dd 3357474Eh		; DATA XREF: ___w32_sharedptr_initialize+91r
.rdata:0040302C						; ___w32_sharedptr_initialize+1B3r
.rdata:00403030	word_403030	dw 32h			; DATA XREF: ___w32_sharedptr_initialize+99r
.rdata:00403030						; ___w32_sharedptr_initialize+1BBr
.rdata:00403032			align 4
.rdata:00403034	aW32_sharedptrS	db 'w32_sharedptr->size == sizeof(W32_EH_SHARED)',0
.rdata:00403034						; DATA XREF: ___w32_sharedptr_get:loc_4014A7o
.rdata:00403061	; char aSUFailedAssert[]
.rdata:00403061	aSUFailedAssert	db '%s:%u: failed assertion `%s',27h,0Ah,0
.rdata:00403061						; DATA XREF: ___w32_sharedptr_get:loc_4014B9o
.rdata:0040307F			align 10h
.rdata:00403080	a____GccGccConf	db '../../gcc/gcc/config/i386/w32-shared-ptr.c',0
.rdata:00403080						; DATA XREF: ___w32_sharedptr_get+70o
.rdata:004030AB			align 4
.rdata:004030AC	aGetatomnameaAt	db 'GetAtomNameA (atom, s, sizeof(s)) != 0',0
.rdata:004030AC						; DATA XREF: ___w32_sharedptr_get:loc_4014CEo
.rdata:004030D3			align 4
.rdata:004030D4			dd 7 dup(0)
.rdata:004030F0			public __RUNTIME_PSEUDO_RELOC_LIST_END__
.rdata:004030F0	__RUNTIME_PSEUDO_RELOC_LIST_END__ dd 44h dup(0)
.rdata:004030F0						; DATA XREF: __pei386_runtime_relocator+1o
.rdata:004030F0						; __pei386_runtime_relocator:loc_40130Eo
.rdata:00403200			align 1000h
.rdata:00403200	_rdata		ends
.rdata:00403200
.bss:00404000 ;	Section	4. (virtual address 00004000)
.bss:00404000 ;	Virtual	size		      :	000000B0 (    176.)
.bss:00404000 ;	Section	size in	file	      :	00000000 (	0.)
.bss:00404000 ;	Offset to raw data for section:	00000000
.bss:00404000 ;	Flags C0000080:	Bss Readable Writable
.bss:00404000 ;	Alignment     :	default
.bss:00404000 ;	===========================================================================
.bss:00404000
.bss:00404000 ;	Segment	type: Uninitialized
.bss:00404000 ;	Segment	permissions: Read/Write
.bss:00404000 _bss	      segment para public 'BSS' use32
.bss:00404000		      assume cs:_bss
.bss:00404000		      ;org 404000h
.bss:00404000		      assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
.bss:00404000		      public __argv
.bss:00404000 ;	char **_argv
.bss:00404000 __argv	      dd ?		      ;	DATA XREF: ___mingw_CRTStartup+25o
.bss:00404000					      ;	___mingw_CRTStartup+D0r
.bss:00404004		      public __argc
.bss:00404004 ;	int _argc
.bss:00404004 __argc	      dd ?		      ;	DATA XREF: ___mingw_CRTStartup+43o
.bss:00404004					      ;	___mingw_CRTStartup+DAr
.bss:00404008		      align 10h
.bss:00404010		      public __CRT_fmode
.bss:00404010 __CRT_fmode     dd ?		      ;	DATA XREF: ___mingw_CRTStartup+4Fr
.bss:00404010					      ;	___mingw_CRTStartup+70r ...
.bss:00404014		      align 10h
.bss:00404020 _initialized    dd ?		      ;	DATA XREF: ___main+7r
.bss:00404020					      ;	___main+1Aw
.bss:00404024		      align 20h
.bss:00404040 dw2_object_mutex_0 dd ?		      ;	DATA XREF: ___w32_sharedptr_initialize+FAr
.bss:00404044 dword_404044    dd ?		      ;	DATA XREF: ___w32_sharedptr_initialize+105r
.bss:00404048		      align 10h
.bss:00404050 sjl_fc_key_2    dd ?		      ;	DATA XREF: ___w32_sharedptr_initialize+126r
.bss:00404054		      align 10h
.bss:00404060		      public ___w32_sharedptr_terminate
.bss:00404060 ___w32_sharedptr_terminate dd ?	      ;	DATA XREF: ___w32_sharedptr_initialize+20Cw
.bss:00404064		      align 10h
.bss:00404070		      public ___w32_sharedptr
.bss:00404070 ___w32_sharedptr dd ?		      ;	DATA XREF: ___w32_sharedptr_default_unexpected+1r
.bss:00404070					      ;	___w32_sharedptr_initialize+Cr	...
.bss:00404074		      align 10h
.bss:00404080		      public ___w32_sharedptr_unexpected
.bss:00404080 ___w32_sharedptr_unexpected dd ?	      ;	DATA XREF: ___w32_sharedptr_initialize+214w
.bss:00404084		      dd 0Bh dup(?)
.bss:004040B0		      public __bss_end__
.bss:004040B0 __bss_end__     dd 3D4h dup(?)
.bss:004040B0 _bss	      ends
.bss:004040B0
.idata:00405000	; Section 5. (virtual address 00005000)
.idata:00405000	; Virtual size			: 000002A8 (	680.)
.idata:00405000	; Section size in file		: 00000400 (   1024.)
.idata:00405000	; Offset to raw	data for section: 00001200
.idata:00405000	; Flags	C0000040: Data Readable	Writable
.idata:00405000	; Alignment	: default
.idata:00405000	; ===========================================================================
.idata:00405000
.idata:00405000	; Segment type:	Externs
.idata:00405000	; _idata
.idata:00405000			extrn __head_libkernel32_a
.idata:00405001
.idata:004050A8	;
.idata:004050A8	; Imports from KERNEL32.dll
.idata:004050A8	;
.idata:004050A8	; ATOM __stdcall AddAtomA(LPCSTR lpString)
.idata:004050A8			extrn __imp__AddAtomA@4:dword
.idata:004050A8						; CODE XREF: ___w32_sharedptr_initialize+1CFp
.idata:004050A8						; DATA XREF: ___w32_sharedptr_initialize+1CFr ...
.idata:004050AC	; void __stdcall ExitProcess(UINT uExitCode)
.idata:004050AC			extrn __imp__ExitProcess@4:dword
.idata:004050AC						; DATA XREF: ExitProcess(x)r
.idata:004050B0	; ATOM __stdcall FindAtomA(LPCSTR lpString)
.idata:004050B0			extrn __imp__FindAtomA@4:dword
.idata:004050B0						; CODE XREF: ___w32_sharedptr_initialize+A7p
.idata:004050B0						; ___w32_sharedptr_initialize+1F0p
.idata:004050B0						; DATA XREF: ...
.idata:004050B4	; UINT __stdcall GetAtomNameA(ATOM nAtom, LPSTR	lpBuffer, int nSize)
.idata:004050B4			extrn __imp__GetAtomNameA@12:dword
.idata:004050B4						; CODE XREF: ___w32_sharedptr_get+1Fp
.idata:004050B4						; DATA XREF: ___w32_sharedptr_get+1Fr ...
.idata:004050B8	; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
.idata:004050B8			extrn __imp__SetUnhandledExceptionFilter@4:dword
.idata:004050B8						; DATA XREF: SetUnhandledExceptionFilter(x)r
.idata:004050BC
.idata:004050C4	;
.idata:004050C4	; Imports from msvcrt.dll
.idata:004050C4	;
.idata:004050C4			extrn __imp____getmainargs:dword
.idata:004050C4						; DATA XREF: ___getmainargsr
.idata:004050C8			extrn __imp____p__environ:dword	; DATA XREF: ___p__environr
.idata:004050CC			extrn __imp____p__fmode:dword ;	DATA XREF: ___p__fmoder
.idata:004050D0			extrn __imp____set_app_type:dword
.idata:004050D0						; CODE XREF: _mainCRTStartup+Dp
.idata:004050D0						; _WinMainCRTStartup+Dp
.idata:004050D0						; DATA XREF: ...
.idata:004050D4			extrn __imp___cexit:dword ; DATA XREF: __cexitr
.idata:004050D8			extrn __imp___iob:dword	; DATA XREF: ___mingw_CRTStartup+5Dr
.idata:004050D8						; ___mingw_CRTStartup+79r ...
.idata:004050DC	; _onexit_t __cdecl __onexit(_onexit_t Func)
.idata:004050DC			extrn __imp___onexit:dword ; DATA XREF:	__onexit+1r
.idata:004050E0			extrn __imp___setmode:dword ; DATA XREF: __setmoder
.idata:004050E4	; void __cdecl _abort()
.idata:004050E4			extrn __imp__abort:dword ; DATA	XREF: _abortr
.idata:004050E8	; int __cdecl _atexit(void (__cdecl *)())
.idata:004050E8			extrn __imp__atexit:dword ; DATA XREF: _atexit+1r
.idata:004050EC	; int __cdecl _fflush(FILE *File)
.idata:004050EC			extrn __imp__fflush:dword ; DATA XREF: _fflushr
.idata:004050F0	; int _fprintf(FILE *File, const char *Format, ...)
.idata:004050F0			extrn __imp__fprintf:dword ; DATA XREF:	_fprintfr
.idata:004050F4	; void __cdecl _free(void *Memory)
.idata:004050F4			extrn __imp__free:dword	; DATA XREF: _freer
.idata:004050F8	; void *__cdecl	_malloc(size_t Size)
.idata:004050F8			extrn __imp__malloc:dword ; DATA XREF: _mallocr
.idata:004050FC	; int _printf(const char *Format, ...)
.idata:004050FC			extrn __imp__printf:dword ; DATA XREF: _printfr
.idata:00405100	; int _scanf(const char	*Format, ...)
.idata:00405100			extrn __imp__scanf:dword ; DATA	XREF: _scanfr
.idata:00405104			extrn __imp__signal:dword ; DATA XREF: _signalr
.idata:00405108
.idata:00405108
.idata:00405108
.idata:00405108			end _mainCRTStartup
