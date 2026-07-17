#!/bin/bash
KERNEL_VERSION="$1"
#check
if [ ! -f Makefile ]; then
    echo "Error: Makefile not found. Run this script from the kernel source root." >&2
    exit 1
fi

if [ -z "$KERNEL_VERSION" ]; then
    echo "Error: Please specify the kernel version." >&2
    echo "Example usage: curl -LSs \"https://raw.githubusercontent.com/xxblebleblexx/nomount-installer/refs/heads/installer/nomount.sh\" | bash -s 4.19" >&2
    exit 1
fi

git clone -b master --depth=1 https://github.com/maxsteeel/nomount.git;wait
cp nomount/kernel/src/nomount.c fs/
cp nomount/kernel/src/nomount.h fs/

if [ "$KERNEL_VERSION" = "4.9" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "4.14" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "4.19" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "5.4" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "5.10" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "5.15" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "6.1" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "6.6" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "6.12" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi

if [ "$KERNEL_VERSION" = "6.18" ]; then
cp nomount/kernel/patches/nomount_${KERNEL_VERSION}_kernel_integration.patch .
patch -p1 < nomount_${KERNEL_VERSION}_kernel_integration.patch
fi
