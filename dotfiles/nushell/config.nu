# confi.nu
#
# Installed by:
# version = "0.111.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

use modules/welcome_matt.nu *
use modules/cle.nu *

alias vi = nvim

alias bkup = sh /home/anya/Documents/scripts/rsync_bkup.sh
alias mountbkup = sh /home/anya/Documents/scripts/mount_bkup.sh
alias umountbkup = sh /home/anya/Documents/scripts/unmount_bkup.sh

alias shut = hyprshutdown -t "Shutting down..." --post-cmd "shutdown -P 0"
alias restart = hyprshutdown -t "Restarting..." --post-cmd "reboot"

welcomematt

