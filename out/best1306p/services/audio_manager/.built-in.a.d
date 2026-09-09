
cmd_services/audio_manager/built-in.a := ( /usr/bin/printf 'create services/audio_manager/built-in.a\n addmod \n addlib services/audio_manager/libaudio_manager_ble_gfps_anc.a\nsave\nend' | arm-none-eabi-ar -M )
