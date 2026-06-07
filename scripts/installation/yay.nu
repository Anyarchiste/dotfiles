#! /usr/bin/env nu

print $"(ansi blue) Installing yay"

let tmp_exists = true
let delete_yay_folder = false

print "moving to /tmp/"

try { cd /tmp/} catch { $tmp_exists = false }

if not $tmp_exists {
	
	print "/tmp/ doesn't exist, using /home/$env.USER and deleting afterwards"

    $delete_yay_folder = true
		
	cd /home/$env.USER

	}

print "adding dependencies (will ask for superuser password)"

sudo pacman -S --needed git base-devel

print "cloning github repository"

git clone https://aur.archlinux.org/yay.git

print "moving into /tmp/yay/"

cd yay/ e> /dev/null

print "compiling yay from source"

makepkg -si
