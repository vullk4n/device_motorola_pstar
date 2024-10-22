#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/motorola/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/pstar

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := pstar

# Display
TARGET_SCREEN_DENSITY := 400

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineageos_pstar_defconfig

# Kernel Modules
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Touch/Power
SOONG_CONFIG_NAMESPACES += MOTO_KONA_TOUCH
SOONG_CONFIG_MOTO_KONA_TOUCH := SINGLE_TAP_PATH USE_TOUCH_POLLING_RATE
SOONG_CONFIG_MOTO_KONA_TOUCH_USE_TOUCH_POLLING_RATE := true
SOONG_CONFIG_MOTO_KONA_TOUCH_SINGLE_TAP_PATH := /sys/devices/platform/soc/a94000.i2c/i2c-2/2-0049/single_click
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/platform/soc/a94000.i2c/i2c-2/2-0049/double_click"

# Inherit from the proprietary version
-include vendor/motorola/pstar/BoardConfigVendor.mk
