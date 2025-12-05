#!/bin/zsh

pkg_install atuin || curl --proto '=https' --tlsv1.2 -sSf https://install.atuin.sh | sh

if command -v atuin &>/dev/null; then
  atuin login
fi