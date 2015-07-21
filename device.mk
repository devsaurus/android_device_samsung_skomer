#
# Copyright (C) 2015 Wimpknocker
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

# Add overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/skomer/overlay

# Define kind of DPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Wi-Fi packages
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Open-source HALs
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    lights.montblanc

# Misc packages
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    Stk

#F2FS
PRODUCT_PACKAGES += \
    genfstab

# Prebuilt kernel
#PRODUCT_COPY_FILES += \
    device/samsung/skomer/ramdisk/zImage:kernel

# Initial ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/skomer/ramdisk/init.samsungskomer.rc:root/init.samsungskomer.rc \
    device/samsung/skomer/ramdisk/init.samsungskomer.usb.rc:root/init.samsungskomer.usb.rc \
    device/samsung/skomer/ramdisk/ueventd.samsungskomer.rc:root/ueventd.samsungskomer.rc \
    device/samsung/skomer/ramdisk/lpm.rc:root/lpm.rc \
    device/samsung/skomer/ramdisk/sbin/charger:root/sbin/charger \
    device/samsung/skomer/ramdisk/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    device/samsung/skomer/ramdisk/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
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

# Codec config files
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml

# Every single binary blob
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/skomer/prebuilt,system)

# Wi-Fi config
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Dalvik config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
