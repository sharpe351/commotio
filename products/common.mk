# Generic product
PRODUCT_NAME := vanir
PRODUCT_BRAND := vanir
PRODUCT_DEVICE := generic

# Build packages included in manifest
PRODUCT_PACKAGES += \
    AppWidgetPicker \
    Email \
    busybox

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg 

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    net.bt.name=Android \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    debug.composition.type=gpu \
    ro.HOME_APP_MEM=8192 \
    ro.FOREGROUND_APP_MEM=8192 \
    ro.VISIBLE_APP_MEM=8192 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=10000 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    movfilter=40 \
    movehyst=0 \
    per_sec=300 \
    TCHTHR=28 \
    ro.modversion=Commotio-B29 \
    ro.rommanager.developerid=DHO \
    ro.goo.developerid=DHO \
    ro.goo.version=29

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40C BUILD_ID=JOP40C BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/vanir/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/vanir/proprietary/common/xbin/su:system/xbin/su \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/vanir/proprietary/common/xbin/vanirtweakapply:system/xbin/vanirtweakapply \
    vendor/vanir/proprietary/common/xbin/vanir:system/xbin/vanir \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/xbin/vanirnice:system/xbin/vanirnice

# Misc Files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# bash stuff... config files and so's
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so

# init.vanir.rc, 2 copies of it for compatibility, and some shell scripts from CM
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/compcache:system/bin/compcache \
    vendor/vanir/proprietary/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/bin/cronlogger:system/bin/cronlogger

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# init.d Tweaks
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/commotio/proprietary/system/etc/init.d/01dhotheory:system/etc/init.d/01dhotheory \
    vendor/commotio/proprietary/system/etc/init.d/02dhokernel:system/etc/init.d/02dhokernel \
    vendor/commotio/proprietary/system/etc/init.d/05cmplxfilesystem:system/etc/init.d/05cmplxfilesystem \
    vendor/commotio/proprietary/system/etc/init.d/91cmplxzipalign:system/etc/init.d/91cmplxzipalign \
    vendor/commotio/proprietary/system/etc/init.d/98cmplxth3ory:system/etc/init.d/98cmplxth3ory \
    vendor/commotio/proprietary/system/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/commotio/proprietary/system/etc/init.d/ZZafterboot:system/etc/init.d/ZZafterboot \
    vendor/vanir/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/vanir/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

#LatinIME core files
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/core_dictionaries
    
# T-Mobile theme engine
PRODUCT_PACKAGES += \
       ThemeManager \
       ThemeChooser \
       com.tmobile.themes

PRODUCT_COPY_FILES += \
       vendor/vanir/proprietary/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml
