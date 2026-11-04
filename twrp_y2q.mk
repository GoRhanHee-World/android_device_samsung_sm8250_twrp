#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PLATFORM := kona
DEVICE_PATH := device/samsung/y2q

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := y2q
PRODUCT_NAME := twrp_y2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G986N
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := y2q
TARGET_OTA_ASSERT_DEVICE := y2q,y2qksx
