LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := yang
LOCAL_SRC_FILES := yang.c

#ifeq ($(strip $(BOARD_ALSA_AUDIO)),tiny) -->ifeq的使用, shell命令的调用
EXIST_FILE:= $(shell test -f $(LOCAL_PATH)/echo_file && echo yes)
ifeq ($(EXIST_FILE), yes)
$(shell rm -f $(LOCAL_PATH)/echo_file)
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

#filter example 1 -->filter的使用
#ifeq ($(BOARD), $(filter $(BOARD), 082B 082B_DTMB 082B_TVOS_DTMB))
#$(filter word1 word2,$(VARIANTS))
#
#判断变量VARIANTS中是否包含word1和 word2，如果包含就把VARIANTS中包含的word1和word2之外的过滤掉
#示例：
VARIANTS := mon tue wed thu fri sat sun
DAY := $(filter sat sun,$(VARIANTS))
$(info $(DAY))
#输出结果为：
#sat sun

#filter example 2
MYVAR := mxq6 mxsl mxdl5 mx6q mx53ql
$(info $(MYVAR))
MYBOARD := $(filter mxq6 mx6q, $(MYVAR))
$(info $(MYBOARD))

ifeq ($(MYBOARD), mxq6 mx6q)
$(info "ok test")
endif

#android.mk中: := +=  -->的用法场景，和区别

#$(info $(DAY)), -->info的使用

#LOCAL_PATH := $(call my-dir) -->冒号等于

#LOCAL_C_INCLUDES -->为什么要有include

#PRODUCT_PACKAGES + #LOCAL_MODULE联合使用

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
