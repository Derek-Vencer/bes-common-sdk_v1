
cmd_nn/beco/Source/built-in.a := ( /usr/bin/printf 'create nn/beco/Source/built-in.a\n addmod \n addlib nn/beco/Source/libbeco/built-in.a\n addlib nn/beco/Source/beco_nn/built-in.a\n addlib nn/beco/Source/beco_dsp/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
