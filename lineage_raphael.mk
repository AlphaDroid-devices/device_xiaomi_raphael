# Copyright (C) 2020 lineage
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Boot Animation
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
# AlphaDroid
ALPHA_BUILD_TYPE := OFFICIAL
ALPHA_MAINTAINER := OnettBoots
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9T Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="raphael" \
    TARGET_DEVICE="raphael"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
