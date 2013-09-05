# Copyright (C) 2012 The CyanogenMod Project
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

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Vendor
BOARD_VENDOR := htc

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

DEVICE_PACKAGE_OVERLAYS += device/htc/msm8660-common/overlay
# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DLEGACY_QCOM_VOICE -DHTC_ACOUSTIC_AUDIO
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/htc/msm8660-common/bluetooth/include

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_HAVE_HTC_FFC := true

# QCOM hardware
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_GPS_VARIANT := legacy
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_EGL_NEEDS_LEGACY_FB := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true
TARGET_NO_HW_VSYNC := true
BOARD_EGL_CFG := device/htc/msm8660-common/configs/egl.cfg
TARGET_USES_ION := true
# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# Webkit
TARGET_FORCE_CPU_UPLOAD := true
ENABLE_WEBGL := true
