# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 10 QQ2A.200305.002 6138846 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:10/QQ2A.200305.002/6138846:user/release-keys

$(call inherit-product-if-exists, vendor/google/walleye/walleye-vendor.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/gapps/config.mk)
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
USE_MESSAGING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Disable Faceunluck
TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK := true
TARGET_FACE_UNLOCK_SUPPORTED := false

