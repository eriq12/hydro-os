#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

echo "INFO: grab kernel module"
KERNEL_VER=$(ls /lib/modules | head -n 1)
echo $KERNEL_VER

echo "INFO: grab xpad modules"
MODULE_VER=$(ls /usr/src | grep xpadneo |  sed 's/-/\//')
echo $MODULE_VER

echo "INFO: build and install xpadneo"
sudo dkms build -m $MODULE_VER -k $KERNEL_VER
sudo dkms install -m $MODULE_VER -k $KERNEL_VER