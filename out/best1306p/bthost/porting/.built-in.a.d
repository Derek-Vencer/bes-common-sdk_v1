
cmd_services/../bthost/porting/built-in.a := ( /usr/bin/printf 'create services/../bthost/porting/built-in.a\n addmod services/../bthost/porting/os_porting.o\n save\nend' | arm-none-eabi-ar -M )
