LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := icu_shim.cpp crypto_shim.cpp
LOCAL_SHARED_LIBRARIES := libicuuc libcrypto
LOCAL_MODULE := libshim_drm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
