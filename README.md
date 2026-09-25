# VirtualX

A small GTK app for Linux with two buttons: **Upload ISO** and **Launch**.
Upload lets you pick any bootable `.iso` file from your computer. Launch boots
that ISO in a real QEMU virtual machine and opens it in a SPICE display
window, so you can use it like a real machine you can even get it from out site https://virtuallX.freedev.app

## Requirements

- Linux
- `python3`
- `python3-gi`
- `gir1.2-gtk-3.0`
- `qemu-system-x86`
- `virt-viewer`

## Install

Download the latest `.deb` from [Releases](../../releases) and run:

```sh
sudo dpkg -i virtualx_2.0_all.deb
sudo apt-get install -f   # resolves any missing dependencies
```

## Build from source

This repo builds a `.deb` identical in layout to the shipped package:

```sh
./build.sh
```

This produces `virtualx_2.0_all.deb` in the repo root.

## Repo layout

```
src/                        VirtualX application source (usr/bin/virtualx)
packaging/applications/     .desktop launcher entry
packaging/icons/            app icon
debian/control              package metadata
debian/postinst             post-install hook (icon cache, desktop DB)
build.sh                    rebuilds the .deb from the above
```

## License

Add a license of your choice before publishing.
