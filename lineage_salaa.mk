#
# SPDX-FileCopyrightText: 2019 The Android Open Source Project
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common Evo-X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/salaa/device.mk)

# Build flags
TARGET_DISABLE_MATLOG := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_SU := false

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device Information
PRODUCT_BRAND := realme
PRODUCT_DEVICE := salaa
PRODUCT_MANUFACTURER := realme
PRODUCT_MODEL := salaa
PRODUCT_NAME := lineage_salaa

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += BuildDesc=$(call normalize-path-list, "sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1668670161293 release-keys") \
