#!/bin/sh
set -ux
source /etc/os-release

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08
flatpak install -y flathub org.freedesktop.Sdk.Extension.rust-stable//22.08
flatpak install -y flathub org.freedesktop.Sdk.Extension.llvm14//22.08
flatpak install -y flathub org.freedesktop.Sdk.Extension.node18//22.08
#flatpak install -y flathub org.freedesktop.Platform//21.08 org.freedesktop.Sdk//21.08
