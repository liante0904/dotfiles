#!/bin/bash

# Dotfiles Setup Script

DOTFILES_DIR="$HOME/dev/dotfiles"

echo "🚀 Starting dotfiles setup..."

# --- Ghostty ---
echo "Setting up Ghostty..."
GHOSTTY_CONFIG_DIR="$HOME/.config/ghostty"
GHOSTTY_TARGET="$GHOSTTY_CONFIG_DIR/config"
GHOSTTY_SOURCE="$DOTFILES_DIR/ghostty/config"

if [ -f "$GHOSTTY_SOURCE" ]; then
    mkdir -p "$GHOSTTY_CONFIG_DIR"
    
    # Back up existing config if it's not already a symlink
    if [ -f "$GHOSTTY_TARGET" ] && [ ! -L "$GHOSTTY_TARGET" ]; then
        echo "Backing up existing Ghostty config to config.bak"
        mv "$GHOSTTY_TARGET" "$GHOSTTY_TARGET.bak"
    fi

    # Create symlink
    ln -sf "$GHOSTTY_SOURCE" "$GHOSTTY_TARGET"
    echo "✅ Ghostty configuration linked."
else
    echo "❌ Ghostty source config not found in $GHOSTTY_SOURCE"
fi

# Add more tools here (zsh, git, etc.)

echo "✨ Setup complete!"
