#!/usr/bin/env bash
# Dotfiles: enlazar config de zsh, git, nvim, VSCode…
source "$(dirname "$0")/../lib.sh"
say "Dotfiles"
D="$REPO/dotfiles"
while IFS='|' read -r label src dst; do
  echo; echo "• $label"; note "$dst -> $src"
  ask "  ¿Enlazar?" && link "$src" "$dst"
done <<LIST
Zsh (.zshrc)|$D/zsh/.zshrc|$HOME/.zshrc
Powerlevel10k (.p10k.zsh)|$D/zsh/.p10k.zsh|$HOME/.p10k.zsh
Git (.gitconfig)|$D/git/.gitconfig|$HOME/.gitconfig
Neovim|$D/nvim|$HOME/.config/nvim
VSCode (settings.json)|$D/vscode/settings.json|$HOME/Library/Application Support/Code/User/settings.json
Karabiner|$D/karabiner/karabiner.json|$HOME/.config/karabiner/karabiner.json
OpenCode|$D/opencode/opencode.jsonc|$HOME/.config/opencode/opencode.jsonc
LIST
if [ ! -f "$HOME/.gitconfig.local" ] && ask $'\n¿Configurar tu identidad de git (nombre y correo)?'; then
  read -rp "Git user.name: " GN; read -rp "Git user.email: " GE
  printf '[user]\n\tname = %s\n\temail = %s\n' "$GN" "$GE" > "$HOME/.gitconfig.local"
fi
