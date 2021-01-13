# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/amazon/suez/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

TARGET_SCREEN_WIDTH := 1200
TARGET_SCREEN_HEIGHT := 1920

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/amazon/suez/rootdir,root)

# Media Config files
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/amazon/suez/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/amazon/suez/configs/media/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    device/amazon/suez/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    device/amazon/suez/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/amazon/suez/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    device/amazon/suez/configs/media/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg

# Graphics Config files
PRODUCT_COPY_FILES += \
    device/amazon/suez/configs/graphics/powervr.ini:system/etc/powervr.ini

# Thermal Config files
PRODUCT_COPY_FILES += \
    device/amazon/suez/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    device/amazon/suez/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    device/amazon/suez/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    device/amazon/suez/configs/thermal/thermal.policy.conf:system/etc/.tp/thermal.policy.conf

# WiFi Config files
PRODUCT_COPY_FILES += \
    device/amazon/suez/configs/wifi/WMT.cfg:system/etc/firmware/WMT.cfg \
    device/amazon/suez/configs/wifi/WMT_SOC.cfg:system/etc/firmware/WMT_SOC.cfg

# Usr Config files
PRODUCT_COPY_FILES += \
    device/amazon/suez/configs/usr/idc/amazon_touch.idc:system/usr/idc/amazon_touch.idc \
    device/amazon/suez/configs/usr/idc/lightning-device.idc:system/usr/idc/lightning-device.idc \
    device/amazon/suez/configs/usr/keychars/lightning-device.kcm:system/usr/keychars/lightning-device.kcm \
    device/amazon/suez/configs/usr/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    device/amazon/suez/configs/usr/keylayout/lightning-device.kl:system/usr/keylayout/lightning-device.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_0171_Product_040b.kl:system/usr/keylayout/Vendor_0171_Product_040b.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_0171_Product_040c.kl:system/usr/keylayout/Vendor_0171_Product_040c.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_0171_Product_0413.kl:system/usr/keylayout/Vendor_0171_Product_0413.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_045e_Product_0291.kl:system/usr/keylayout/Vendor_045e_Product_0291.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_046d_Product_c21e.kl:system/usr/keylayout/Vendor_046d_Product_c21e.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_054c_Product_05c4.kl:system/usr/keylayout/Vendor_054c_Product_05c4.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_057e_Product_0306.kl:system/usr/keylayout/Vendor_057e_Product_0306.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_0402.kl:system/usr/keylayout/Vendor_1949_Product_0402.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_0404.kl:system/usr/keylayout/Vendor_1949_Product_0404.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_0406.kl:system/usr/keylayout/Vendor_1949_Product_0406.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_0407.kl:system/usr/keylayout/Vendor_1949_Product_0407.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_0409.kl:system/usr/keylayout/Vendor_1949_Product_0409.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_040a.kl:system/usr/keylayout/Vendor_1949_Product_040a.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_1949_Product_0415.kl:system/usr/keylayout/Vendor_1949_Product_0415.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_20a0_Product_0004.kl:system/usr/keylayout/Vendor_20a0_Product_0004.kl \
    device/amazon/suez/configs/usr/keylayout/Vendor_2836_Product_0001.kl:system/usr/keylayout/Vendor_2836_Product_0001.kl

# Audio Config files
PRODUCT_COPY_FILES += \
    device/amazon/suez/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/amazon/suez/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/amazon/suez/configs/audio/AudioParamOptions.xml:system/etc/audio_param/AudioParamOptions.xml

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
    libion

# Graphics (MTK)
PRODUCT_PACKAGES += \
    libgui_ext \
    libui_ext \
    libgralloc_extra

# Lights
PRODUCT_PACKAGES += \
    lights.mt8173

# Power
PRODUCT_PACKAGES += \
	power.default

# network
PRODUCT_PACKAGES += \
    netd
    
# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Shim Libraries
PRODUCT_PACKAGES += \
    libshim_log \
    libshim_ui \
	libshim_parcel \
    libshim_drm

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/suez/suez-vendor.mk)
