platform/hal/hal_dma.o: ../../../platform/hal/hal_dma.c \
 ../../../platform/hal/plat_addr_map.h \
 ../../../platform/hal/best1306p/plat_addr_map_best1306p.h \
 ../../../platform/cmsis/inc/cmsis_nvic.h \
 ../../../platform/cmsis/inc/cmsis.h \
 ../../../platform/hal/plat_addr_map.h \
 ../../../platform/cmsis/inc/best1306p.h \
 ../../../platform/cmsis/inc/core_cm33.h ../../../utils/libc/inc/stdint.h \
 ../../../platform/cmsis/inc/cmsis_version.h \
 ../../../platform/cmsis/inc/cmsis_compiler.h \
 ../../../platform/cmsis/inc/cmsis_gcc.h \
 ../../../platform/cmsis/inc/mpu_armv8.h \
 ../../../platform/cmsis/inc/system_ARMCM.h \
 ../../../utils/libc/inc/stdbool.h ../../../platform/hal/hal_cache.h \
 ../../../platform/cmsis/inc/cmsis.h ../../../platform/hal/hal_cmu.h \
 ../../../platform/hal/plat_types.h ../../../utils/libc/inc/stddef.h \
 ../../../platform/hal/best1306p/hal_cmu_best1306p.h \
 ../../../platform/hal/hal_chipid.h ../../../platform/hal/hal_dma.h \
 ../../../platform/hal/hal_location.h ../../../platform/hal/hal_timer.h \
 ../../../platform/hal/hal_trace.h ../../../platform/hal/hal_trace_mod.h \
 ../../../platform/hal/hal_trace_level.h ../../../platform/hal/reg_dma.h \
 ../../../platform/hal/best1306p/hal_dmacfg_best1306p.h \
 ../../../platform/hal/best1306p/hal_dmacfg0_best1306p.h
../../../platform/hal/plat_addr_map.h:
../../../platform/hal/best1306p/plat_addr_map_best1306p.h:
../../../platform/cmsis/inc/cmsis_nvic.h:
../../../platform/cmsis/inc/cmsis.h:
../../../platform/hal/plat_addr_map.h:
../../../platform/cmsis/inc/best1306p.h:
../../../platform/cmsis/inc/core_cm33.h:
../../../utils/libc/inc/stdint.h:
../../../platform/cmsis/inc/cmsis_version.h:
../../../platform/cmsis/inc/cmsis_compiler.h:
../../../platform/cmsis/inc/cmsis_gcc.h:
../../../platform/cmsis/inc/mpu_armv8.h:
../../../platform/cmsis/inc/system_ARMCM.h:
../../../utils/libc/inc/stdbool.h:
../../../platform/hal/hal_cache.h:
../../../platform/cmsis/inc/cmsis.h:
../../../platform/hal/hal_cmu.h:
../../../platform/hal/plat_types.h:
../../../utils/libc/inc/stddef.h:
../../../platform/hal/best1306p/hal_cmu_best1306p.h:
../../../platform/hal/hal_chipid.h:
../../../platform/hal/hal_dma.h:
../../../platform/hal/hal_location.h:
../../../platform/hal/hal_timer.h:
../../../platform/hal/hal_trace.h:
../../../platform/hal/hal_trace_mod.h:
../../../platform/hal/hal_trace_level.h:
../../../platform/hal/reg_dma.h:
../../../platform/hal/best1306p/hal_dmacfg_best1306p.h:
../../../platform/hal/best1306p/hal_dmacfg0_best1306p.h:

cmd_platform/hal/hal_dma.o := arm-none-eabi-gcc -MD -MP -MF platform/hal/.hal_dma.o.d -MT platform/hal/hal_dma.o  -I../../../platform/hal -I../../../utils/lzma/ -I../../../utils/heap/ -I../../../platform/cmsis/inc -I../../../platform/hal -DPROGRAMMER_INFLASH -DOTA_ENABLE -DOTA_ENABLE -DDOWNLOAD_UART_BANDRATE=921600 -DOTA_CODE_OFFSET=0x18000 -DAPP_ENTRY_ADDRESS=0x2c000000+0x18000 -DCHIP_BEST1306P -DCHIP_HAS_USB -DCP_IN_SAME_EE -I../../../utils/libc/inc -ffreestanding -nostdinc -DNOSTD -DDEBUG -U__INT32_TYPE__ -D__INT32_TYPE__=int -U__UINT32_TYPE__ -DPROGRAMMER -DLIBC_ROM -DBT_SERVICE_ENABLE -DIBRT_UI -DBT_SVC_FW_PRODUCT_EARBUDS -DBT_SVC_MODULE_BT_ENABLED -DBT_SVC_MODULE_TWS_ENABLED -DBT_SVC_MODULE_IBRT_ENABLED -DBT_HFP_SUPPORT -DBT_A2DP_SUPPORT -DBT_AVRCP_SUPPORT -DBT_SPP_SUPPORT -D__WATCHER_DOG_RESET__ -DOTA_BIN_COMPRESSED -DAUDIO_OUTPUT_VOLUME_DEFAULT=10 -DINT_LOCK_EXCEPTION -DTRACE_MAXIMUM_LOG_LEN=120 -DFLASH_SIZE=0x400000 -DPSRAM_SIZE=0x400000 -DSIMULTANEOUS_AWAKEN -I../../../config/prod_test/ota_copy -I../../../config/_default_cfg_src_ -I../../../include -DUNALIGNED_ACCESS -mthumb -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -Werror -DAPP_UI_THREAD_SIZE=2048 -DTRACE_CODE_IN_RAM -DTRACE_CP_CPU_OUTPUT -fno-common -fmessage-length=0 -Wall -fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer -fsigned-char -fno-aggressive-loop-optimizations -fno-isolate-erroneous-paths-dereference -fsingle-precision-constant -Wdouble-promotion -Wfloat-conversion -g -O2 -DDEBUG_IRQ_HUNG -Werror=date-time -Wlogical-op -Wimplicit-fallthrough -Wno-trigraphs -fno-strict-aliasing -fno-tree-loop-distribute-patterns -I../../../platform/drivers/ana -I../../../utils/rom_utils -I../../../utils/hwtimer_list -std=gnu99 -Werror=implicit-int -Werror-implicit-function-declaration -c -o platform/hal/hal_dma.o ../../../platform/hal/hal_dma.c
