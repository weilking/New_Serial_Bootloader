
	; HI-TECH C COMPILER (Cypress PSOC) V9.61PL6
	; Copyright (C) 1984-2009 HI-TECH Software
	;Serial no. HCPSOC-810066372
	;Licensed for FAE use only - not for an end-user.

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --asmlist --errformat --chip=CY8C29466 --WARN=0 --OPT=asm,9 \
	; -L-ACODE=0000h-71ffh -L-AROM=0000h-71ffh -L-PBootCheckSum=7200h \
	; -L-PBootLoaderArea=7400h -OAN2100_29_Loader \
	; -Moutput/AN2100_29_Loader.mp --OUTDIR=./output ./obj/boot.obj \
	; ./obj/bootloader.p1 ./obj/bootloaderconfig.obj ./obj/flashapi.obj \
	; ./obj/main.p1 lib/libpsoc.lib lib/libpsoc.lpp \
	; C:/PROGRA~1/Cypress/PSOCDE~1/5.1/Common/CY110F~1/tools/lib/CY8C29000/cms.lib
	;


	processor	CY8C29466
	macro	M8C_ClearWDT
	mov reg[0xE3],0x38
	endm

	psect	PD_startup,class=CODE
	psect	init,class=CODE
	psect	end_init,class=CODE
	psect	powerup,class=CODE
	psect	vectors,ovrld,class=CODE
	psect	text,class=CODE
	psect	maintext,class=CODE
	psect	intrtext,class=CODE
	psect	bss,class=RAM,space=1
	psect	InterruptRAM,class=RAM,space=1
	psect	cdata,class=ROM,space=0,reloc=256
	psect	psoc_config,class=ROM
	psect	UserModules,class=ROM
	psect	strings,class=ROM
	psect	fnauto,class=RAM,space=1,limit=0100h
	psect	SSCParmBlk,abs,ovrld,class=RAM,space=1
	org	0xF8
	blk	8

	psect	stackps,class=RAM
	global	__Lstackps, __stack_start__
__stack_start__:
	psect	bss0,class=RAM,space=1
	psect	nvram0,class=RAM,space=1
	psect	rbit0,bit,class=RAM,space=1
	psect	nvbit0,bit,class=RAM,space=1
	psect	ramdata0,class=RAM,space=1
	psect	romdata0,class=BANKROM,space=0
	psect	bss1,class=RAM,space=1
	psect	nvram1,class=RAM,space=1
	psect	rbit1,bit,class=RAM,space=1
	psect	nvbit1,bit,class=RAM,space=1
	psect	ramdata1,class=RAM,space=1
	psect	romdata1,class=BANKROM,space=0
	psect	bss2,class=RAM,space=1
	psect	nvram2,class=RAM,space=1
	psect	rbit2,bit,class=RAM,space=1
	psect	nvbit2,bit,class=RAM,space=1
	psect	ramdata2,class=RAM,space=1
	psect	romdata2,class=BANKROM,space=0
	psect	bss3,class=RAM,space=1
	psect	nvram3,class=RAM,space=1
	psect	rbit3,bit,class=RAM,space=1
	psect	nvbit3,bit,class=RAM,space=1
	psect	ramdata3,class=RAM,space=1
	psect	romdata3,class=BANKROM,space=0
	psect	bss4,class=RAM,space=1
	psect	nvram4,class=RAM,space=1
	psect	rbit4,bit,class=RAM,space=1
	psect	nvbit4,bit,class=RAM,space=1
	psect	ramdata4,class=RAM,space=1
	psect	romdata4,class=BANKROM,space=0
	psect	bss5,class=RAM,space=1
	psect	nvram5,class=RAM,space=1
	psect	rbit5,bit,class=RAM,space=1
	psect	nvbit5,bit,class=RAM,space=1
	psect	ramdata5,class=RAM,space=1
	psect	romdata5,class=BANKROM,space=0
	psect	bss6,class=RAM,space=1
	psect	nvram6,class=RAM,space=1
	psect	rbit6,bit,class=RAM,space=1
	psect	nvbit6,bit,class=RAM,space=1
	psect	ramdata6,class=RAM,space=1
	psect	romdata6,class=BANKROM,space=0
	psect	bss7,class=RAM,space=1
	psect	nvram7,class=RAM,space=1
	psect	rbit7,bit,class=RAM,space=1
	psect	nvbit7,bit,class=RAM,space=1
	psect	ramdata7,class=RAM,space=1
	psect	romdata7,class=BANKROM,space=0

	global	start,startup,_main
	global	reset_vec,intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:		; for C funcs called from assembler

	fnconf	fnauto,??,?
	fnroot	_main
TMP_DR0	equ	108
TMP_DR1	equ	109
TMP_DR2	equ	110
TMP_DR3	equ	111
CUR_PP	equ	208
STK_PP	equ	209
IDX_PP	equ	211
MVR_PP	equ	212
MVW_PP	equ	213
CPU_F	equ	247
	psect	vectors
reset_vec:
start:
	ljmp	startup

	psect	init
startup:
	M8C_ClearWDT
	or	f, 0x80	;select multiple RAM page mode
	and	f, 0xBF

;	Clear uninitialized variables in bank 0
	global	__Lbss0
	mov	a,low __Lbss0
	swap	a,sp
	mov	a,0
	push	a
	push	a
	push	a
	mov	reg[STK_PP],7
	mov	a,low __Lstackps
	swap	a,sp

	ljmp	_main

	end	start
