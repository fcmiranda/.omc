#!/usr/bin/env zsh

# Script to install packages

set -e

# Load helper functions
source "${0:A:h}/helpers.zsh"

echo "Starting installation..."

install_packages \
    kanshi \
    atuin \
    ghostty \
    keyd \
    yazi \
    stow \
    visual-studio-code-bin \
    p7zip

install_plugins \
    zsh-plugins

echo "Installation complete."
