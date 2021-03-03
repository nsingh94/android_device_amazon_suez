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

BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Global Flags
TARGET_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BOARD_GLOBAL_CLFAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# WLAN
BOARD_WLAN_DEVICE := mt66xx
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:= STA
WIFI_DRIVER_FW_PATH_AP:= AP
WIFI_DRIVER_FW_PATH_P2P:= P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/amazon/suez/configs/bluetooth

# DRM
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1

# Graphics
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 17825792
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1692925952
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

# Disable API check
WITHOUT_CHECK_API := true

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
    /system/vendor/bin/amzn_dha_hmac|libshim_drm.so \
    /system/vendor/bin/amzn_dha_tool|libshim_drm.so \
    /system/vendor/lib/libcam_utils.so|libshim_ui.so \
    /system/vendor/lib/libMtkOmxVenc.so|libshim_ui.so \
    /system/vendor/lib/libui_ext.so|libshim_ui.so \
    /system/vendor/lib64/libui_ext.so|libshim_ui.so \
    /system/vendor/lib/libstagefright_soft_ddpdec.so|libshim_dolby.so
