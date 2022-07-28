#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from iris device
$(call inherit-product, device/xiaomi/iris/device.mk)

PRODUCT_DEVICE := iris
PRODUCT_NAME := lineage_iris
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := iris for arm64
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="iris-user 11 RKQ1.210327.001 V12.5.12.0.RKRJPKD release-keys"

BUILD_FINGERPRINT := Redmi/iris/iris:11/RKQ1.210327.001/V12.5.12.0.RKRJPKD:user/release-keys
