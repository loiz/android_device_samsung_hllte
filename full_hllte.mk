# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from ha3g device
$(call inherit-product, device/samsung/hllte/hllte.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_hllte
PRODUCT_DEVICE := hllte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-N7505
