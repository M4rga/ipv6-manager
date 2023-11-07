#!/bin/bash

set -e

if [ "$EUID" != '0' ]; then
    echo 'This script must be run as root' >&2
    exit 1
fi

sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/ c\GRUB_CMDLINE_LINUX_DEFAULT="quiet splash ipv6.disable=1"' /etc/default/grub

update-grub

echo "restart your PC to apply changes"
