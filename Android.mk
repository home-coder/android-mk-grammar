LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := yang
LOCAL_SRC_FILES := yang.c

#ifeq ($(strip $(BOARD_ALSA_AUDIO)),tiny)
EXIST_FILE:= $(shell test -f $(LOCAL_PATH)/echo_file && echo yes)
ifeq ($(EXIST_FILE), yes)
$(shell rm -af $(LOCAL_PATH)/echo_file)
$(shell \
	echo "yesyesyesyes" > $(LOCAL_PATH)/echo_file \
)
else
$(shell \
	echo "nononononono" > $(LOCAL_PATH)/echo_file \
)
endif

#call
#include

#ifeq ($(BOARD), $(filter $(BOARD), 082B 082B_DTMB 082B_TVOS_DTMB))

#LOCAL_PATH := $(call my-dir) -->冒号等于

#LOCAL_C_INCLUDES -->为什么要有include

#LOCAL_MODULE_TAGS

#LOCAL_SRC_FILES

#LOCAL_SHARED_LIBRARIES

#LOCAL_MODULE
#include $(call all-makefiles-under,$(LOCAL_PATH))

#include $(BUILD_SHARED_LIBRARY)

#LOCAL_CFLAGS

#ifeq ($(MODEL_CONFIG), C43Pro)
#	$(call inherit-product, cantv/build/Mstar348/cantv_Mstar348_C43Pro.mk)
#endif


#...

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)
