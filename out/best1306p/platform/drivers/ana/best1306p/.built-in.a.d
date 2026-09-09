
cmd_platform/drivers/ana/best1306p/built-in.a := ( /usr/bin/printf 'create platform/drivers/ana/best1306p/built-in.a\n addmod platform/drivers/ana/best1306p/analog_best1306p.o,platform/drivers/ana/best1306p/charger_best1306p.o,platform/drivers/ana/best1306p/pmu_best1306p.o,platform/drivers/ana/best1306p/rf_xtal_best1306p.o\n save\nend' | arm-none-eabi-ar -M )
