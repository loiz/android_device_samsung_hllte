#
# Copyright (C) 2014 The CyanogenMod Project
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

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

LOCAL_PATH := device/samsung/hllte

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

include $(LOCAL_PATH)/BoardConfig.mk

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Ramdisk
TARGET_PROVIDES_INIT_RC := true

# Power
PRODUCT_PACKAGES += \
    power.universal5260

PRODUCT_PACKAGES += \
    fstab.universal5260 \
    charger \
    init.samsung.rc \
    init.superuser.rc \
    init.universal5260.rc \
    init.universal5260.usb.rc \
    init.universal5260.wifi.rc \
    lpm.rc \
    ueventd.universal5260.rc

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.universal5260.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/ysound.xml:system/etc/ysound.xml \
    $(LOCAL_PATH)/configs/ymc/param/aec_adc.dat:system/etc/ymc/param/aec_adc.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_ae0_through.dat:system/etc/ymc/param/aec_ae0_through.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_ae1_through.dat:system/etc/ymc/param/aec_ae1_through.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_fifo.dat:system/etc/ymc/param/aec_cdsp_a_voice_fifo.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_nb.dat:system/etc/ymc/param/aec_cdsp_a_voice_nb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_param.dat:system/etc/ymc/param/aec_cdsp_a_voice_param.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_vbox.dat:system/etc/ymc/param/aec_cdsp_a_voice_vbox.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_cdsp_a_voice_wb.dat:system/etc/ymc/param/aec_cdsp_a_voice_wb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_config.dat:system/etc/ymc/param/aec_config.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_control_path_off.dat:system/etc/ymc/param/aec_control_path_off.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_control_path_resume.dat:system/etc/ymc/param/aec_control_path_resume.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_24khz_2mic_bi.dat:system/etc/ymc/param/aec_fdsp_24khz_2mic_bi.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_24khz_2mic_uni.dat:system/etc/ymc/param/aec_fdsp_24khz_2mic_uni.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_24khz_vbox_rec.dat:system/etc/ymc/param/aec_fdsp_24khz_vbox_rec.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_1mic.dat:system/etc/ymc/param/aec_fdsp_bypass_1mic.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_nb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_nb_bt.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_nb.dat:system/etc/ymc/param/aec_fdsp_bypass_nb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_voip.dat:system/etc/ymc/param/aec_fdsp_bypass_voip.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_wb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_wb_bt.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_bypass_wb.dat:system/etc/ymc/param/aec_fdsp_bypass_wb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_fdsp_chsel_rec.dat:system/etc/ymc/param/aec_fdsp_chsel_rec.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel.dat:system/etc/ymc/param/aec_hf50_chsel.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel_src.dat:system/etc/ymc/param/aec_hf50_chsel_src.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_chsel_svoice.dat:system/etc/ymc/param/aec_hf50_chsel_svoice.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_nb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_nb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_swb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_swb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_voip_vbox.dat:system/etc/ymc/param/aec_hf50_voip_vbox.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_svoice_2.dat:system/etc/ymc/param/aec_hf50_wb_svoice_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_svoicecar_2.dat:system/etc/ymc/param/aec_hf50_wb_svoicecar_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_wb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hf50_wb_vbox_svoice.dat:system/etc/ymc/param/aec_hf50_wb_vbox_svoice.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_hp_dac0.dat:system/etc/ymc/param/aec_hp_dac0.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_line1_dac0.dat:system/etc/ymc/param/aec_line1_dac0.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_line2_dac1.dat:system/etc/ymc/param/aec_line2_dac1.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_lrmix.dat:system/etc/ymc/param/aec_lrmix.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_rc_dac0.dat:system/etc/ymc/param/aec_rc_dac0.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sidetone.dat:system/etc/ymc/param/aec_sidetone.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sidetone_vol_nb.dat:system/etc/ymc/param/aec_sidetone_vol_nb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sidetone_vol_wb.dat:system/etc/ymc/param/aec_sidetone_vol_wb.dat \
    $(LOCAL_PATH)/configs/ymc/param/aec_sp_dac1.dat:system/etc/ymc/param/aec_sp_dac1.dat


PRODUCT_PACKAGES += \
    audiod \
    audio.primary.universal5260 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libtinyxml 

# HW composer
PRODUCT_PACKAGES += \
    libion \
    hwcomposer.exynos5 \
    gralloc.exynos5

# Camera
PRODUCT_PACKAGES += \
    libhwjpeg \
    libexynoscamera \
    camera.universal5260

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Display
PRODUCT_PACKAGES += \
    libExynosHWCService \
    libfimg

# GPS
PRODUCT_PACKAGES += \
   gps.universal5260

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.cer:system/etc/gps.cer \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5260

# Sensors
PRODUCT_PACKAGES += \
    sensors.universal5260

# Keystore
PRODUCT_PACKAGES += \
    keystore.exynos5

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Lights
PRODUCT_PACKAGES += \
    lights.universal5260

# MobiCore setup
PRODUCT_PACKAGES += \
    libMcClient \
    libMcRegistry \
    libPaApi \
    libgdmcprov #\
    #mcDriverDaemon

# Network tools
PRODUCT_PACKAGES += \
    libpcap \
    tcpdump

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.universal5260 \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFCEE access control + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20791b04.conf:system/etc/libnfc-brcm-20791b04.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# OMX
#PRODUCT_PACKAGES += \
#    libcsc \
    #libExynosOMX_Core \
    #libOMX.Exynos.MP3.Decoder \
    #libstagefrighthw \

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Radio
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap

# Samsung
PRODUCT_PACKAGES += \
    SamsungServiceMode

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608 \
    wifi.interface=wlan0

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Torch
PRODUCT_PACKAGES += Torch

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    crda \
    regulatory.bin \
    linville.key.pub.pem

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
#    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
#    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# CPU producer to CPU consumer not supported 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1

#$(call inherit-product, build/target/product/full.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# call the proprietary setupsamsung/hllte/
$(call inherit-product-if-exists, vendor/samsung/hllte/hllte-vendor.mk)

#kernel
PRODUCT_COPY_FILES += \
    device/samsung/hllte/kernel:kernel
