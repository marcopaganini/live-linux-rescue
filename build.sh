#!/bin/bash
set -eu -o pipefail

lb config -d bookworm --debian-installer-distribution bookworm --archive-areas "main contrib non-free-firmware"
cp pkgs.list.chroot ./config/package-lists
lb build

echo "To rebuild, just run \"lb clean; lb config; lb build\""
