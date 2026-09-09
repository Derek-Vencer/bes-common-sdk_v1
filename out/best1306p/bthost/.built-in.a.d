
cmd_services/../bthost/built-in.a := ( /usr/bin/printf 'create services/../bthost/built-in.a\n addmod \n addlib services/../bthost/adapter/built-in.a\n addlib services/../bthost/service/built-in.a\n addlib services/../bthost/porting/built-in.a\n addlib services/../bthost/bt_vendor/built-in.a\n addlib services/../bthost/stack/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
