# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from msm8909w device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := zte
PRODUCT_DEVICE := msm8909w
PRODUCT_MANUFACTURER := zte
PRODUCT_NAME := lineage_msm8909w
PRODUCT_MODEL := ZW20

PRODUCT_GMS_CLIENTID_BASE := android-zte
TARGET_VENDOR := zte
TARGET_VENDOR_PRODUCT_NAME := msm8909w
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="ZW20-user 8.1.0 OPM1.171019.011 148 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := ZTE/ZW20/msm8909w:8.1.0/OPM1.171019.011/20200207.120017:user/release-keys
