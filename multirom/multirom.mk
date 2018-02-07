##==================================
##  RECOVERY_VARIANT := multirom
TARGET_RECOVERY_IS_MULTIROM := true

# Still needed by MultiROM Boot Menu
MR_PIXEL_FORMAT := "RGBX_8888"

# Custom Flags
MR_NO_KEXEC := true

# MultiROM version
MR_DEVICE_SPECIFIC_VERSION := a

include device/samsung/jfltexx/multirom/version-info/MR_REC_VERSION.mk

ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
endif

BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)

# MultiROM config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/jfltexx/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_FONT := 340
MR_CONTINUOUS_FB_UPDATE := true

MR_DEVICE_HOOKS := device/samsung/jfltexx/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4

MR_FSTAB := device/samsung/jfltexx/multirom/mrom.fstab
MR_USE_MROM_FSTAB := true

MR_DEVICE_VARIANTS := jflte jgedlte jactivelte jflteatt jfltespr jfltetmo jfltevzw jfltexx jfltecan jflteusc jfltecri jfltecsp jfltezm jftddxx

# not just yet :(
MR_KEXEC_MEM_MIN := 0x85000000
