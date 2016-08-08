USE_OPENGL_RENDERER := true
ANDROID_ENABLE_RENDERSCRIPT := true
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

# 1st Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := 	Cortex-A53
TARGET_CPU_ABI := arm64-v8a
TARGET_BOARD_GPU := mali-t830mp2
#TARGET_CPU_ABI2 :=

#2nd Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

#Just system
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true

#Audio
BOARD_USES_ALSA_AUDIO := true
#RIL
BOARD_RIL_CLASS := ../../../device/huawei/hi6250/ril/

# Wifi & Bluetooth
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
WIFI_BAND                        := 802_11_BGN
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/huawei/hi6250/bluetooth"


TARGET_HARDWARE_3D := true
BOARD_EGL_CFG := device/huawei/hi6250/egl.cfg
TARGET_BOARD_PLATFORM := hi6250

TARGET_CPU_SMP := true

TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_BOOTLOADER_BOARD_NAME := hi6250
ANDROID_64=true

BOARD_KERNEL_CMDLINE := loglevel=4 coherent_pool=512K mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p18(modem_om),p21(modemnvm_update),p31(modem_fw) no_console_suspend androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x07588000

BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_KERNEL_SOURCE := kernel
#TARGET_KERNEL_CONFIG := hisi_hi6210sft_defconfig


BOARD_HAS_NO_SELECT_BUTTON := false
DEVICE_RESOLUTION := 1080x1920
TW_THEME := portrait_xxhdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/hi6210sft/graphics.c
