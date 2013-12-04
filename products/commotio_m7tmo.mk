#Squisher Choosing
DHO_VENDOR := commotio

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=commotio-m7tmo

# Inherit common commotio files.
$(call inherit-product, vendor/commotio/products/gsm.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/commotio/products/commotio_m7.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7tmo/full_m7tmo.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := commotio_m7tmo
PRODUCT_DEVICE := m7tmo
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="tmous/m7/m7:4.1.2/KRT16S/170484.7:user/release-keys" PRIVATE_BUILD_DESC="1.27.531.7 CL170484 release-keys"