
cmd_utils/libc/built-in.a := ( /usr/bin/printf 'create utils/libc/built-in.a\n addmod utils/libc/libc_rom.o,utils/libc/libc_rom_mem.o,utils/libc/memcmp.o,utils/libc/strlen.o\n save\nend' | arm-none-eabi-ar -M )
