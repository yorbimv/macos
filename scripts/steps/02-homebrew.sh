#!/usr/bin/env bash
# Homebrew (gestor de paquetes)
source "$(dirname "$0")/../lib.sh"
say "Homebrew"
if [ -x /opt/homebrew/bin/brew ]; then note "Ya instalado: $(/opt/homebrew/bin/brew --version | head -1)"; else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
if ! grep -qs 'brew shellenv' "$HOME/.zprofile"; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"; note "PATH agregado a ~/.zprofile"
fi
