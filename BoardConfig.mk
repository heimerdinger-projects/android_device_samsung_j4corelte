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

# Kernel
TARGET_KERNEL_CONFIG := j4corelte_defconfig
TARGET_KERNEL_HEADER_ARCH := arm

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm8937

# SurfaceFlinger
TARGET_USE_QCOM_SURFACEFLINGER := true

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Inherit from the proprietary version
-include vendor/samsung/j4corelte/BoardConfigVendor.mk
