#!/usr/bin/env bash
set -e -u

useradd -m -p '' -s /bin/bash -G wheel,storage,power,network,video,audio,disk tinfoil-live

sed -i 's/^# %wheel ALL=(ALL:ALL) NOPASSWD: ALL/%wheel ALL=(ALL:ALL) NOPASSWD: ALL/' /etc/sudoers

systemctl enable no-swap.service
systemctl enable nftables.service
