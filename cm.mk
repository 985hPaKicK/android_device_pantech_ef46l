# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ef46l

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef46l/device_ef46l.mk)

# Device naming
PRODUCT_DEVICE := ef46l
PRODUCT_NAME := cm_ef46l
PRODUCT_BRAND := SKY
PRODUCT_MODEL := IM-A830L
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_DEFAULT_LANGUAGE := ko
PRODUCT_DEFAULT_REGION := KR

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A830L BUILD_FINGERPRINT=SKY/SKY_IM-A830L/ef46l:4.0.3/IML74K/S1232135.EF46L_005:user/release-keys PRIVATE_BUILD_DESC="IML74K-user" BUILD_NUMBER=S1232135.EF46L_005
