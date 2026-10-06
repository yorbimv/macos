#!/usr/bin/env bash
# Oh My Zsh + Powerlevel10k + fzf
source "$(dirname "$0")/../lib.sh"
say "Oh My Zsh"
[ -d "$HOME/.oh-my-zsh" ] && note "ya instalado" || RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
say "Powerlevel10k"
P10K="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$P10K" ] && note "ya instalado" || git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K"
say "fzf"
[ -d "$HOME/.fzf" ] && note "ya instalado" || { git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"; "$HOME/.fzf/install" --all --no-bash --no-fish; }
