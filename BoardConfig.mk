#
# Copyright 2020 The LineageOS Project.
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

-include device/bq/mt8163-common/BoardConfigCommon.mk

DEVICE_PATH := device/bq/freezerfhd

# Assert
TARGET_OTA_ASSERT_DEVICE := Aquaris_M10FHD,freezerfhd,aquaris_m10FHD

# Kernel
TARGET_KERNEL_CONFIG := lineage_freezerfhd_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Device specific props
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Partitons (make_ext4fs requires numbers)
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1487000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 410000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12529000000
BOARD_FLASH_BLOCK_SIZE := 131072

# EXT4
TARGET_USERIMAGES_USE_EXT4 := true

# System Stability
TARGET_USES_MKE2FS := true 

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/etc/twrp.fstab
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_HAS_NO_SELECT_BUTTON := true

# inherit from the proprietary version
-include vendor/bq/freezerfhd/BoardConfigVendor.mk
