
cmd_services/capsensor/built-in.a := ( /usr/bin/printf 'create services/capsensor/built-in.a\n addmod services/capsensor/touch_wear_core.o,services/capsensor/capsensor_debug_server.o,services/capsensor/capsensor_factory_cal.o\n addlib services/capsensor/capsensor_algorithm/built-in.a\n addlib services/capsensor/../../platform/drivers/capsensor/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
