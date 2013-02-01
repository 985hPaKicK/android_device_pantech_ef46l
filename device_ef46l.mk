#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef46l/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/ramdisk/init.rc:root/init.rc \
    device/pantech/ef46l/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/pantech/ef46l/ramdisk/init.target.rc:root/init.target.rc \
    device/pantech/ef46l/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/pantech/ef46l/ramdisk/init.pantech.usb.rc:root/init.pantech.usb.rc \
    device/pantech/ef46l/ramdisk/ueventd.rc:root/ueventd.rc \
    device/pantech/ef46l/ramdisk/initlogo.rle:root/initlogo.rle

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/pantech/ef46l/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/pantech/ef46l/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/pantech/ef46l/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/pantech/ef46l/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/pantech/ef46l/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/pantech/ef46l/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/pantech/ef46l/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/pantech/ef46l/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/pantech/ef46l/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/pantech/ef46l/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    device/pantech/ef46l/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/pantech/ef46l/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/pantech/ef46l/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/pantech/ef46l/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/pantech/ef46l/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# GPS libs (Use LG F160's libs)
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/gps/libgps.so:/system/lib/libgps.so \
    device/pantech/ef46l/gps/libgps.utils.so:/system/lib/libgps.utils.so \
    device/pantech/ef46l/gps/libloc_adapter.so:/system/lib/libloc_adapter.so \
    device/pantech/ef46l/gps/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/pantech/ef46l/gps/libloc_eng.so:/system/lib/libloc_eng.so \
    device/pantech/ef46l/gps/libloc_ext.so:/system/lib/libloc_ext.so \
    device/pantech/ef46l/gps/gps.default.so:/system/lib/hw/gps.default.so

# Sensor (Use EF44S's libs & bin)
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/sensor/sensors.qcom:/system/bin/sensors.qcom \
    device/pantech/ef46l/sensor/libsensor1.so:/system/lib/libsensor1.so \
    device/pantech/ef46l/sensor/libsensor_reg.so:/system/lib/libsensor_reg.so \
    device/pantech/ef46l/sensor/libyas530.so:/system/lib/libyas530.so

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/firmware/prima.bin:/system/etc/firmware/wlan/prima/prima.bin \
    device/pantech/ef46l/firmware/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/pantech/ef46l/firmware/WCNSS_qcom_cfg_orgi.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_orgi.ini \
    device/pantech/ef46l/firmware/WCNSS_qcom_cfg_trptis.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_trptis.ini \
    device/pantech/ef46l/firmware/WCNSS_qcom_cfg_trptis.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/pantech/ef46l/firmware/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Kernel modules
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/modules/wlan.ko:/system/lib/modules/wlan.ko \
    device/pantech/ef46l/modules/mwlan_aarp.ko:/system/lib/modules/mwlan_aarp.ko

# Nfc lib
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/prebuilt/libpn544_fw.so:/system/vendor/firmware/libpn544_fw.so

# thermald config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/thermald.conf:/system/etc/thermald.conf

# Audio effects
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/configs/audio_effects.conf:system/etc/audio_effects.conf

# Audio firmware
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/firmware/wcd9310_anc.bin:/system/etc/firmware/wcd9310/wcd9310_anc.bin \
    device/pantech/ef46l/firmware/wcd9310_mbhc.bin:/system/etc/firmware/wcd9310/wcd9310_mbhc.bin \

# DSP
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/dsp/snd_soc_msm/DL_REC:/system/etc/snd_soc_msm/DL_REC \
    device/pantech/ef46l/dsp/snd_soc_msm/DL_REC_2x:/system/etc/snd_soc_msm/DL_REC_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/pantech/ef46l/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/pantech/ef46l/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/pantech/ef46l/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/pantech/ef46l/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/pantech/ef46l/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/pantech/ef46l/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/UL_DL_REC:/system/etc/snd_soc_msm/UL_DL_REC \
    device/pantech/ef46l/dsp/snd_soc_msm/UL_DL_REC_2x:/system/etc/snd_soc_msm/UL_DL_REC_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/pantech/ef46l/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Uplus Appmarket
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/uapps/com.lge.core.jar:system/framework/com.lge.core.jar \
    device/pantech/ef46l/uapps/com.lge.mass.jar:system/framework/com.lge.mass.jar

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/pantech/ef46l/keylayout/qt602240_ts_input_ef46l.kl:system/usr/keylayout/qt602240_ts_input_ef46l.kl \
    device/pantech/ef46l/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/idc/qt602240_ts_input_ef46l.idc:system/usr/idc/qt602240_ts_input_ef46l.idc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# CM9 libOmxVdec (avoid crack video playback bug)
PRODUCT_COPY_FILES += \
    device/pantech/ef46l/prebuilt/libOmxVdec.so:/system/lib/libOmxVdec.so

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# Telephony fixes
FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

# call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef46l/ef46l-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
