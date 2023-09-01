#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aicp_pstar
PRODUCT_DEVICE := pstar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20 pro
PRODUCT_MANUFACTURER := motorola
PRODUCT_SYSTEM_NAME := pstar_retail

# Build info
BUILD_FINGERPRINT := "motorola/pstar_retail/pstar:12/S1RAS32.41-20-16-11/2d77a8-3df6d:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pstar_retail-user 12 S1RAS32.41-20-16-11 2d77a8-3df6d release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Vitor Nogueira (vulkan)"
