#!/usr/bin/env bash
set -e

echo "Installing face..."

# Destination for the scripts; override with e.g. BIN_DIR="$HOME/.local/scripts" ./install.sh
BIN_DIR="${BIN_DIR:-$HOME/.local/bin}"

mkdir -p "$BIN_DIR"
cp bin/* "$BIN_DIR"/

chmod +x "$BIN_DIR/cb"
chmod +x "$BIN_DIR/face"

echo "Installing in $BIN_DIR"

# Fish completion
if command -v fish &>/dev/null; then
    mkdir -p ~/.config/fish/completions
    cp completions/face.fish ~/.config/fish/completions/
    echo "Installed fish completion"
fi

echo "Make sure to have $BIN_DIR on your PATH"
