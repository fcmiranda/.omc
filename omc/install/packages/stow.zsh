#!/bin/zsh

# Install stow if not present
if ! command -v stow >/dev/null 2>&1; then
    echo "Installing stow..."

    if command -v yay >/dev/null 2>&1; then
        yay -S stow
    elif command -v pacman >/dev/null 2>&1; then
        sudo pacman -S --noconfirm stow
    else
        echo "Neither yay nor pacman found. Please install stow manually."
        exit 1
    fi

    echo "Stow installed."
else
    echo "Stow is already installed."
fi

echo "Stow is ready."
