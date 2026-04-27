#! /usr/bin/env nu

###############################################
#
# Creator:      Anyarchiste
# Date:         2025-12-10
# Name:         mount_bkup.sh
# Description:  Script to automount the backup
#               disk (Samsung SSD T5 EVO)
#
###############################################

export def umnt_samsung [] {

print "locking Samsung evoT5"

let uuid = "7b0d89b7-af15-4196-96ba-14899518e070"

let luks_device = "/dev/mapper/luks-" | append $uuid | str join "";

udisksctl unmount --block-device $luks_device;

udisksctl lock --block-device /dev/disk/by-uuid/($uuid);

}
