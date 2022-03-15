# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rhode device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := rhode
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_rhode
PRODUCT_MODEL := moto g(100)

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := rhode
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="rhode_g-user 12 S1SRS32M.38-132-3 112e7 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/rhode_g/rhode:12/S1SRS32M.38-132-3/112e7:user/release-keys
