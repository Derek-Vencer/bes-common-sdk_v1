/***************************************************************************

 *

 * Copyright 2015-2019 BES.

 * All rights reserved. All unpublished rights reserved.

 *

 * No part of this work may be used or reproduced in any form or by any

 * means, or stored in a database or retrieval system, without prior written

 * permission of BES.

 *

 * Use of this work is governed by a license granted by BES.

 * This work contains confidential and proprietary information of

 * BES. which is protected by copyright, trade secret,

 * trademark and other intellectual property rights.

 *

 ****************************************************************************/
/***************************************************************************

 *

 * Copyright 2015-2020 BES.

 * All rights reserved. All unpublished rights reserved.

 *

 * No part of this work may be used or reproduced in any form or by any

 * means, or stored in a database or retrieval system, without prior written

 * permission of BES.

 *

 * Use of this work is governed by a license granted by BES.

 * This work contains confidential and proprietary information of

 * BES. which is protected by copyright, trade secret,

 * trademark and other intellectual property rights.

 *

 ****************************************************************************/
/***************************************************************************

 *

 * Copyright 2015-2023 BES.

 * All rights reserved. All unpublished rights reserved.

 *

 * No part of this work may be used or reproduced in any form or by any

 * means, or stored in a database or retrieval system, without prior written

 * permission of BES.

 *

 * Use of this work is governed by a license granted by BES.

 * This work contains confidential and proprietary information of

 * BES. which is protected by copyright, trade secret,

 * trademark and other intellectual property rights.

 *

 ****************************************************************************/
/* For linker scripts */
/* For module features */
/* #define NO_SUBSYS_FLASH_ADDR_ACCESS */
/* TODO: MCU has 64M-byte space but SENS only has 16M-byte space */
/* For boot struct version */
/* For ROM export functions */
/* Linker script to configure memory regions. */
MEMORY
{
 ROM (rx) : ORIGIN = 0x22000000, LENGTH = 0x00010000 /* see plat_addr_map.h and common.mk */
 FLASH (r) : ORIGIN = (0x2C000000), LENGTH = (0x400000 - ((0x2C000000) - 0x2C000000))
 FLASH_NC (r) : ORIGIN = (((0x2C000000)) - 0x2C000000 + 0x28000000), LENGTH = (0x400000 - ((0x2C000000) - 0x2C000000))
 FLASHX (rx) : ORIGIN = (((0x2C000000)) - 0x2C000000 + 0x0C000000), LENGTH = (0x400000 - ((0x2C000000) - 0x2C000000))
 RAM (rwx) : ORIGIN = ((((0x00200000 + (0x00220000 - 0x00200000) - 0x00200000 + 0x20000000) + (0x20040000 - 0x20020000))) | 0x04000000), LENGTH = ((0x200A0000 + 0x00020000 - 0x20000000) - (0x20040000 - 0x20020000) - (0x00220000 - 0x00200000))
 RAMX (rx) : ORIGIN = (((((0x00200000 + (0x00220000 - 0x00200000) - 0x00200000 + 0x20000000) + (0x20040000 - 0x20020000)) - 0x20000000 + 0x00200000)) | 0x04000000), LENGTH = ((0x200A0000 + 0x00020000 - 0x20000000) - (0x20040000 - 0x20020000) - (0x00220000 - 0x00200000))
}
/* Library configurations */
GROUP(libgcc.a libc.a)
/* Linker script to place sections and symbol values. Should be used together

 * with other linker script that defines memory regions ROM and RAM.

 * It references following symbols, which must be defined in code:

 *   Reset_Handler : Entry of reset handler

 *

 * It defines following symbols, which code can use without definition:

 *   __export_fn_rom

 *   __exec_struct_start

 *   __cust_cmd_init_tbl_start

 *   __cust_cmd_init_tbl_end

 *   __cust_cmd_hldr_tbl_start

 *   __cust_cmd_hldr_tbl_end

 *   __exidx_start

 *   __exidx_end

 *   __etext

 *   __data_start__

 *   __data_end__

 *   __bss_start__

 *   __bss_end__

 *   __end__

 *   end

 *   __HeapLimit

 *   __StackLimit

 *   __StackTop

 *   __stack

 *   __free_ram

 */
ENTRY(Boot_Loader)
SECTIONS
{
 __export_fn_rom = (ORIGIN(ROM) + LENGTH(ROM) - 40 - 128);
 .boot_struct (ORIGIN(FLASH)) :
 {
  __flash_start = .;
  KEEP(*(.boot_struct))
  . = ALIGN(4);
 } > FLASH
 . = ((.) - 0x2C000000 + 0x0C000000);
 .boot_text_flash (.) : AT (((ADDR(.boot_text_flash)) - 0x0C000000 + 0x2C000000))
 {
  *(.boot_loader)
  . = ALIGN(4096);
  *(.ota_boot_info)
  . = ALIGN(4096);
  *(.ota_boot_rev)
  . = ALIGN(4096);
  *(.boot_text_flash*)
  *(.boot_rodata_flash*)
  *:main.o(.text* .rodata*)
  *:hal_bootmode.o(.text* .rodata*)
  . = ALIGN(4);
 } > FLASHX
 . = ((.) - 0x0C000000 + 0x2C000000);
 .got_info (.) :
 {
  __got_info_start = .;
  __got_plt_start = .;
  *(.got.plt)
  __got_plt_end = .;
  __got_start = .;
  *(.got)
  __got_end = .;
  . = ALIGN(4);
 } > FLASH
 .vector_table (ORIGIN(RAM)) (NOLOAD) :
 {
  __vector_table_start = .;
  KEEP(*(.vector_table))
  . = 380;
  . = ALIGN(4);
 } > RAM
 .reboot_param (.) (NOLOAD) :
 {
  KEEP(*(.reboot_param))
  . = 64;
  . = ALIGN(4);
 } > RAM
 .burn_buffer (.) (NOLOAD) :
 {
  /* The size of .burn_buffer should be greater than __rom_HeapLimit. In most cases 8K is enough. */
  KEEP(*(.burn_buffer))
  . = ALIGN(4);
 } > RAM
/*

	.code_dummy (.) (NOLOAD) :

	{

		. = CODE_MSG_OVERHEAD;

		. = ALIGN(4);

	} > RAM

*/
 __boot_sram_start_flash__ = LOADADDR(.got_info) + SIZEOF(.got_info);
 __boot_sram_start__ = .;
 .text
  (((__boot_sram_start__) - ((((0x00200000 + (0x00220000 - 0x00200000) - 0x00200000 + 0x20000000) + (0x20040000 - 0x20020000))) | 0x04000000) + (((((0x00200000 + (0x00220000 - 0x00200000) - 0x00200000 + 0x20000000) + (0x20040000 - 0x20020000)) - 0x20000000 + 0x00200000)) | 0x04000000)))
  : AT (__boot_sram_start_flash__)
 {
  __boot_text_sram_start__ = .;
  _stext = __boot_text_sram_start__;
  *(.text*)
  . = ALIGN(4);
  __boot_text_sram_end__ = .;
 } > RAMX
 __boot_text_sram_end_flash__ = __boot_sram_start_flash__ + SIZEOF(.text);
 __boot_data_sram_start_flash__ = __boot_text_sram_end_flash__;
 .rodata
  (((ADDR(.text) + SIZEOF(.text)) - (((((0x00200000 + (0x00220000 - 0x00200000) - 0x00200000 + 0x20000000) + (0x20040000 - 0x20020000)) - 0x20000000 + 0x00200000)) | 0x04000000) + ((((0x00200000 + (0x00220000 - 0x00200000) - 0x00200000 + 0x20000000) + (0x20040000 - 0x20020000))) | 0x04000000)))
  : AT (__boot_data_sram_start_flash__)
 {
  __boot_data_sram_start__ = .;
  *(.rodata*)
  *(.boot_rodata_sram*)
  . = ALIGN(4);
  __cust_cmd_init_tbl_start = .;
  KEEP(*(.cust_cmd_init_tbl))
  __cust_cmd_init_tbl_end = .;
  . = ALIGN(4);
  __cust_cmd_hldr_tbl_start = .;
  KEEP(*(.cust_cmd_hldr_tbl))
  __cust_cmd_hldr_tbl_end = .;
  *(.note.gnu.build-id)
  . = ALIGN(4);
 } > RAM
 __boot_sram_end__ = .;
 __boot_sram_end_flash__ = LOADADDR(.rodata) + SIZEOF(.rodata);
 __etext = __boot_sram_end_flash__;
 .data : AT (__etext)
 {
  __data_start__ = .;
  *(.data*)
  . = ALIGN(4);
  /* All data end */
  __data_end__ = .;
 } > RAM
 . = ((LOADADDR(.data) + SIZEOF(.data)) - 0x2C000000 + 0x0C000000);
 .ARM.extab (.) : AT (((ADDR(.ARM.extab)) - 0x0C000000 + 0x2C000000))
 {
  *(.ARM.extab* .gnu.linkonce.armextab.*)
 } > FLASHX
 __exidx_start = .;
 /* .ARM.exidx contains R_ARM_PREL31 (+-0x40000000) offset to functions, which means

	 * the session location cannot be too far away from the function addresses */
 .ARM.exidx (.) : AT (((ADDR(.ARM.exidx)) - 0x0C000000 + 0x2C000000))
 {
  *(.ARM.exidx* .gnu.linkonce.armexidx.*)
 } > FLASHX
 __exidx_end = .;
 . = ((.) - 0x0C000000 + 0x2C000000);
 .system_info (.) :
 {
  KEEP(*(.system_info_list_size))
  KEEP(*(.system_info_list))
  . = ALIGN(4);
 } > FLASH
 .build_info (.) :
 {
  KEEP(*(.build_info))
  . = ALIGN(4);
 } > FLASH = 0x00000000
 /* The following section be the last loaded section */
 .code_start_addr (.) :
 {
  __app_entry_address__ = .;
  LONG(0x2c000000+0x18000);
  __download_uart_bandrate__ = .;
  LONG(921600);
  LONG(0xBE57341D);
  LONG(ABSOLUTE(__flash_start));
 } > FLASH
 __flash_end = .;
 .bss (ADDR(.data)+SIZEOF(.data)) (NOLOAD) :
 {
  . = ALIGN(4);
  __bss_start__ = .;
  *(.bss*)
  *(COMMON)
  . = ALIGN(4);
  __bss_end__ = .;
 } > RAM
 .heap (.) (NOLOAD) :
 {
  . = ALIGN(8);
  __HeapBase = .;
  __end__ = .;
  end = __end__;
  . += 0x40;
  . = ALIGN(8);
  __HeapLimit = .;
 } > RAM
 /* .stack_dummy section doesn't contains any symbols. It is only

	 * used for linker to calculate size of stack sections, and assign

	 * values to stack symbols later */
 .stack_dummy (.) (COPY) :
 {
  . = 0x1000;
  . = ALIGN(8);
 } > RAM
 /* Set stack top to end of RAM, and stack limit move down by

	 * size of stack_dummy section */
 __StackTop = ORIGIN(RAM) + LENGTH(RAM);
 __StackLimit = __StackTop - SIZEOF(.stack_dummy);
 PROVIDE(__stack = __StackTop);
 /* Check if data + heap + stack exceeds RAM limit */
 ASSERT(__StackLimit >= __HeapLimit, "region RAM overflowed with stack")
 __free_ram = __StackLimit - __HeapLimit;
 ASSERT((__vector_table_start & (1K - 1)) == 0, "vector table alignment error")
 __mem_pool_start__ = __HeapLimit;
 __mem_pool_end__ = __StackLimit;
 __boot_bss_sram_start__ = .;
 __boot_bss_sram_end__ = .;
 __sram_text_data_start_flash__ = .;
 __sram_text_end_flash__ = .;
 __sram_data_start_flash__ = .;
 __sram_text_data_end_flash__ = .;
 __sram_text_data_start__ = .;
 __sram_text_start__ = .;
 __sram_text_end__ = .;
 __sram_data_start__ = .;
 __sram_data_end__ = .;
 __sram_bss_start__ = .;
 __sram_bss_end__ = .;
 __fast_sram_text_data_start_flash__ = .;
 __fast_sram_text_data_end_flash__ = .;
 __fast_sram_text_data_start__ = .;
}
