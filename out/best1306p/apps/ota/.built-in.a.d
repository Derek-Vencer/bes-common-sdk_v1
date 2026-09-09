
cmd_apps/ota/built-in.a := ( /usr/bin/printf 'create apps/ota/built-in.a\n addmod apps/ota/app_ibrt_ota_cmd.o,apps/ota/app_ibrt_ota_update.o\n save\nend' | arm-none-eabi-ar -M )
