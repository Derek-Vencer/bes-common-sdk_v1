
cmd_services/btservice/built-in.a := ( /usr/bin/printf 'create services/btservice/built-in.a\n addmod \n addlib services/btservice/btservice_multipoint_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
