LOCAL_PATH := $(call my-dir)

#----------------------------------------------------------------------
# Key mappings
#----------------------------------------------------------------------
include $(CLEAR_VARS)
LOCAL_MODULE := 7x27a_kp.kcm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYCHARS)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := atmel_mxt_ts.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := synaptics_rmi4_i2c.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ft5x06_ts.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := surf_keypad.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := 7k_handset.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := 7x27a_kp.kl
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_KEYLAYOUT)
include $(BUILD_PREBUILT)

ifeq ($(findstring true,$(BOARD_HAS_ATH_WLAN) $(BOARD_HAS_QCOM_WLAN)),true)
include $(CLEAR_VARS)
LOCAL_MODULE       := wpa_supplicant.conf
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := config/$(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/wifi
include $(BUILD_PREBUILT)
endif

ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)
include $(CLEAR_VARS)
LOCAL_MODULE       := hostapd.conf
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_DATA)/misc/wifi
LOCAL_SRC_FILES    := config/hostapd.conf
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := hostapd.accept
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_DATA)/hostapd
LOCAL_SRC_FILES    := config/hostapd.accept
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := hostapd.deny
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH  := $(TARGET_OUT_DATA)/hostapd
LOCAL_SRC_FILES    := config/hostapd.deny
include $(BUILD_PREBUILT)