
cmd_nn/built-in.a := ( /usr/bin/printf 'create nn/built-in.a\n addmod \n addlib nn/beco/built-in.a\n addlib nn/cmsis-nn/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
