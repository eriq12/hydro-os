#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

git clone https://git.hydrosaber.com/eriq12/dotfiles /etc/skel/.local/share/chezmoi

cp /etc/skel/.local/share/chezmoi/dot_bashrc /etc/skel/.bashrc
cp /etc/skel/.local/share/chezmoi/dot_zshrc /etc/skel/.zshrc
cp -r /etc/skel/.local/share/chezmoi/dot_config /etc/skel/.config