# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/tesla/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := tesla_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1/LMY47D/1743759:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1 LMY47D 1743759 release-keys"

# Bootanimation
#PRODUCT_BOOTANIMATION := vendor/tesla/proprietary/common/hammerhead/system/media/bootanimation.zip
