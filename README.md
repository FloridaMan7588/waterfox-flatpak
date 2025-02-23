# Archival Notice! 
This project is going to be archived in favor of the much better, up to date version that is now on Flathub. Please download that instead, and do not touch this repository if you want a functional and maintained browser.

# Forked from xhorak/firefox-devedition-flatpak
This repository is forked from the now dead xhorak/firefox-devedition-flatpak as a means to create structure for this project. Since Waterfox is not too far differing from it's parent, Firefox, than this is the perfect framework to work with. I currently have no experience with Flatpak so this will hopefully help me understand it better, and make something useful at the same time. I will place my README below the original, if you would like to read the original, click the dropdown below. As you can see by all of my edits to this repository, I'm not too good with git, so please don't mind any bizarre commits.

<details>
<summary>Original README.md</summary>

# firefox-flatpak
This is a set of patches, scripts and a manifest to build latest Firefox using Flatpak. DevEdition and Nightly are using GNOME 3.34 as base runtime. The UpstreamBinary Flatpak uses the FreeDesktop Platform for GNOME and KDE.

# Usage

Run ```./setup_runtime.sh``` to download and install GNOME SDK and FreeDesktop Platform for Flatpak.

Currently there are three builds available:
* org.mozilla.FirefoxNightly - to build latest nightly
* org.mozilla.FirefoxDevEdition - Firefox Developer Edition (branded aurora build)
* org.mozilla.FirefoxUpstreamBinary - pack a Firefox uptream binary as flatpak

## Prerequisites

Of course to build flatpaks the ```flatpak-builder``` package needs to be installed.

Please see the accompanying README.md in the specific build directory for further build requirements, e.g.
* org.mozilla.FirefoxNightly/README.md

## Build

To build specific build run:
```
./build.sh BUILD_NAME
```
for example 
```
./build.sh org.mozilla.FirefoxNightly
``` 
will build Firefox from master branch.

After the build is finished you can install the app by:
```
./install.sh BUILD_NAME
```

To start Firefox use:
```
flatpak run BUILD_NAME
```

For example:
```
flatpak run org.mozilla.FirefoxNightly
```

# Repository

Created repository with some additional instructions can be found there: https://firefox-flatpak.mojefedora.cz/
</details>

# waterfox-flatpak
An attempt to make a flatpak (and maybe snap later) for the web browser Waterfox. Yes I realize I could have just used the precompilied binaries instead of compiling it with flatpak, no I'm not going to change it. The only reason I have it set to compile instead of just copying the binaries is becasue the repository this is forked from was designed that way. Yeah the devedition.

# Why?

Well I'm lazy you see, and I don't want to bother with creating all of the neccessary desktop integrations for an application every time I download Waterfox. So, as an alternative, I spent multiple hours of my time trying to figure out how flatpak works to make something that will most likely break before it's even installed on your system. Maybe I'll make a Snap later, but near-proprietary software is gross. Anyways yeah this is dumb, but I wanted to see it happen.

Also all the code for this project is mostly of [@xhorak](https://github.com/xhorak/firefox-devedition-flatpak), [Mozilla](https://mozilla.org), and [WaterfoxCo](https://waterfox.net)/[System1](https://system1.com), I just did some of the flatpak nonsense.

Also Also, this probably won't be updated regularly either so I might set up some kind of CI/CD thing to do it for me, but that will take some knowledge to figure out as well. 

# Build Instructions

To begin, we need to configure the local build environment. To do this, we run 
```
./setup_runtime.sh
```
This installs needed runtimes and SDKs for flatpak, and allows for us to properly build the other packages.

Now we build our flatpak package. Again, we run
```
./build.sh WATERFOX_VER
```
Replacing WATERFOX_VER with the version of Waterfox you want to build. For example, you can run
```
./build.sh net.waterfoxco.waterfox-classic
```
to build Waterfox Classic.

Then, to install the built package, we run
```
./install.sh WATERFOX_VER
```
Again replacing WATERFOX_VER with the desired version.

That's about it, now you just run it with 
```
flatpak run WATERFOX_VER
```
