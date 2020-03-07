LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),msm8909w)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif