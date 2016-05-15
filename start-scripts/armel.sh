#!/bin/bash

qemu-system-arm -nographic -M versatilepb -m 1024 -kernel vmlinuz-3.2.0-4-versatile -initrd initrd.img-3.2.0-4-versatile -hda debian_wheezy_armel_standard.qcow2 -append "root=/dev/sda1 console=ttyAMA0,115200" -redir tcp:$1::22
