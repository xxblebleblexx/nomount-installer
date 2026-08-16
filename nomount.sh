#!/bin/bash
KERNEL_VERSION="$1"
SUPPORTED_VERSIONS=(4.9 4.14 4.19 5.4 5.10 5.15 6.1 6.6 6.12 6.18)

# check
if [ ! -f Makefile ]; then
    echo "Error: Makefile not found. Run this script on kernel source dir" >&2
    exit 1
fi

if [ -z "$KERNEL_VERSION" ]; then
    echo "Error: Please specify the kernel version." >&2
    echo "Example usage: curl -LSs \"https://raw.githubusercontent.com/xxblebleblexx/nomount-installer/refs/heads/installer/nomount.sh\" | bash -s 4.19" >&2
    exit 1
fi

if [[ ! " ${SUPPORTED_VERSIONS[*]} " =~ " ${KERNEL_VERSION} " ]]; then
    echo "Error: Kernel version $KERNEL_VERSION is not supported." >&2
    echo "Supported versions are: ${SUPPORTED_VERSIONS[*]}" >&2
    exit 1
fi

# main code
git clone -b dev --depth=1 https://github.com/maxsteeel/nomount.git;wait
mkdir -p fs/nomount
cp nomount/kernel/src/Kconfig fs/nomount
cp nomount/kernel/src/Makefile fs/nomount
cp nomount/kernel/src/nomount.c fs/nomount
cp nomount/kernel/src/nomount.h fs/nomount

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
