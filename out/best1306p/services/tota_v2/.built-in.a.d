
cmd_services/tota_v2/built-in.a := ( /usr/bin/printf 'create services/tota_v2/built-in.a\n addmod \n addlib services/tota_v2/libtota_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
