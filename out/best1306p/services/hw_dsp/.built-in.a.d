
cmd_services/hw_dsp/built-in.a := ( /usr/bin/printf 'create services/hw_dsp/built-in.a\n addmod services/hw_dsp/src/hw_filter_codec_iir.o,services/hw_dsp/src/hw_limiter_cfg.o\n save\nend' | arm-none-eabi-ar -M )
