# Inherit device configuration
$(call inherit-product, device/samsung/hllte/full_hllte.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := hllte
PRODUCT_DEVICE := hllte
PRODUCT_NAME := cm_hllte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N7505
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-N705 \
    PRODUCT_NAME=hlltexx \
    PRODUCT_DEVICE=hllte \
    TARGET_DEVICE=hllte \
    BUILD_FINGERPRINT="samsung/hlltexx/hllte:4.4.2/KOT49H/N7505POUCNK4:user/release-keys" \
    PRIVATE_BUILD_DESC="hlltexx-user 4.4.2 KOT49H N7505POUCNK4 release-keys"
