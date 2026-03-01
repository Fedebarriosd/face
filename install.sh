#!/usr/bin/env bash
set -e

echo "Installing face..."

mkdir -p ~/.local/bin
cp bin/* ~/.local/bin/

chmod +x ~/.local/bin/cb
chmod +x ~/.local/bin/face

echo "Installing in ~/.local/bin"
echo "Make sure to have ~/.local/bin on your PATH"
