$(call inherit-product, device/htc/m8/full_m8.mk)

# Enhanced NFC
$(call inherit-product, vendor/tesla/config/nfc_enhanced.mk)

# Inherit some common Tesla stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)

PRODUCT_NAME := tesla_m8
