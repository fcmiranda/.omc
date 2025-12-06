#!/bin/zsh

# Install zsh plugins: zsh-autosuggestions, zsh-syntax-highlighting, and zsh-transient-prompt

# Unset git env vars to avoid conflicts with bare repo dotfile setups
unset GIT_DIR GIT_WORK_TREE

ZSH_PLUGINS_DIR="${HOME}/.zsh-plugins"
mkdir -p "$ZSH_PLUGINS_DIR"

install_zsh_plugin() {
  local name="$1"
  local repo="$2"
  
  if [ ! -d "$ZSH_PLUGINS_DIR/$name" ]; then
    echo "Installing $name..."
    git clone "$repo" "$ZSH_PLUGINS_DIR/$name"
    echo "$name installed."
  else
    echo "$name is already installed."
  fi
}

install_zsh_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"
install_zsh_plugin "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting"
install_zsh_plugin "zsh-transient-prompt" "https://github.com/olets/zsh-transient-prompt.git"