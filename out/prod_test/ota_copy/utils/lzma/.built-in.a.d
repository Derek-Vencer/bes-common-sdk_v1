
cmd_utils/lzma/built-in.a := ( /usr/bin/printf 'create utils/lzma/built-in.a\n addmod utils/lzma/bes_lzma_api.o,utils/lzma/C/LzmaDec.o,utils/lzma/bes_lzma_utils.o\n save\nend' | arm-none-eabi-ar -M )
