
cmd_platform/cmsis/DSP_Lib/cmsis_dsp.o := arm-none-eabi-gcc -Wl,-r,--whole-archive -nostdlib -nostartfiles -mthumb -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o platform/cmsis/DSP_Lib/cmsis_dsp.o platform/cmsis/DSP_Lib/cmsis_dsp_lib.a
