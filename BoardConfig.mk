# Copyright (C) 2011 The Android Open Source Project
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

USE_CAMERA_STUB := true

#Jb Libhwcomposer
#TARGET_NO_HW_VSYNC := true

# Needs Review
#BOARD_CAMERA_USE_GETBUFFERINFO := true
# This is needed by libcamera.so
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
BOARD_USE_CAF_LIBCAMERA := true

# Arch related defines
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

#Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/htc/pico/recovery/recovery_ui.c
#BOARD_CUSTOM_GRAPHICS := ../../../device/htc/pico/recovery/graphics.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/pico/prebuilt/recovery_kernel
TARGET_RECOVERY_INITRC := device/htc/pico/files/recovery.rc
TARGET_RECOVERY_FSTAB := device/htc/pico/recovery.fstab
BOARD_RECOVERY_HANDLES_MOUNT := true

# Yes we do,but let's hash it out 
# ARCH_ARM_HAVE_VFP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := pico
BOARD_NO_SPEAKER := true # msm7627a doesn't have speaker
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true

# Kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12c00000
BOARD_PAGE_SIZE := 0x00000800

TARGET_PROVIDES_LIBAUDIO := true

# Fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0eb40000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/htc/pico/prebuilt/kernel

# Vold
BOARD_VOLD_MAX_PARTITIONS := 24
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

#  Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_SPECIFIC_HEADER_PATH := device/htc/pico/include

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/pico/prebuilt/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
TARGET_GRALLOC_USES_ASHMEM := true
#COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4330
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4330.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4330b2.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4330b2_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "bcm4330"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/firmware/fw_bcm4330b2.bin nvram_path=/proc/calibration iface_name=eth0"

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pico
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
DCHECK_FOR_EXTERNAL_FORMAT := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_FORCE_DITHERING := true
USE_OPENGL_RENDERER := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
#COMMON_GLOBAL_CFLAGS += -DMISSING_GRALOC_BUFFERS 
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE
COMMON_GLOBAL_CFLAGS += -DHAVE_ARM_TLS_REGISTER

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome

# ICS Stuff 
BOARD_HAS_NO_SELECT_BUTTON := true

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true
