#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

echo "INFO: grab kernel module"
KERNEL_VER=$(ls /lib/modules | head -n 1)
echo $KERNEL_VER

echo "INFO: list all modules"
ls /usr/src

echo "INFO: grab xpad modules"
XPAD_MODULE_VER=$(ls /usr/src | grep xpadneo |  sed 's/-/\//')
echo $XPAD_MODULE_VER

echo "INFO: grab open razer modules"
RAZER_MODULE_VER=$(ls /usr/src | grep razer | sed -E 's/(.*)-/\1\//')
echo $RAZER_MODULE_VER

echo "INFO: build and install xpadneo"
sudo dkms build -m $XPAD_MODULE_VER -k $KERNEL_VER
sudo dkms install -m $XPAD_MODULE_VER -k $KERNEL_VER

echo "INFO: build and install openrazer"
sudo dkms build -m $RAZER_MODULE_VER -k $KERNEL_VER
sudo dkms install -m $RAZER_MODULE_VER -k $KERNEL_VER