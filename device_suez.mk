# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/amazon/suez/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREBUILT_DPI := hdpi xhdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/amazon/suez/rootdir,root)

# HIDL
include device/amazon/suez/hidl.mk

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub \
    libalsautils \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinyxml \
    libaudioroute \
    libaudiospdif \
    libeffects
    
# Bluetooth
PRODUCT_PACKAGES += \
    bluetooth.default

# Graphics
PRODUCT_PACKAGES += \
    libion \
    libdrm

# Lights
PRODUCT_PACKAGES += \
    lights.mt8173

# Power HAL
PRODUCT_PACKAGES += \
    power.mt8173

# Sensors
PRODUCT_PACKAGES += \
    libsensorndkbridge

# Shim Libraries
PRODUCT_PACKAGES += \
    libshim_log \
    libshim_gui \
    libshim_ui \
    libshim_drm \
    libshim_dolby

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Wifi Only
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.radio.noril=1

# Network / IPv6
PRODUCT_PACKAGES += \
    netd \
    ebtables \
    ethertypes

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/suez/suez-vendor.mk)
