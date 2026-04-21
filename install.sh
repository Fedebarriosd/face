#!/usr/bin/env bash
set -e

echo "Installing face..."

mkdir -p ~/.local/bin
cp bin/* ~/.local/bin/

chmod +x ~/.local/bin/cb
chmod +x ~/.local/bin/face

echo "Installing in ~/.local/bin"

# Fish completion
if command -v fish &>/dev/null; then
    mkdir -p ~/.config/fish/completions
    cp completions/face.fish ~/.config/fish/completions/
    echo "Installed fish completion"
fi

echo "Make sure to have ~/.local/bin on your PATH"
