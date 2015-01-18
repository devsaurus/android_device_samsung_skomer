#
# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2013 Óliver García Albertos (oliverarafo@gmail.com)
# Copyright (C) 2013 Felix Obenhuber (f.obenhuber@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += device/samsung/skomer/overlay

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/languages_full.mk)

# The GPS config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Use the Dalvik VM specific for devices with 1024 MB of RAM
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Inherit the proprietary vendors
$(call inherit-product-if-exists, vendor/samsung/skomer/skomer-vendor-blobs.mk)

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/root/init.rc:root/init.rc \
    device/samsung/skomer/prebuilt/root/default.prop:root/default.prop \
    device/samsung/skomer/prebuilt/root/init.samsungskomer.rc:root/init.samsungskomer.rc \
    device/samsung/skomer/prebuilt/root/init.samsungskomer.bt.rc:root/init.samsungskomer.bt.rc \
    device/samsung/skomer/prebuilt/root/init.samsungskomer.usb.rc:root/init.samsungskomer.usb.rc \
    device/samsung/skomer/prebuilt/root/fstab.samsungskomer:root/fstab.samsungskomer \
    device/samsung/skomer/prebuilt/root/ueventd.samsungskomer.rc:root/ueventd.samsungskomer.rc \
    device/samsung/skomer/prebuilt/root/lib/modules/j4fs.ko:root/lib/modules/j4fs.ko \
    device/samsung/skomer/prebuilt/root/lib/modules/param.ko:root/lib/modules/param.ko

# TouchScreen & Inputs
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Graphics
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg

# OMX
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/skomer/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/skomer/prebuilt/system/omxloaders:system/omxloaders

# Dbus
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/etc/dbus.conf:system/etc/dbus.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# STE Modem and CSPSA
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/etc/cspsa.conf:system/etc/cspsa.conf \
    device/samsung/skomer/prebuilt/system/etc/ste_modem.sh:system/etc/ste_modem.sh

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/skomer/prebuilt/system/etc/asound.conf:system/etc/asound.conf
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default

# Sensors
PRODUCT_PACKAGES += \
    lights.montblanc

# Vold
PRODUCT_COPY_FILES += \
    device/samsung/skomer/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Misc packages
PRODUCT_PACKAGES += \
    Torch \
    com.android.future.usb.accessory

# Non-device-specific props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures = 1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enable_bypass=1 \
    net.bt.name=Android \
    ro.config.sync=yes

# Define kind of DPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
 
# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise
