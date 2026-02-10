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
    p7zip \
    tmux \
    yq \
    figlet \
    lolcat \
    procs \
    duf \
    gh \
    zen-browser-bin \
    opencode-bin \
    gum \
    sesh-bin \
    crush-bin \
    hugo \
    zmk-studio-bin \

install_plugins \
    zsh-plugins \
    tmux-plugins

echo "Installation complete."
