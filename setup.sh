VENDOR=$(cat device/samsung/universal7885-common/vendor_name)
if [ ! $VENDOR ]; then
VENDOR=aosp;
fi
# Generate AndroidProducts.mk
echo "# Auto-Generated by device/samsung/a40/setup.sh" > device/samsung/a40/AndroidProducts.mk
echo "PRODUCT_MAKEFILES += \$(LOCAL_DIR)/"$VENDOR"_a40.mk" >>  device/samsung/a40/AndroidProducts.mk

# Generate <vendor>_a40.mk
echo "# Auto-Generated by device/samsung/a40/setup.sh" > device/samsung/a40/"$VENDOR"_a40.mk
echo "\$(call inherit-product, device/samsung/a40/full_a40.mk)" >> device/samsung/a40/"$VENDOR"_a40.mk
if test -f vendor/"$VENDOR"/config/common_full_phone.mk && echo "common_full_phone"; then
	echo "\$(call inherit-product, vendor/"$VENDOR"/config/common_full_phone.mk)" >> device/samsung/a40/"$VENDOR"_a40.mk
elif test -f vendor/"$VENDOR"/config/common.mk && echo "common"; then
	echo "\$(call inherit-product, vendor/"$VENDOR"/config/common.mk)" >> device/samsung/a40/"$VENDOR"_a40.mk
fi
echo "PRODUCT_NAME := "$VENDOR"_a40" >> device/samsung/a40/"$VENDOR"_a40.mk
echo "" >>  device/samsung/a40/"$VENDOR"_a40.mk
echo "# Additional Props" >>  device/samsung/a40/"$VENDOR"_a40.mk
echo "TARGET_FACE_UNLOCK_SUPPORTED := true" >>  device/samsung/a40/"$VENDOR"_a40.mk
echo "TARGET_BOOT_ANIMATION_RES := 1080" >> device/samsung/a40/"$VENDOR"_a40.mk

