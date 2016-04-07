LOCAL_PATH:= $(call my-dir)

ifneq ($(filter msm7x27a msm7x30 msm8660 msm8960,$(TARGET_BOARD_PLATFORM)),)
LOCAL_CFLAGS += -DQCOM_BSP_LEGACY
endif

ifeq ($(call is-vendor-board-platform,QCOM),true)
ifeq ($(strip $(AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER)),true)
LOCAL_CFLAGS += -DQTI_FLAC_DECODER
endif
endif

include $(call all-makefiles-under,$(LOCAL_PATH)/hal)
include $(call all-makefiles-under,$(LOCAL_PATH))