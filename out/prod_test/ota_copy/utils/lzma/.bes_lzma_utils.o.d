utils/lzma/bes_lzma_utils.o: ../../../utils/lzma/bes_lzma_utils.c \
 ../../../platform/hal/hal_trace.h ../../../platform/hal/plat_addr_map.h \
 ../../../platform/hal/best1306p/plat_addr_map_best1306p.h \
 ../../../platform/hal/plat_types.h ../../../utils/libc/inc/stddef.h \
 ../../../utils/libc/inc/stdint.h ../../../utils/libc/inc/stdbool.h \
 ../../../platform/hal/hal_trace_mod.h \
 ../../../platform/hal/hal_trace_level.h \
 ../../../platform/hal/hal_timer.h ../../../platform/hal/hal_cmu.h \
 ../../../platform/cmsis/inc/cmsis.h \
 ../../../platform/hal/plat_addr_map.h \
 ../../../platform/cmsis/inc/best1306p.h \
 ../../../platform/cmsis/inc/core_cm33.h \
 ../../../platform/cmsis/inc/cmsis_version.h \
 ../../../platform/cmsis/inc/cmsis_compiler.h \
 ../../../platform/cmsis/inc/cmsis_gcc.h \
 ../../../platform/cmsis/inc/mpu_armv8.h \
 ../../../platform/cmsis/inc/system_ARMCM.h \
 ../../../platform/hal/best1306p/hal_cmu_best1306p.h \
 ../../../platform/hal/hal_bootmode.h \
 ../../../platform/hal/hal_norflash.h ../../../platform/hal/hal_cmu.h \
 ../../../platform/hal/hal_wdt.h ../../../platform/drivers/ana/pmu.h \
 ../../../platform/hal/hal_analogif.h ../../../platform/hal/hal_gpio.h \
 ../../../platform/hal/hal_iomux.h \
 ../../../platform/hal/best1306p/hal_iomux_best1306p.h \
 ../../../platform/hal/plat_types.h ../../../platform/hal/hal_gpadc.h \
 ../../../platform/drivers/ana/best1306p/pmu_best1306p.h \
 ../../../utils/boot_struct/tool_msg.h ../../../utils/crc/crc_c.h \
 ../../../platform/cmsis/inc/cmsis_nvic.h \
 ../../../platform/cmsis/inc/cmsis.h ../../../utils/libc/inc/string.h \
 ../../../utils/libc/inc/stddef.h ../../../utils/libc/inc/stdint.h \
 ../../../platform/hal/hal_cache.h ../../../utils/heap/heap_api.h \
 ../../../utils/heap/multi_heap.h ../../../utils/libc/inc/stdlib.h \
 ../../../utils/heap/custom_allocator.h \
 ../../../utils/lzma/bes_lzma_api.h
../../../platform/hal/hal_trace.h:
../../../platform/hal/plat_addr_map.h:
../../../platform/hal/best1306p/plat_addr_map_best1306p.h:
../../../platform/hal/plat_types.h:
../../../utils/libc/inc/stddef.h:
../../../utils/libc/inc/stdint.h:
../../../utils/libc/inc/stdbool.h:
../../../platform/hal/hal_trace_mod.h:
../../../platform/hal/hal_trace_level.h:
../../../platform/hal/hal_timer.h:
../../../platform/hal/hal_cmu.h:
../../../platform/cmsis/inc/cmsis.h:
../../../platform/hal/plat_addr_map.h:
../../../platform/cmsis/inc/best1306p.h:
../../../platform/cmsis/inc/core_cm33.h:
../../../platform/cmsis/inc/cmsis_version.h:
../../../platform/cmsis/inc/cmsis_compiler.h:
../../../platform/cmsis/inc/cmsis_gcc.h:
../../../platform/cmsis/inc/mpu_armv8.h:
../../../platform/cmsis/inc/system_ARMCM.h:
../../../platform/hal/best1306p/hal_cmu_best1306p.h:
../../../platform/hal/hal_bootmode.h:
../../../platform/hal/hal_norflash.h:
../../../platform/hal/hal_cmu.h:
../../../platform/hal/hal_wdt.h:
../../../platform/drivers/ana/pmu.h:
../../../platform/hal/hal_analogif.h:
../../../platform/hal/hal_gpio.h:
../../../platform/hal/hal_iomux.h:
../../../platform/hal/best1306p/hal_iomux_best1306p.h:
../../../platform/hal/plat_types.h:
../../../platform/hal/hal_gpadc.h:
../../../platform/drivers/ana/best1306p/pmu_best1306p.h:
../../../utils/boot_struct/tool_msg.h:
../../../utils/crc/crc_c.h:
../../../platform/cmsis/inc/cmsis_nvic.h:
../../../platform/cmsis/inc/cmsis.h:
../../../utils/libc/inc/string.h:
../../../utils/libc/inc/stddef.h:
../../../utils/libc/inc/stdint.h:
../../../platform/hal/hal_cache.h:
../../../utils/heap/heap_api.h:
../../../utils/heap/multi_heap.h:
../../../utils/libc/inc/stdlib.h:
../../../utils/heap/custom_allocator.h:
../../../utils/lzma/bes_lzma_api.h:

cmd_utils/lzma/bes_lzma_utils.o := arm-none-eabi-gcc -MD -MP -MF utils/lzma/.bes_lzma_utils.o.d -MT utils/lzma/bes_lzma_utils.o  -I../../../utils/lzma -I../../../utils/lzma/ -I../../../utils/heap/ -I../../../platform/cmsis/inc -I../../../platform/hal -DPROGRAMMER_INFLASH -DOTA_ENABLE -DOTA_ENABLE -DDOWNLOAD_UART_BANDRATE=921600 -DOTA_CODE_OFFSET=0x18000 -DAPP_ENTRY_ADDRESS=0x2c000000+0x18000 -DCHIP_BEST1306P -DCHIP_HAS_USB -DCP_IN_SAME_EE -I../../../utils/libc/inc -ffreestanding -nostdinc -DNOSTD -DDEBUG -U__INT32_TYPE__ -D__INT32_TYPE__=int -U__UINT32_TYPE__ -DPROGRAMMER -DLIBC_ROM -DBT_SERVICE_ENABLE -DIBRT_UI -DBT_SVC_FW_PRODUCT_EARBUDS -DBT_SVC_MODULE_BT_ENABLED -DBT_SVC_MODULE_TWS_ENABLED -DBT_SVC_MODULE_IBRT_ENABLED -DBT_HFP_SUPPORT -DBT_A2DP_SUPPORT -DBT_AVRCP_SUPPORT -DBT_SPP_SUPPORT -D__WATCHER_DOG_RESET__ -DOTA_BIN_COMPRESSED -DAUDIO_OUTPUT_VOLUME_DEFAULT=10 -DINT_LOCK_EXCEPTION -DTRACE_MAXIMUM_LOG_LEN=120 -DFLASH_SIZE=0x400000 -DPSRAM_SIZE=0x400000 -DSIMULTANEOUS_AWAKEN -I../../../config/prod_test/ota_copy -I../../../config/_default_cfg_src_ -I../../../include -DUNALIGNED_ACCESS -mthumb -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -Werror -DAPP_UI_THREAD_SIZE=2048 -DTRACE_CODE_IN_RAM -DTRACE_CP_CPU_OUTPUT -fno-common -fmessage-length=0 -Wall -fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer -fsigned-char -fno-aggressive-loop-optimizations -fno-isolate-erroneous-paths-dereference -fsingle-precision-constant -Wdouble-promotion -Wfloat-conversion -g -O2 -DDEBUG_IRQ_HUNG -Werror=date-time -Wlogical-op -Wimplicit-fallthrough -Wno-trigraphs -fno-strict-aliasing -fno-tree-loop-distribute-patterns -I../../../platform/cmsis/inc/ -I../../../utils/heap/ -I../../../utils/lzma/C -I../../../apps/audioplayers -I../../../apps/battery -I../../../apps/common -I../../../apps/main -I../../../apps/factory -I../../../apps/pwl -I../../../apps/key -I../../../utils/boot_struct -I../../../utils/crc -I../../../utils/heap -I../../../utils/lzma -I../../../services/bt_app -I../../../services/nv_section/factory_section -I../../../services/ble_stack/ble_ip -I../../../services/resources -I../../../services/overlay -I../../../services/osif -I../../../services/norflash_api -I../../../bthost/stack/rom -I../../../bthost/stack/common -I../../../bthost/service/common -I../../../bthost/service/bt_app/inc -I../../../bthost/service/bt_app/inc/a2dp_codecs -I../../../bthost/service/bt_source/inc -I../../../bthost/stack/bt_if/inc -I../../../bthost/stack/bt_profiles/inc -I../../../bthost/bt_vendor -I../../../bthost/stack/rom -I../../../bthost/stack/ble_stack_new/inc/hci -I../../../bthost/stack/ble_stack_new/inc/l2cap -I../../../bthost/stack/ble_stack_new/inc/gap -I../../../bthost/stack/ble_stack_new/inc/gatt -I../../../bthost/stack/ble_stack_new/inc/gaf -I../../../bthost/stack/ble_stack_new/inc/iso -I../../../bthost/stack/ble_stack_new/inc/profiles -I../../../bthost/stack/ble_stack_new/inc -I../../../bthost/adapter/inc/adapter_service -I../../../bthost/adapter/inc/bt/common -I../../../bthost/adapter/inc/bt/source -I../../../bthost/adapter/inc/bt/a2dp -I../../../bthost/adapter/inc/bt/avrcp -I../../../bthost/adapter/inc/bt/hfp -I../../../bthost/adapter/inc/bt/hci -I../../../bthost/adapter/inc/bt/l2cap -I../../../bthost/adapter/inc/bt/sdp -I../../../bthost/adapter/inc/bt/me -I../../../bthost/adapter/inc/bt/ibrt -I../../../bthost/adapter/inc/bt/spp -I../../../bthost/adapter/inc/bt/dip -I../../../bthost/adapter/inc/bt/hid -I../../../bthost/adapter/inc/bt/map -I../../../bthost/adapter/inc/bt -I../../../bthost/adapter/inc/tws -I../../../bthost/adapter/inc/nv -I../../../bthost/adapter/inc/ble/common -I../../../bthost/adapter/inc/ble/aob -I../../../bthost/adapter/inc/ble/gap -I../../../bthost/adapter/inc/ble/gatt -I../../../bthost/adapter/inc/ble/gfps -I../../../bthost/adapter/inc/ble/tile -I../../../bthost/adapter/inc/ble/dp -I../../../bthost/adapter/inc/ble/ai -I../../../bthost/adapter/inc/ble/walkie_talkie -I../../../bthost/adapter/inc/ble/rate_test -I../../../bthost/adapter/inc/ble -I../../../services/bt_if_enhanced -I../../../platform/drivers/bt -I../../../platform/drivers/ana -I../../../platform/hal -I../../../tests/ota_boot/inc -I../../../utils/hwtimer_list -I../../../utils/cqueue -I../../../utils/intersyshci -I../../../utils/retention_ram -I../../../platform/hal/best1000 -I../../../platform/drivers/norflash -I../../../utils/boot_struct -I../../../mbed/api -I../../../include -std=gnu99 -Werror=implicit-int -Werror-implicit-function-declaration -c -o utils/lzma/bes_lzma_utils.o ../../../utils/lzma/bes_lzma_utils.c
