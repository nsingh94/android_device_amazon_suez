# Shim Libraries
TARGET_LD_SHIM_LIBS := \
    /system/lib/liblog.so|libshim_log.so \
    /system/lib64/liblog.so|libshim_log.so \
    /system/vendor/bin/amzn_dha_hmac|libshim_drm.so \
    /system/vendor/bin/amzn_dha_tool|libshim_drm.so \
    /system/vendor/lib/libcam_utils.so|libshim_ui.so \
    /system/vendor/lib/libMtkOmxVenc.so|libshim_ui.so \
    /system/vendor/lib/libgui_ext.so|libshim_gui.so \
    /system/vendor/lib64/libgui_ext.so|libshim_gui.so \
    /system/vendor/lib/libui_ext.so|libshim_ui.so \
    /system/vendor/lib64/libui_ext.so|libshim_ui.so \
    /system/vendor/lib/libstagefright_soft_ddpdec.so|libshim_dolby.so
