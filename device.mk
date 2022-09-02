#
# Copyright (C) 2020 The lineage Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product-if-exists, vendor/vsmart/casuarina/casuarina-vendor.mk)

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_profiles_vendor.xml

# Init
PRODUCT_PACKAGES += \
    init.casuarina.rc

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/pronto_wlan.ko:$(TARGET_COPY_OUT_SYSTEM)/lib/modules/pronto_wlan.ko

# Inherit from sdm632-common
$(call inherit-product, device/vsmart/sdm632-common/sdm632.mk)
