#
# SPDX-FileCopyrightText: LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/nothing/Galaga/device.mk)

# Inherit some common lineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Axion Stuff
AXION_CAMERA_REAR_INFO := 50,8,50
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER :=Rex
AXION_PROCESSOR := MTK_Dimensity_7300_Pro_5G
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_Galaga
PRODUCT_DEVICE := Galaga
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A001

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=Galaga \
    BuildDesc="Galaga-user 15 AP3A.240905.015.A2 2511032121 release-keys" \
    BuildFingerprint=Nothing/Galaga/Galaga:15/AP3A.240905.015.A2/2511032121:user/release-keys
