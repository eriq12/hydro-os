#!/usr/bin/env bash
# nextcloud desktop
sleep 15 && flatpak run --branch=stable --arch=x86_64 --command=nextcloud --file-forwarding com.nextcloud.desktopclient.nextcloud
