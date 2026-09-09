
cmd_services/audioflinger/built-in.a := ( /usr/bin/printf 'create services/audioflinger/built-in.a\n addmod services/audioflinger/af_stream_sw_gain.o,services/audioflinger/audioflinger.o\n save\nend' | arm-none-eabi-ar -M )
