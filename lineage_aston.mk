#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from aston device
$(call inherit-product, device/oneplus/xigua/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_xigua
PRODUCT_DEVICE := xigua
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJA110

PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := PJA110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PJA110-user 14 TP1A.220905.001 U.R4T3.19135c3-17dcf-a29fb release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/PJA110/PJA110:14/TP1A.220905.001/U.R4T3.19135c3-17dcf-a29fb:user/release-keys
