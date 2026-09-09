
cmd_utils/heap/built-in.a := ( /usr/bin/printf 'create utils/heap/built-in.a\n addmod utils/heap/heap_api.o,utils/heap/multi_heap.o,utils/heap/multi_heap_poisoning.o,utils/heap/pool_api.o\n save\nend' | arm-none-eabi-ar -M )
