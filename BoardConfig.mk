#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := droidx

BOARD_KERNEL_CMDLINE := console=ttyS2,115200n8 rw mem=496M@0x80C00000 init=/init ip=off motobldlabel=none mtdparts=omap2-nand.0:128k(mbr),128k(mbmloader),256k(unused0),512k(mbm),512k(mbmbackup),512k(ebr),512k(bploader),512k(cdt),4m(pds),512k(lbl),512k(lbl_backup),1m(logo),2m(sp),512k(devtree),512k(devtree_backup),4m(bpsw),4m(boot),5m(recovery),12m(cdrom),512k(misc),512k(cid),4m(kpanic),286336k(system),384k(unused1),190m(cache),256m(preinstall),256m(userdata)
BOARD_KERNEL_BASE := 0x10000000

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x07500000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true

BOARD_DATA_DEVICE := /dev/block/userdata
BOARD_DATA_FILESYSTEM := auto
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk1p21
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_CACHE_DEVICE := /dev/block/cache
BOARD_CACHE_FILESYSTEM := auto

BOARD_HIJACK_RECOVERY_PATH := /preinstall/recovery