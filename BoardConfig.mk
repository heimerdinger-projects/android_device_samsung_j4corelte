#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/j4corelte
TARGET_VENDOR := samsung

# Inherit from common msm8917-common
-include device/samsung/msm8917-common/BoardConfigCommon.mk

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Assert
TARGET_OTA_ASSERT_DEVICE := j4corelte, j4coreltejx

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := RG13A002KU
TARGET_NO_BOOTLOADER := true

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=27

# Display
TARGET_SCREEN_DENSITY := 320

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USES_MKE2FS := true

# Kernel
TARGET_KERNEL_CONFIG := j4corelte_defconfig
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Low RAM Devices
TARGET_HAS_LOW_RAM := true
MALLOC_SVELTE := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_VENDORIMAGE_PARTITION_SIZE := 260046848
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13260271616
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 73400320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm8937

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/libsensorndkbridge.so|libbase_shim.so

# SurfaceFlinger
TARGET_USE_QCOM_SURFACEFLINGER := true

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Inherit from the proprietary version
-include vendor/samsung/j4corelte/BoardConfigVendor.mk
