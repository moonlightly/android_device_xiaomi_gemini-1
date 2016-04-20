#
# Copyright (C) 2016 The AOSParadox Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gemini)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# ADSP Images
ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 \
    adsp.b06 adsp.b07 adsp.b08 adsp.b09 adsp.b10 adsp.b11 adsp.mdt

ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ADSP_IMAGES)))
$(ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADSP_SYMLINKS)
# END ADSP Images

# CARDAPP Images
CARDAPP_IMAGES := \
    cardapp.b00 cardapp.b01 cardapp.b02 cardapp.b03 cardapp.b04 \
    cardapp.b05 cardapp.b06 cardapp.mdt

CARDAPP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CARDAPP_IMAGES)))
$(CARDAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CARDAPP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CARDAPP_SYMLINKS)
# END CARDAPP Images

# CMN Images
CMN_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.b04 cmnlib.b05 cmnlib.mdt \
    cmnlib64.b00 cmnlib64.b01 cmnlib64.b02 cmnlib64.b03 cmnlib64.b04 cmnlib64.b05 cmnlib64.mdt \

CMN_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CMN_IMAGES)))
$(CMN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN_SYMLINKS)
# END CMN Images

# CPE Images
CPE_IMAGES := \
    cpe_9335.b08 cpe_9335.b09 cpe_9335.b11 cpe_9335.b14 cpe_9335.b16 cpe_9335.b18 cpe_9335.b19 \
    cpe_9335.b20 cpe_9335.b22 cpe_9335.b24 cpe_9335.b26 cpe_9335.b28 cpe_9335.b29 cpe_9335.mdt

CPE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CPE_IMAGES)))
$(CPE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPE_SYMLINKS)
# END CPE Images

# CPPF Images
CPPF_IMAGES := \
    cppf.b00 cppf.b01 cppf.b02 cppf.b03 cppf.b04 \
    cppf.b05 cppf.b06 cppf.mdt

CPPF_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CPPF_IMAGES)))
$(CPPF_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPPF firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPPF_SYMLINKS)
# END CPPF Images

# DHSECAPP Images
DHSECAPP_IMAGES := \
    dhsecapp.b00 dhsecapp.b01 dhsecapp.b02 dhsecapp.b03 dhsecapp.b04 \
    dhsecapp.b05 dhsecapp.b06 dhsecapp.mdt

DHSECAPP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(DHSECAPP_IMAGES)))
$(DHSECAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DHSECAPP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DHSECAPP_SYMLINKS)
# END DHSECAPP Images

# FINGERPR  Images
FINGERPR_IMAGES := \
    fingerpr.b00 fingerpr.b01 fingerpr.b02 fingerpr.b03 fingerpr.b04 \
    fingerpr.b05 fingerpr.b06 fingerpr.mdt

FINGERPR_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FINGERPR_IMAGES)))
$(FINGERPR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "FINGERPR firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FINGERPR_SYMLINKS)
# END FINGERPR Images

# FPCTA32  Images
FPCTA32_IMAGES := \
    fpcta32.b00 fpcta32.b01 fpcta32.b02 fpcta32.b03 fpcta32.b04 \
    fpcta32.b05 fpcta32.b06 fpcta32.mdt

FPCTA32_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FFPCTA32_IMAGES)))
$(FPCTA32_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "FPCTA32 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FPCTA32_SYMLINKS)
# END CPPF Images

# GPTEST  Images
GPTEST_IMAGES := \
    gptest.b00 gptest.b01 gptest.b02 gptest.b03 gptest.b04 \
    gptest.b05 gptest.b06 gptest.mdt

GPTEST_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(GPTEST_IMAGES)))
$(GPTEST_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "GPTEST firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(GPTEST_SYMLINKS)
# END GPTEST Images

# ISDB Images
ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.b04 \
    isdbtmm.b05 isdbtmm.b06 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)
# END ISDB Images

# MDTP  Images
MDTP_IMAGES := \
    mdtp.b00 mdtp.b01 mdtp.b02 mdtp.b03 mdtp.b04 \
    mdtp.b05 mdtp.b06 mdtp.mdt

MDTP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MDTP_IMAGES)))
$(MDTP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDTP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MDTP_SYMLINKS)
# END MDTP Images

# MODEM Images
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 modem.b11 \
    modem.b12 modem.b13 modem.b15 modem.b16 modem.b17 modem.b18 modem.b19 modem.b20 modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)
# END MODEM Images

# QMPSECAP Images
QMPSECAP_IMAGES := \
    qmpsecap.b00 qmpsecap.b01 qmpsecap.b02 qmpsecap.b03 qmpsecap.b04 \
    qmpsecap.b05 qmpsecap.b06 qmpsecap.mdt

QMPSECAP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(QMPSECAP_IMAGES)))
$(QMPSECAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "QMPSECAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(QMPSECAP_SYMLINKS)
# END QMPSECAP Images

# SECAUTH Images
SECAUTH_IMAGES := \
    secauth.b00 secauth.b01 secauth.b02 secauth.b03 secauth.b04 \
    secauth.b05 secauth.b06 secauth.mdt

SECAUTH_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SECAUTH_IMAGES)))
$(SECAUTH_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SECAUTH firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECAUTH_SYMLINKS)
# END SECAUTH Images

# SECUREMM Images
SECUREMM_IMAGES := \
    securemm.b00 securemm.b01 securemm.b02 securemm.b03 securemm.b04 \
    securemm.b05 securemm.b06 securemm.mdt

SECUREMM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SECUREMM_IMAGES)))
$(SECUREMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SECUREMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECUREMM_SYMLINKS)
# END SECUREMM Images

# SLPI Images
SLPI_IMAGES := \
    slpi_a1.b00 slpi_a1.b01 slpi_a1.b02 slpi_a1.b03 slpi_a1.b04 slpi_a1.b05 \
    slpi_a1.b06 slpi_a1.b07 slpi_a1.b08 slpi_a1.b09 slpi_a1.b10 slpi_a1.b11 \
    slpi_a1.b12 slpi_a1.b13 slpi_a1.b14 slpi_a1.b15 slpi_a1.mdt

SLPI_IMAGES += \
    slpi_a4.b00 slpi_a4.b01 slpi_a4.b02 slpi_a4.b03 slpi_a4.b04 slpi_a4.b05 \
    slpi_a4.b06 slpi_a4.b07 slpi_a4.b08 slpi_a4.b09 slpi_a4.b10 slpi_a4.b11 \
    slpi_a4.b12 slpi_a4.b13 slpi_a4.b14 slpi_a4.b15 slpi_a4.mdt

SLPI_IMAGES += \
    slpi_a7.b00 slpi_a7.b01 slpi_a7.b02 slpi_a7.b03 slpi_a7.b04 slpi_a7.b05 \
    slpi_a7.b06 slpi_a7.b07 slpi_a7.b08 slpi_a7.b09 slpi_a7.b10 slpi_a7.b11 \
    slpi_a7.b12 slpi_a7.b13 slpi_a7.b14 slpi_a7.b15 slpi_a7.mdt

SLPI_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SLPI_IMAGES)))
$(SLPI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SLPI firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SLPI_SYMLINKS)
# END SLPI Images

# SMPLAP Images
SMPLAP_IMAGES := \
    smplap32.b00 smplap32.b01 smplap32.b02 smplap32.b03 smplap32.b04 \
    smplap32.b05 smplap32.b06 smplap32.mdt

SMPLAP_IMAGES += \
    smplap64.b00 smplap64.b01 smplap64.b02 smplap64.b03 smplap64.b04 \
    smplap64.b05 smplap64.b06 smplap64.mdt

SMPLAP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SMPLAP_IMAGES)))
$(SMPLAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SMPLAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SMPLAP_SYMLINKS)
# END SMPLAP Images

# VENUS Images
VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 \
    venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "VENUS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)
# END VENUS Images

# WIDEVINE Images
WIDEVINE_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.b04 \
    widevine.b05 widevine.b06 widevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WIDEVINE_IMAGES)))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WIDEVINE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)
# END WIDEVINE Images

# Miscelenaous Images
MISC_IMAGES := \
    mba.mbn data.msc

MISC_IMAGES += \
    wil6210.brd wil6210.fw

MISC_IMAGES += \
    otp30.bin  qwlan30.bin utf30.bin

MISC_IMAGES += \
    bdwlan30.b01 bdwlan30.b05 bdwlan30.b06 bdwlan30.b0a bdwlan30.b0c \
    bdwlan30.b0e bdwlan30.bin

MISC_IMAGES += \
    bd30_a4.bin bd30_a7.bin

MISC_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MISC_IMAGES)))
$(MISC_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Miscelenaous firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)
# END Miscelenaous Images

#Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/qca_cld; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
        ln -sf /persist/wlan_mac.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin; \
        ln -sf /dev/block/bootdevice/by-name/msadp \
        $(TARGET_OUT_ETC)/firmware/msadp )

# Same as for wcd9306 files
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wcd9306; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
	    $(TARGET_OUT)/etc/firmware/wcd9306/wcd9306_anc.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
	    $(TARGET_OUT)/etc/firmware/wcd9306/wcd9306_mbhc.bin;)

endif
