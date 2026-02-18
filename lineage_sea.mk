#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/sea/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_sea
PRODUCT_DEVICE := sea
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12S

PRODUCT_SYSTEM_NAME := sea_global
PRODUCT_SYSTEM_DEVICE := sea

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=sea \
    BuildDesc="sea_global-user 14 UP1A.230905.011 V816.0.16.0.UHZMIXM release-keys" \
    BuildFingerprint=Redmi/sea_global/sea:14/UP1A.230905.011/V816.0.16.0.UHZMIXM:user/release-keys
