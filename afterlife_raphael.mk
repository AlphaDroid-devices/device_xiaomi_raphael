#
# Copyright (C) 2021-2022 The Project Afterlife
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common afterlife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# ViPER4Android FX
$(call inherit-product, vendor/v4afx/config.mk)

# Inherit Google Camera
$(call inherit-product-if-exists, vendor/Gcam/config.mk)

# Rom Flags
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_FACEUNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_CHARGER := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# afterlife
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true
AFTERLIFE_EXTRA := true

# Afterlife
AFTERLIFE_MAINTAINER := OnettBoots

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9T Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="raphael"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
