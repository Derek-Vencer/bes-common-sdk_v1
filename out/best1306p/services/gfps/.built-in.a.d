
cmd_services/gfps/built-in.a := ( /usr/bin/printf 'create services/gfps/built-in.a\n addmod services/gfps/src/gfps.o,services/gfps/src/gfps_ble.o,services/gfps/src/gfps_rfcomm.o\n addlib services/gfps/libgfps_crypto.a\nsave\nend' | arm-none-eabi-ar -M )
