#!/bin/sh
# Builds virtualx_2.0_all.deb from the source in this repo.
set -e

VERSION="2.0"
PKG="virtualx"
OUT="${PKG}_${VERSION}_all.deb"

BUILD_DIR="$(mktemp -d)"
trap 'rm -rf "$BUILD_DIR"' EXIT

mkdir -p "$BUILD_DIR/DEBIAN"
mkdir -p "$BUILD_DIR/usr/bin"
mkdir -p "$BUILD_DIR/usr/share/applications"
mkdir -p "$BUILD_DIR/usr/share/icons/hicolor/256x256/apps"

cp debian/control "$BUILD_DIR/DEBIAN/control"
cp debian/postinst "$BUILD_DIR/DEBIAN/postinst"
chmod 755 "$BUILD_DIR/DEBIAN/postinst"

cp src/virtualx "$BUILD_DIR/usr/bin/virtualx"
chmod 755 "$BUILD_DIR/usr/bin/virtualx"

cp packaging/applications/virtualx.desktop "$BUILD_DIR/usr/share/applications/virtualx.desktop"
cp packaging/icons/virtualx.png "$BUILD_DIR/usr/share/icons/hicolor/256x256/apps/virtualx.png"

dpkg-deb --build --root-owner-group "$BUILD_DIR" "$OUT"
echo "Built $OUT"
