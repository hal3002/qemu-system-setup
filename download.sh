#!/bin/bash

mkdir qemu-images
cd qemu-images
for x in armel armhf mips mipsel; do
   wget -R '*desktop*,*squeeze*' -A '*2.6*,*initrd*,*vmlinuz*,*.qcow2,*vmlinux*' -r --no-parent https://people.debian.org/~aurel32/qemu/$x/
done
mv people.debian.org/~aurel32/qemu/* .
rm -rf people.debian.org
