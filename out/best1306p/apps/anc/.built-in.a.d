
cmd_apps/anc/built-in.a := ( /usr/bin/printf 'create apps/anc/built-in.a\n addmod apps/anc/src/app_anc.o,apps/anc/src/app_anc_assist_trigger.o,apps/anc/src/app_anc_fade.o,apps/anc/src/app_anc_sync.o,apps/anc/src/app_anc_table.o,apps/anc/src/app_anc_utils.o,apps/anc/src/peak_detector.o\n save\nend' | arm-none-eabi-ar -M )
