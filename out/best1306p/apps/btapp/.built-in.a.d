
cmd_apps/btapp/built-in.a := ( /usr/bin/printf 'create apps/btapp/built-in.a\n addmod apps/btapp/bt_app_api.o\n addlib apps/btapp/bt_app/built-in.a\n addlib apps/btapp/app_rssi/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
