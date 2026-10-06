#!/usr/bin/env bash
# Neovim: descargar plugins
source "$(dirname "$0")/../lib.sh"; load_brew
say "Neovim: plugins"
command -v nvim >/dev/null || { warn "Neovim no está instalado (paso 'CLI')."; exit 1; }
[ -e "$HOME/.config/nvim/init.lua" ] || { warn "Falta enlazar la config (paso 'Dotfiles')."; exit 1; }
nvim --headless "+Lazy! restore" +qa
