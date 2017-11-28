LOCAL_PATH:= $(call my-dir)

ifeq ($(call is-vendor-board-platform,QCOM),true)
ifeq ($(strip $(AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER)),true)
LOCAL_CFLAGS += -DQTI_FLAC_DECODER
endif
endif

LOCAL_WHOLE_STATIC_LIBRARIES := libavextensions

include $(call all-makefiles-under,$(LOCAL_PATH))
