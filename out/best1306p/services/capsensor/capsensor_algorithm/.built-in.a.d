
cmd_services/capsensor/capsensor_algorithm/built-in.a := ( /usr/bin/printf 'create services/capsensor/capsensor_algorithm/built-in.a\n addmod \n addlib services/capsensor/capsensor_algorithm/libcapsensor_algorithm_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
