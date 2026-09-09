
cmd_services/ota/bes_ota/built-in.a := ( /usr/bin/printf 'create services/ota/bes_ota/built-in.a\n addmod \n addlib services/ota/bes_ota/lib_ota_ibrt_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
