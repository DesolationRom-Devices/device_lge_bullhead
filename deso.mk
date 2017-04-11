# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/deso/common.mk)

# Overlays (inherit after vendor/aokp to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_NAME := deso_bullhead

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.1.1/N4F26T/3687331:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.1 N4F26T 3687331 release-keys"

