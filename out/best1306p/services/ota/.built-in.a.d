
cmd_services/ota/built-in.a := ( /usr/bin/printf 'create services/ota/built-in.a\n addmod services/ota/ota_basic.o\n addlib services/ota/bes_ota/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
