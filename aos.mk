# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_plus device
$(call inherit-product, device/zuk/z2_plus/device.mk)

# Inherit some common ATMOIC-OS stuff.
$(call inherit-product, vendor/aos/config/common.mk)
$(call inherit-product, vendor/aos/config/telephony.mk)
$(call inherit-product, vendor/aos/config/version.mk)

#Atomic
WITH_MUSICFX := true
AOS_BUILD_TYPE := PLASMA

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aos_z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := Z2 Plus
PRODUCT_MANUFACTURER := ZUK
PRODUCT_GMS_CLIENTID_BASE := android-zuk
TARGET_VENDOR_PRODUCT_NAME := z2_plus
TARGET_VENDOR_DEVICE_NAME := z2_plus

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="z2_plus" \
    PRODUCT_NAME="z2_plus" \
    BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/3.1.117_171110:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 3.1.117_171110 release-keys"

TARGET_VENDOR := zuk
