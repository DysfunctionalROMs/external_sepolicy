# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS += \
       device/qcom/sepolicy \
       device/qcom/sepolicy/common \
       device/qcom/sepolicy/test \
       device/qcom/sepolicy/$(TARGET_BOARD_PLATFORM)

# compile CSVT policies only if BoardConfig file specifies
ifeq ($(TARGET_USES_CSVT),true)
       BOARD_SEPOLICY_DIRS += device/qcom/sepolicy/common/csvt
endif
