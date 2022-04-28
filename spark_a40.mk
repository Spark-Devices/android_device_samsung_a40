$(call inherit-product, device/samsung/a40/full_a40.mk)
$(call inherit-product, vendor/spark/config/common_full_phone.mk)
PRODUCT_NAME := spark_a40

# Additional Props
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
