#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(DEVICE_PATH)

$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd \
    qcom_decrypt \
    qcom_decrypt_fbe

SM8250_RECOVERY_LIBRARIES := \
    android.hardware.gatekeeper@1.0 \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    libbase \
    libbinder \
    libc \
    libc++ \
    libcrypto \
    libcutils \
    libdl \
    libdmabufheap \
    libhardware \
    libhidlbase \
    libion \
    liblog \
    libm \
    libutils \
    libxml2

TARGET_RECOVERY_DEVICE_MODULES += $(SM8250_RECOVERY_LIBRARIES)
RECOVERY_LIBRARY_SOURCE_FILES += $(addprefix $(TARGET_OUT_SHARED_LIBRARIES)/,$(addsuffix .so,$(SM8250_RECOVERY_LIBRARIES)))

TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3200
