
cmd_services/../bthost/service/built-in.a := ( /usr/bin/printf 'create services/../bthost/service/built-in.a\n addmod \n addlib services/../bthost/service/common/built-in.a\n addlib services/../bthost/service/bt_app/built-in.a\n addlib services/../bthost/service/ble_app_new/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
