#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from x1q device
$(call inherit-product, device/samsung/x1q/device.mk)

PRODUCT_DEVICE := x1q
PRODUCT_NAME := omni_x1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G981N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="x1qksx-user 11 RP1A.200720.012 G981NKSS8IYC2 release-keys"

BUILD_FINGERPRINT := samsung/x1qksx/x1q:11/RP1A.200720.012/G981NKSS8IYC2:user/release-keys
