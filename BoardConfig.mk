#
# Copyright (C) 2022 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from vsmart sdm632-common
-include device/vsmart/sdm632-common/BoardConfigCommon.mk

DEVICE_PATH := device/vsmart/casuarina

# Assertion
TARGET_OTA_ASSERT_DEVICE := casuarina,casuarina_open,V430A

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Kernel
BOARD_KERNEL_HEADER_VERSION := 1
BOARD_KERNEL_BASE           := 0x80000000
BOARD_KERNEL_PAGESIZE       := 2048
BOARD_KERNEL_OFFSET         := 0x00008000
BOARD_KERNEL_TAGS_OFFSET    := 0x00000100
BOARD_RAMDISK_OFFSET        := 0x01000000

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL  := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
TARGET_FORCE_PREBUILT_KERNEL := true

BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom msm_rtb.filter=0x237 lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000000
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_KERNEL_HEADER_VERSION)

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_VENDORIMAGE_PARTITION_SIZE := 811597824
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/twrp.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/vsmart/casuarina/BoardConfigVendor.mk
