#!/sbin/sh

   setprop vendor.mmi_init.stage priority
   # Load all needed modules
   # Majority of MMI DLKMs should be in this group
   # touch and flash
   insmod /vendor/lib/modules/sensors_class.ko
   setprop vendor.mmi_init.stage common
   insmod /vendor/lib/modules/mmi_annotate.ko
   insmod /vendor/lib/modules/mmi_sys_temp.ko
   insmod /vendor/lib/modules/mmi_relay.ko
   insmod /vendor/lib/modules/mmi_info.ko
   insmod /vendor/lib/modules/touchscreen_mmi.ko
   insmod /vendor/lib/modules/stmicro_mmi.ko
