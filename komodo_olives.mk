#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Komodo OS stuff
$(call inherit-product, vendor/komodo/config/common.mk)

# Inherit from olives device
$(call inherit-product, device/xiaomi/olives/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olives
PRODUCT_NAME := komodo_olives
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8 Series
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Komodo Stuff
KOMODO_OFFICIAL := true
KOMODO_GAPPS_TYPE := nogapps
KOMODO_VARIANT := RELEASE

# Some build flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.220105.002 7961164 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:12/SQ1A.220105.002/7961164:user/release-keys"
