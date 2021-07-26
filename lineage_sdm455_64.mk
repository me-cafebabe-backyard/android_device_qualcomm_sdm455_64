#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from DRG device
$(call inherit-product, device/qualcomm/sdm455_64/device.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

PRODUCT_NAME := lineage_sdm455_64
PRODUCT_DEVICE := sdm455_64
PRODUCT_MANUFACTURER := Qualcomm
PRODUCT_BRAND := Qualcomm
PRODUCT_MODEL := SDM455

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=DRG_sprout \
    PRODUCT_NAME=Dragon_00WW \
    PRIVATE_BUILD_DESC="Dragon_00WW 10 QKQ1.190828.002 00WW_4_150 release-keys"

BUILD_FINGERPRINT := Nokia/Dragon_00WW/DRG_sprout:10/QKQ1.190828.002/00WW_4_150:user/release-keys
