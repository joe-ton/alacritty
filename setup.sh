#!/bin/bash

CONFIG_DIR="$HOME/.config/alacritty"
REPO_TOML="$(pwd)/alacritty.toml"

echo "📁 Ensuring $CONFIG_DIR exists..."
mkdir -p "$CONFIG_DIR"

echo "🔗 Linking $REPO_TOML → $CONFIG_DIR/alacritty.toml"
ln -sf "$REPO_TOML" "$CONFIG_DIR/alacritty.toml"

echo "✅ Alacritty config is now linked."

chmod +x setup.sh
./setup.sh

