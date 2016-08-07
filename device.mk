#
# Copyright (C) 2011 The Android Open-Source Project
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

LOCAL_PATH := device/huawei/hi6250

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Copy prebuild kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel

# Ramdisk stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/default.prop:root/default.prop \
    $(LOCAL_PATH)/ramdisk/file_contexts:root/file_contexts \
    $(LOCAL_PATH)/ramdisk/fstab.hi6250:root/fstab.hi6250 \
    $(LOCAL_PATH)/ramdisk/fstab.zram256m:root/fstab.zram256m \
    $(LOCAL_PATH)/ramdisk/fstab.zram512m:root/fstab.zram512 \
    $(LOCAL_PATH)/ramdisk/init:root/init \
    $(LOCAL_PATH)/ramdisk/init.4871.rc:root/init.4871.rc \
    $(LOCAL_PATH)/ramdisk/init.6193.rc:root/init.6193.rc \
    $(LOCAL_PATH)/ramdisk/init.51312.rc:root/init.51312.rc \
    $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
    $(LOCAL_PATH)/ramdisk/init.balong_modem.rc:root/init.balong_modem.rc \
    $(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
    $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43455.rc:root/init.connectivity.bcm43455.rc \
    $(LOCAL_PATH)/ramdisk/init.connectivity.gps.rc:root/init.connectivity.gps.rc \
    $(LOCAL_PATH)/ramdisk/init.connectivity.hisi.rc:root/init.connectivity.hisi.rc \
    $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
    $(LOCAL_PATH)/ramdisk/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
    $(LOCAL_PATH)/ramdisk/init.hi6250.rc:root/init.hi6250.rc \
    $(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
    $(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
    $(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
    $(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
    $(LOCAL_PATH)/ramdisk/init.post-fs-data.rc:root/init.post-fs-data.rc \
    $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.balong_modem.rc:root/init.recovery.balong_modem.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.hisi.rc:root/init.recovery.hisi.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.huawei.rc:root/init.recovery.huawei.rc \
    $(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc \
    $(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
    $(LOCAL_PATH)/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc \
    $(LOCAL_PATH)/ramdisk/property_contexts:root/property_contexts \
    $(LOCAL_PATH)/ramdisk/resetFactory.cfg:root/resetFactory.cfg \
    $(LOCAL_PATH)/ramdisk/seapp_contexts:root/seapp_contexts \
    $(LOCAL_PATH)/ramdisk/selinux_version:root/selinux_version \
    $(LOCAL_PATH)/ramdisk/sepolicy:root/sepolicy \
    $(LOCAL_PATH)/ramdisk/service_contexts:root/service_contexts \
    $(LOCAL_PATH)/ramdisk/ueventd.4871.rc:root/ueventd.4871.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.6193.rc:root/ueventd.6193.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.51312.rc:root/ueventd.51312.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.hi6250.rc:root/ueventd.hi6250.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/sbin/adbd:root/sbin/adbd \
    $(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
    $(LOCAL_PATH)/ramdisk/sbin/hdbd:root/sbin/hdbd \
    $(LOCAL_PATH)/ramdisk/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/ramdisk/sbin/hw_crit_service_sys:root/sbin/hw_crit_service_sys \
    $(LOCAL_PATH)/ramdisk/sbin/hw_ueventd:root/sbin/hw_ueventd \
    $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
    $(LOCAL_PATH)/ramdisk/sbin/launch_daemonsu.sh:root/sbin/launch_daemonsu.sh \
    $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
    $(LOCAL_PATH)/ramdisk/sbin/ntfs-3gd:root/sbin/ntfs-3gd \
    $(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
    $(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd \
    $(LOCAL_PATH)/ramdisk/sbin/ueventd:root/sbin/ueventd \
    $(LOCAL_PATH)/ramdisk/sbin/volisnotd:root/sbin/volisnotd \
    $(LOCAL_PATH)/ramdisk/sbin/watchdogd:root/sbin/watchdogd

# Add openssh support for remote debugging and job submission
PRODUCT_PACKAGES += ssh sftp scp sshd ssh-keygen sshd_config start-ssh uim wpa_supplicant

# Build and run only ART
PRODUCT_RUNTIMES := runtime_libart_default

# Build BT a2dp audio HAL
PRODUCT_PACKAGES += audio.a2dp.default

# Needed to sync the system clock with the RTC clock
PRODUCT_PACKAGES += hwclock

# Include USB speed switch App
PRODUCT_PACKAGES += UsbSpeedSwitch

# Build libion for new double-buffering HDLCD driver
PRODUCT_PACKAGES += libion

# Build gatord daemon for DS-5/Streamline
PRODUCT_PACKAGES += gatord

# Build gralloc for Juno
PRODUCT_PACKAGES += gralloc.hi6250

# Include ION tests
PRODUCT_PACKAGES += iontest \
                    ion-unit-tests

# Set zygote config
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc
PRODUCT_PACKAGES += libGLES_android


PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \

#RIL
PRODUCT_PROPERTY_OVERRIDES += \
     audioril.lib=libhuawei-audio-ril.so \
     ro.telephony.ril_class=HuaweiRIL 

PRODUCT_COPY_FILES += \
     vendor/global/apns-conf.xml:system/etc/apns-conf.xml

#Audio Config
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
     $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

#Bluetooth
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
     $(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
     $(LOCAL_PATH)/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf

#Media patches
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
     $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
     $(LOCAL_PATH)/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

PRODUCT_PACKAGES += \
     audio.primary.default \
     audio_policy.stub \
     audio.a2dp.default \
     audio.usb.default \
     audio.r_submix.default \
     libaudioutils \
     libtinyalsa \
     tinyplay \
     tinycap \
     tinymix \
     tinypcminfo \
     sound_trigger.primary.hi6250 \
     libion.huawei \
     libwpa_client \
     wpa_supplicant \
     wpa_supplicant-conf \
     libnfc-nci \
     libnfc_nci_jni \
     Nfc \
     Tag \
     com.android.nfc_extras

#SeLinux
BOARD_SEPOLICY_DIRS += \
     $(LOCAL_PATH)/selinux

#BOARD_SEPOLICY_UNION += \
#     file_contexts \
#     installd.te

# Call vendor files ( for now just put all files in /vendor dir and adjust vendor.mk file)
$(call inherit-product, $(LOCAL_PATH)/vendor.mk)






