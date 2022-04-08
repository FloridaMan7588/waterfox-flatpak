# Waterfox Classic flatpak 
A flatpak image of Waterfox Classic, very work in progress. As with the root of the repository, the original README and build instructions can be found below. (Though slightly modified)

<details>
<summary>Original README.md</summary>

# Firefox DevEdition flatpak package

## Required packages to build
This is required to install `cargo-vendor` for downloading cbindgen crate
which is required by the Firefox build.
- openssh-devel
- cmake
- cargo
- rust

## Building
Use the `build.sh` script from parent directory:
```
./build.sh net.waterfoxco.Waterfox-Classic
```
# Installation
Use install.sh script from parent directory:
```
./install.sh net.waterfoxco.Waterfox-Classic
```
# Running
```
flatpak run net.waterfoxco.Waterfox-Classic
```
</details>