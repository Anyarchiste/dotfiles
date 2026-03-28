# env.nu
#
# Installed by:
# version = "0.111.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

let homedir = (echo /home/($env.USER))

# Default editor
$env.config.buffer_editor = "nvim"

# VIM movements
$env.config = {
    edit_mode: vi
    }

$env.config.history = {
  file_format: sqlite
  max_size: 1_000_000
  sync_on_enter: true
  isolation: true
}

# Japanese keyboard UwU
$env.QT_IM_MODULE = 'fcitx'
$env.XMODIFIERS = '@im=fcitx'

# SSH-Agent Bitwarden
$env.SSH_AUTH_SOCK = "/home/anya/.bitwarden-ssh-agent.sock"

# Download dir
$env.XDG_DOWNLOAD_DIR = ($homedir | append "Downloads" | str join "/")

# No default banner
$env.config.show_banner = false
