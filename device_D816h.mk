$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/D816h/D816h-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/D816h/overlay

LOCAL_PATH := device/htc/D816h

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6592

PRODUCT_PACKAGES += \
    libmtkrilw

PRODUCT_PACKAGES += \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.mt6592

PRODUCT_PACKAGES += \
    audio_policy.default

PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx

PRODUCT_COPY_FILES += \
    device/htc/D816h/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

PRODUCT_COPY_FILES += \
    device/htc/D816h/init.recovery.mt6592.rc:root/init.recovery.mt6592.rc

PRODUCT_COPY_FILES += \
    device/htc/D816h/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/htc/D816h/fstab.mt6592:root/fstab.mt6592 \
    device/htc/D816h/init.mt6592.rc:root/init.mt6592.rc \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_D816h
PRODUCT_DEVICE := D816h

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
