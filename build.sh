#!/bin/bash
set -eu -o pipefail

sudo lb clean
lb config -d bookworm --debian-installer-distribution bookworm --archive-areas "main contrib non-free-firmware"
sudo cp pkgs.list.chroot ./config/package-lists
sudo lb build

echo "To rebuild, just run \"lb clean; lb config; lb build\""
