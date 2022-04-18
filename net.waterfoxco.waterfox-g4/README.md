# Waterfox G4 Flatpak package
A flatpak image of Waterfox G4, very work in progress. As with the root of the repository, the original README and build instructions can be found below. (Though slightly modified)

<details>
<summary>Original README.md</summary>

# Firefox Nightly flatpak package

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
./build.sh net.waterfoxco.waterfox-g4
```
# Installation
Use install.sh script from parent directory:
```
./install.sh net.waterfoxco.waterfox-g4
```
# Running
```
flatpak run net.waterfoxco.waterfox-g4
```
</details>
