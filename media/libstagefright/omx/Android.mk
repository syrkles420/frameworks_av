LOCAL_PATH:= $(call my-dir)

ifneq ($(filter msm7x27a msm7x30 msm8660 msm8960,$(TARGET_BOARD_PLATFORM)),)
LOCAL_CFLAGS += -DQCOM_BSP_LEGACY
endif

include $(call all-makefiles-under,$(LOCAL_PATH)/hal)
include $(call all-makefiles-under,$(LOCAL_PATH))