Project:      output/AN2100_29_Loader
Build Number: 0
Date:         Mon Apr 08 19:54:00 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0220   0074 =    116. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0220  LoadConfigTBL_AN2100_29_Loader_Bank0
       026F  LoadConfigTBL_AN2100_29_Loader_Bank1
       0294  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0294   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0294  __func_lit_start
       0296  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0296   0167 =    359. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0296  LoadConfigTBL_AN2100_29_Loader_Ordered
       039B  LoadConfigInit
       039B  _LoadConfigInit
       03A2  _LoadConfig_AN2100_29_Loader
       03A2  LoadConfig_AN2100_29_Loader
       03FD  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   03FD   004F =     79. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03FD  __text_start
       03FD  _main
       044C  __xidata_start
       044C  __text_end
       044E  __xidata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                  BootLoaderArea   7400   0B83 =   2947. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       7459  _Boot_ASCIItoBYTE
       74AE  _Boot_UART_cGetChar
       74D4  _Boot_UART_PutChar
       74EE  _Boot_UART_CPutString
       751C  _Boot_PerformWrite
       7813  _BootLoader
       7AA3  _Boot_LoadConfigInit
       7AA3  Boot_LoadConfigInit
       7C90  Boot_RxD_Start
       7C90  _Boot_RxD_Start
       7C95  Boot_Counter_Stop
       7C95  _Boot_Counter_Stop
       7C99  Boot_RxD_bReadRxData
       7C99  _Boot_RxD_bReadRxData
       7C9C  _Boot_RxD_bReadRxStatus
       7C9C  Boot_RxD_bReadRxStatus
       7C9F  _Boot_TxD_Start
       7C9F  Boot_TxD_Start
       7CA4  _Boot_TxD_SendData
       7CA4  Boot_TxD_SendData
       7CA7  Boot_TxD_bReadTxStatus
       7CA7  _Boot_TxD_bReadTxStatus
       7CAA  _Boot_Counter_DisableInt
       7CAA  Boot_Counter_DisableInt
       7CAE  _Boot_Counter_Start
       7CAE  Boot_Counter_Start
       7CB2  Boot_Counter_WritePeriod
       7CB2  _Boot_Counter_WritePeriod
       7CB8  _Boot_Counter_WriteCompareValue
       7CB8  Boot_Counter_WriteCompareValue
       7CBE  Boot_Counter_wReadCounter
       7CBE  _Boot_Counter_wReadCounter
       7CFC  Boot_Is_Program_Good
       7CFC  _Boot_Is_Program_Good
       7D23  FlashCheckSum
       7D23  _FlashCheckSum
       7D6B  bFlashWriteBlock
       7D6B  _bFlashWriteBlock
       7F18  FlashReadBlock
       7F18  _FlashReadBlock
       7F83  __BootLoaderArea_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0181 =    385. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       00A6  __Start
       017E  _bGetPowerSetting
       017E  bGetPowerSetting

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          litabs   73FE   7400 =      2. bytes (abs,ovr,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       7200  _BootCheckSumBlock
       73FE  _LastBlock_To_Check

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                      SSCParmBlk   0000   0100 =    256. bytes (abs,ovr,ram)

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rX
       0001  __r5
       0002  __r4
       0003  __r3
       0004  __r2
       0005  __r1
       0006  __r0

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/bootloader.o	[ bootloader.c ]
obj/bootloaderconfig.o	[ bootloaderconfig.asm ]
obj/flashapi.o	[ flashapi.asm ]
obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, rX.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x220.0x7fff
-bdata:0.0x6ff
-bSSCParmBlk:0xf7.0xff
-bBootCheckSum:0x7200.0x73ff
-bBootLoaderArea:0x7400.0x7fff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0
-BAN2100_29_Loader_RAM
-rwh:SSCParmBlk:0xf7.0xff

