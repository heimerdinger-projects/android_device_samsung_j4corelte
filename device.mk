#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Inherit from msm8917-common
$(call inherit-product, device/samsung/msm8917-common/msm8917.mk)

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5 \
    android.hardware.camera.provider@2.5-impl \
    android.hardware.camera.provider@2.5-service \
    android.hardware.camera.provider@2.6 \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.device@3.3 \
    android.hardware.camera.device@3.4 \
    android.hardware.camera.device@3.5 \
    vendor.qti.hardware.camera.device@1.0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/L08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/L08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/configs/camera/P08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/P08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/configs/camera/Q05QL_s5k5e9yx_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q05QL_s5k5e9yx_module_info.xml \
    $(LOCAL_PATH)/configs/camera/Q08QL_s5k4h5yc_module_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/Q08QL_s5k4h5yc_module_info.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h5yc_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k4h5yc_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k5e3yx_f2_2_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e3yx_f2_2_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k5e9yx_q05ql_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/s5k5e9yx_q05ql_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/sdm450_camera_j4corelte.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/sdm450_camera_j4corelte.xml

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8937

# Do not spin up a separate process for the network stack on go devices, use an in-process APK.
PRODUCT_PACKAGES += InProcessNetworkStack
PRODUCT_PACKAGES += CellBroadcastAppPlatform
PRODUCT_PACKAGES += CellBroadcastServiceModulePlatform
PRODUCT_PACKAGES += com.android.tethering.inprocess

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8937
    
# Keymaster    
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service 
    
# Shims
PRODUCT_PACKAGES += \
    libbase_shim

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
# # Inherit from proprietary files
$(call inherit-product, vendor/samsung/j4corelte/j4corelte-vendor.mk)
