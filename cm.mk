# Release name
PRODUCT_RELEASE_NAME := D816h

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/D816h/device_D816h.mk)
