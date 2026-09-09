
cmd_services/gfps/libgfps_crypto.a := ( [ -d services/gfps/ ] || mkdir -p services/gfps/ ) && ( /usr/bin/printf 'create services/gfps/libgfps_crypto.a\n addmod services/gfps/src/gfps_crypto.o,services/gfps/src/gfps_sass.o\n save\nend' | arm-none-eabi-ar -M )
