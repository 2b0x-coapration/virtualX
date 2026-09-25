<div align="center">

# VirtualX

**Run any ISO as a real virtual machine — two buttons, no fuss.**

Upload an ISO. Hit Launch. You're inside a live QEMU machine.

</div>

---

## What it is

VirtualX is a tiny GTK app for Linux that strips virtual machine setup down
to the two steps that actually matter:

1. **Upload ISO** — pick any bootable `.iso` from your computer.
2. **Launch** — VirtualX boots it in a real QEMU virtual machine and opens
   it in a SPICE display window, ready to use like a physical machine.

No wizards, no network configs, no storage pool setup. If you've got an ISO,
you're one click from running it.

## Features

- 🪶 **Featherweight** — a single Python/GTK script, no heavyweight UI framework
- 🚀 **Two-button workflow** — upload, launch, done
- 🖥️ **Real VMs** — powered by QEMU, displayed over SPICE
- 🐧 **Linux-native** — built for Linux, not a cross-platform compromise
- 💸 **Free, no limits** — no license key, no VM cap, no trial period

## Requirements

| Dependency | Purpose |
|---|---|
| `python3` | Runs the app |
| `python3-gi`, `gir1.2-gtk-3.0` | GTK interface |
| `qemu-system-x86` | Boots the virtual machine |
| `virt-viewer` | SPICE display window |

## Install

Grab the latest `.deb` from [Releases](../../releases):

```sh
sudo dpkg -i virtualx_2.0_all.deb
sudo apt-get install -f   # pulls in any missing dependencies
```

Launch it from your applications menu, or run `virtualx` from a terminal.

## Build from source

```sh
git clone <this-repo-url>
cd virtualx
./build.sh
```

`build.sh` reassembles `virtualx_2.0_all.deb` from the source in this repo —
no extra tooling required beyond `dpkg-deb`.

## How it's laid out
