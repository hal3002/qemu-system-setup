#!/bin/bash

qemu-system-mipsel -M malta -kernel vmlinux-3.2.0-4-4kc-malta -hda debian_wheezy_mipsel_standard.qcow2 -append "root=/dev/sda1 console=ttyS0" -m 256 -nographic -net user,hostfwd=tcp::$1-:22 -net nic
