# Check for target product
ifeq (pa_toro,$(TARGET_PRODUCT))

# Inherit CM9 device configuration
$(call inherit-product, device/samsung/toro/cm.mk)

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# ParanoidAndroid device specific configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd.density=192

PRODUCT_NAME := pa_toro

GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))

endif

