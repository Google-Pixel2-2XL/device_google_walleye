#
# Copyright 2016 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)


# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#
# All components inherited here go to vendor image
#
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Inherit some common EvolutionX stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# EvolutionX Specific Flags
EVO_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS := true

# Inherit product specific makefiles
$(call inherit-product, device/google/walleye/device.mk)
$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := google
PRODUCT_NAME := evolution_walleye
PRODUCT_DEVICE := walleye
PRODUCT_MODEL := Pixel 2