#!/usr/bin/env zsh

# Environment Setup
typeset -g INSTALL_DIR="${0:A:h}"
typeset -g PACKAGES_DIR="${INSTALL_DIR}/packages"
typeset -g PLUGINS_DIR="${INSTALL_DIR}/plugins"

# Generic runner
run_scripts() {
  local type="$1"
  local dir="$2"
  shift 2
  local -a items=("$@")

  if (( ${#items[@]} == 0 )); then
    return
  fi

  print -P "%F{blue}:: %B${type}%b%f"

  for item in "${items[@]}"; do
    local script="${dir}/${item}.zsh"
    if [[ -f "$script" ]]; then
      print -P "  %F{green}→%f Installing %B${item}%b..."
      zsh "$script"
    else
      print -P "  %F{yellow}⚠%f Script for %B${item}%b not found"
    fi
  done
}

install_packages() {
  run_scripts "Packages" "$PACKAGES_DIR" "$@"
}

install_plugins() {
  run_scripts "Plugins" "$PLUGINS_DIR" "$@"
}
