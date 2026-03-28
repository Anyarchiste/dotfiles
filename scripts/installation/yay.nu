#! /usr/bin/env nu

let tmp_exists = true

print "moving to /tmp/"

try { cd /tmp/} catch { $tmp_exists = false }

if not $exit_code {
	
	print "/tmp/ doesn't exist, using /home/$env.USER and deleting afterwards" 
		
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
