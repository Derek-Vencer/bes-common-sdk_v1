
cmd_tests/programmer_inflash/built-in.a := ( /usr/bin/printf 'create tests/programmer_inflash/built-in.a\n addmod tests/programmer_inflash/../../platform/main/startup_main.o\n addlib tests/programmer_inflash/libprogrammer_inflash.a\nsave\nend' | arm-none-eabi-ar -M )
