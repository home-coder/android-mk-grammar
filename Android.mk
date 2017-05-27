LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= yang

LOCAL_SRC_FILES := yang.c

include $(BUILD_SHARED_LIBRARY)
