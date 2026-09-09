
cmd_config/built-in.a := ( /usr/bin/printf 'create config/built-in.a\n addmod config/prod_test/ota_copy/tgt_hardware.o\n save\nend' | arm-none-eabi-ar -M )
