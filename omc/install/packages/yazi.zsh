#!/bin/zsh

# Install yazi if not present
if ! command -v yazi >/dev/null 2>&1; then
    echo "Installing yazi..."

    if command -v yay >/dev/null 2>&1; then
        yay -S yazi
    elif command -v pacman >/dev/null 2>&1; then
        sudo pacman -S --noconfirm yazi
    else
        echo "Neither yay nor pacman found. Please install yazi manually."
        echo "See https://yazi-rs.github.io/docs/installation for options."
        exit 1
    fi

    echo "Yazi installed."
else
    echo "Yazi is already installed."
fi

echo "Yazi is ready."
