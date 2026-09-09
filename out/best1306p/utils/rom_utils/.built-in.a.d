
cmd_utils/rom_utils/built-in.a := ( /usr/bin/printf 'create utils/rom_utils/built-in.a\n addmod \n addlib utils/rom_utils/best1306p_librom_utils_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
