#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TAB-A05-BD device
$(call inherit-product, device/sts-tottori/TAB-A05-BD/device.mk)

PRODUCT_DEVICE := TAB-A05-BD
PRODUCT_NAME := omni_TAB-A05-BD
PRODUCT_BRAND := benesse
PRODUCT_MODEL := TAB-A05-BD
PRODUCT_MANUFACTURER := sts-tottori

PRODUCT_GMS_CLIENTID_BASE := android-sts-tottori

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TAB-A05-BD-user 9 01.00.000 01.00.000 release-keys"

BUILD_FINGERPRINT := benesse/TAB-A05-BD/TAB-A05-BD:9/01.00.000/01.00.000:user/release-keys
