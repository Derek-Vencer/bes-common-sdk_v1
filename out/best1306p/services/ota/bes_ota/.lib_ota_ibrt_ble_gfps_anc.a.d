
cmd_services/ota/bes_ota/lib_ota_ibrt_ble_gfps_anc.a := ( [ -d services/ota/bes_ota/ ] || mkdir -p services/ota/bes_ota/ ) && ( /usr/bin/printf 'create services/ota/bes_ota/lib_ota_ibrt_ble_gfps_anc.a\n addmod services/ota/bes_ota/src/ota_ble.o,services/ota/bes_ota/src/ota_config.o,services/ota/bes_ota/src/ota_control.o,services/ota/bes_ota/src/ota_spp.o\n save\nend' | arm-none-eabi-ar -M )
