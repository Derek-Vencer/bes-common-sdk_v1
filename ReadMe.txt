bash ./tools/com_sdk/cust/build_pro_1306p_0015.sh \
2>&1 | tee build_sdk_v1_retry.txt

bash ./tools/build_compressed_ota.sh \
out/best1306p/best1306p.bin \
out/best1306p/best1306p_ota_0909_sdk_v1.mp3