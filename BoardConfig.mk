USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/c8812/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7627a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := c8812
TARGET_OTA_ASSERT_DEVICE := c8812,C8812,hwc8812

# Audio
#BOARD_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
TARGET_USES_QCOM_LPA := true
COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA
#TARGET_PROVIDES_LIBLIGHTS := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := c8812

# Touchscreen
#BOARD_USE_LEGACY_TOUCHSCREEN := true

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DFM_RADIO

TARGET_SPECIFIC_HEADER_PATH := device/huawei/c8812/include

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/c8812/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27A
#COMMON_GLOBAL_CFLAGS += -D7627A
TARGET_USES_OVERLAY := true

#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
DCHECK_FOR_EXTERNAL_FORMAT := true
BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
#TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
#COMMON_GLOBAL_CFLAGS += -DMISSING_GRALOC_BUFFERS 
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE
COMMON_GLOBAL_CFLAGS += -DHAVE_ARM_TLS_REGISTER

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL = true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Wi-Fi
WIFI_BAND := 802_11_ABG
WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd

WIFI_DRIVER_MODULE_PATH     := "/system/wifi/dhd_4330.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/wifi/fw_4330_b2.bin nvram_path=/system/wifi/nvram_4330.txt"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/wifi/fw_4330_b2.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/wifi/fw_4330_b2.bin"

TARGET_CUSTOM_WIFI := ../../device/huawei/c8812/private/libhardware_legacy/wifi/wifi.c

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel 
#TARGET_KERNEL_SOURCE := kernel/huawei/G300
#TARGET_KERNEL_CONFIG := c8812_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/c8812/kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048

TARGET_RECOVERY_INITRC := device/huawei/c8812/recovery/etc/init.rc
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/c8812/kernel
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

#BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/c8812/recovery/graphics.c
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/c8812/recovery/recovery_ui.c

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
