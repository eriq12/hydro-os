#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

echo "INFO: grab kernel module"
KERNEL_VER=$(ls /lib/modules | head -n 1)
echo $KERNEL_VER

echo "INFO: rebuild akmods"
sudo akmods --kernels $KERNEL_VER