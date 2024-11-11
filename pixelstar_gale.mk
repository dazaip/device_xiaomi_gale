#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/gale/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# configs device
TARGET_USES_BLUR_RECENT := false
TARGET_FACE_UNLOCK_SUPPORTED := true
ADD_CUSTOM_APPS := true
USE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_SUPPORTS_PREBUILT_UPDATABLE_APEX := false
TARGET_SUPPORTS_GOOGLE_BATTERY := false

PRODUCT_NAME := pixelstar_gale
PRODUCT_DEVICE := gale
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23106RN0DA

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_gale-user 12 SP1A.210812.016 V816.0.2.0.UGPMIXM release-keys"

BUILD_FINGERPRINT := alps/vnd_gale/gale:12/SP1A.210812.016/V816.0.2.0.UGPMIXM:user/release-keys
