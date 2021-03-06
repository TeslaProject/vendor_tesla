# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from aosp products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/bacon/device.mk)

# Enhanced NFC
#$(call inherit-product, vendor/tesla/configs/nfc_enhanced.mk)

# Inherit some common Tesla stuff.
$(call inherit-product, vendor/tesla/configs/common.mk)

PRODUCT_NAME := tesla_bacon
PRODUCT_DEVICE := bacon
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := A0001
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_PRODUCT=FIND7OP \
	TARGET_DEVICE=A0001 \
	BUILD_FINGERPRINT="4.3/JLS36C/1390465867:user/release-keys" \
	PRIVATE_BUILD_DESC="msm8974-user 4.3 JLS36C eng.root.20140510.152835 release-keys"

# Inherit from proprietary blobs
$(call inherit-product-if-exists, vendor/oppo/find7op/find7op-vendor.mk)
$(call inherit-product-if-exists, vendor/oppo/find7a/find7a-vendor.mk)


