
cmd_utils/encrypt/built-in.a := ( /usr/bin/printf 'create utils/encrypt/built-in.a\n addmod \n addlib utils/encrypt/libcryption_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
