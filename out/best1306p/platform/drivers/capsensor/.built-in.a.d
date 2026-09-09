
cmd_services/capsensor/../../platform/drivers/capsensor/built-in.a := ( /usr/bin/printf 'create services/capsensor/../../platform/drivers/capsensor/built-in.a\n addmod services/capsensor/../../platform/drivers/capsensor/capsensor_driver.o\n addlib services/capsensor/../../platform/drivers/capsensor/best1306p/built-in.a\nsave\nend' | arm-none-eabi-ar -M )
