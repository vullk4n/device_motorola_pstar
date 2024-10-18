#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common derp stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from pstar device
$(call inherit-product, device/motorola/pstar/device.mk)

DERP_BUILDTYPE := Official
TARGET_USES_MINE_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_pstar
PRODUCT_DEVICE := pstar
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20 pro
PRODUCT_MANUFACTURER := motorola
PRODUCT_SYSTEM_NAME := pstar_retail

# Build info
# BUILD_FINGERPRINT := "motorola/pstar_retail/pstar:13/T1RAS33.55-15-16-5/d9def9-6b8134:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pstar_retail-user 13 T1RAS33.55-15-16-5 d9def9-6b8134 release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
