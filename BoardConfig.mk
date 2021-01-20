# headers
TARGET_SPECIFIC_HEADER_PATH := device/amazon/suez/include

# inherit from the proprietary version
-include vendor/amazon/suez/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := mt8173

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := suez

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a

# Kernel Config
BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x07f80000
BOARD_RAMDISK_OFFSET := 0x03400000
BOARD_SECOND_OFFSET := 0x00e80000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) 

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := suez_defconfig
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/amazon/suez
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Flags
TARGET_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE -DCAMERA_VENDOR_L_COMPAT

# WLAN
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/amazon/suez/configs/bluetooth

# Graphics
BOARD_EGL_CFG := device/amazon/suez/configs/graphics/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024

# Surfaceflinger optimization for VD surfaces
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 17825792
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1692925952
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x6b4300000 # 28792848384
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# OTA
TARGET_OTA_ASSERT_DEVICE := suez
BLOCK_BASED_OTA := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Screen
TARGET_SCREEN_WIDTH := 1200
TARGET_SCREEN_HEIGHT := 1920
DEVICE_RESOLUTION := 1200x1920

# TWRP
ifneq (,$(strip $(wildcard bootable/recovery-twrp/twrp.cpp)))
#RECOVERY_VARIANT := twrp
endif
TW_EXCLUDE_MTP := false
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TW_THEME := landscape_mdpi
#TWRP_EVENT_LOGGING := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true 
RECOVERY_TOUCHSCREEN_FLIP_X := true
BOARD_HAS_FLIPPED_SCREEN := true

# Disable API check
WITHOUT_CHECK_API := true

# Audio
BOARD_USES_MTK_AUDIO := true
# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# OMX
TARGET_OMX_LEGACY_RESCALING:= true

# MediaTek Legacy AV Blob
BOARD_USES_LEGACY_MTK_AV_BLOB := true

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
#TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk
TARGET_HAS_LEGACY_LP_CAM := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/amazon/suez/sepolicy

# Media Extractors
BOARD_SECCOMP_POLICY := \
    device/amazon/suez/seccomp-policy

# Shim Libraries
LINKER_FORCED_SHIM_LIBS := \
    /system/lib/liblog.so|libshim_log.so \
    /system/lib64/liblog.so|libshim_log.so \
    /system/vendor/lib/libcam_utils.so|libshim_ui.so \
    /system/vendor/lib64/libcam_utils.so|libshim_ui.so \
    /system/vendor/lib/libMtkOmxVdecEx.so|libshim_ui.so \
    /system/vendor/lib/libMtkOmxVenc.so|libshim_ui.so \
    /system/vendor/lib/libasp.so|libshim_parcel.so \
    /system/vendor/lib64/libasp.so|libshim_parcel.so \
    /system/vendor/bin/amzn_dha_hmac|libshim_drm.so \
    /system/vendor/bin/amzn_dha_tool|libshim_drm.so \
    /system/vendor/lib/libdrmmtkutil.so|libshim_drm.so \
    /system/vendor/lib64/libdrmmtkutil.so|libshim_drm.so \
    /system/vendor/lib/libwvm.so|libshim_wvm.so
