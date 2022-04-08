#!/bin/sh
set -ux

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.gnome.Platform//42 org.gnome.Sdk//42
#flatpak install flathub org.gnome.Platform//3.26 org.gnome.Sdk//3.26
flatpak install flathub org.freedesktop.Sdk.Extension.rust-stable//1.6
flatpak install flathub org.freedesktop.Platform//21.08 org.freedesktop.Sdk//21.08
