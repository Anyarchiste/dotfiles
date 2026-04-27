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

export def mnt_samsung [] {

  let uuid = "7b0d89b7-af15-4196-96ba-14899518e070"

  print "Opening Samsung SSD T5 EVO disk, please enter the LUKS password";

  udisksctl unlock --block-device /dev/disk/by-uuid/($uuid);

  print "Mounting /dev/mapper/evo";

  let luks_device = "/dev/mapper/luks-" | append $uuid | str join "";

  udisksctl mount --block-device $luks_device;

}
