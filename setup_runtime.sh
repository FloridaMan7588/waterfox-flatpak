#!/bin/sh
set -ux
source /etc/os-release

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub org.gnome.Platform//42 org.gnome.Sdk//42
flatpak install -y flathub org.freedesktop.Sdk.Extension.rust-stable//1.6
flatpak install -y flathub org.freedesktop.Sdk.Extension.llvm13//21.08
flatpak install -y flathub org.freedesktop.Sdk.Extension.node18//21.08
#flatpak install -y flathub org.freedesktop.Platform//21.08 org.freedesktop.Sdk//21.08
