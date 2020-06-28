#
# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2020 Evolution X Team
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Maintainer Properties
EVO_DONATE_URL := https://www.paypal.me/asavvo01
EVO_SUPPORT_URL := https://t.me/EvolutionXPyxis
EVO_MAINTAINER := DarkAngelGR

# Inherit from pyxis device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := pyxis
PRODUCT_NAME := aosp_pyxis
PRODUCT_MODEL :=  Mi 9 Lite
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="pyxis" \
    TARGET_DEVICE="pyxis"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
