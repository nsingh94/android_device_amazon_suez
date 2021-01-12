# Inherit from the common Open Source product configuration
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)
#$(call inherit-product-if-exists, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/amazon/suez/device_suez.mk)

PRODUCT_DEVICE := suez
PRODUCT_NAME := lineage_suez
PRODUCT_BRAND := Amazon
PRODUCT_MODEL := Fire HD 10
PRODUCT_MANUFACTURER := Amazon
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_RESTRICT_VENDOR_FILES := false
