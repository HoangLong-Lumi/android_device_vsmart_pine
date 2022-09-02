#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from casuarina device
$(call inherit-product, device/vsmart/casuarina/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_casuarina
PRODUCT_BRAND := vsmart
PRODUCT_DEVICE := casuarina
PRODUCT_MANUFACTURER := vsmart
PRODUCT_MODEL := Joy 3

PRODUCT_BUILD_PROP_OVERRIDES += \
        TARGET_DEVICE=casuarina \
        PRIVATE_BUILD_DESC="casuarina-user 10 QKQ1.200311.002 V430A_OPN_U_B13_210315 release-keys"

BUILD_FINGERPRINT := vsmart/casuarina_open/casuarina:10/QKQ1.200311.002/V430A_OPN_U_B13_210315:user/release-keys
