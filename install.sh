#!/usr/bin/env bash
# Bootstrap de una Mac nueva (Apple Silicon). Idempotente: se puede correr varias veces.
#   ./install.sh            → todo
#   ./install.sh --no-apps  → solo dotfiles y preferencias (sin brew bundle)
set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"
say() { printf "\n\033[1;34m==> %s\033[0m\n" "$*"; }

# Enlaza $2 -> $1 respaldando lo existente (si no es ya el symlink correcto)
link() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then return; fi
  if [ -e "$dst" ] || [ -L "$dst" ]; then mv "$dst" "$dst.bak-$STAMP"; echo "  respaldo: $dst.bak-$STAMP"; fi
  ln -s "$src" "$dst"; echo "  $dst -> $src"
}

say "1/7 Herramientas de línea de comandos de Xcode"
if ! xcode-select -p >/dev/null 2>&1; then
  xcode-select --install
  echo "Termina la instalación en la ventana que apareció y vuelve a correr ./install.sh"
  exit 0
fi

say "2/7 Homebrew"
if ! command -v brew >/dev/null 2>&1 && [ ! -x /opt/homebrew/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

if [ "${1:-}" != "--no-apps" ]; then
  say "3/7 brew bundle (apps, CLI, fuentes, extensiones de VSCode)"
  brew bundle --file="$REPO/Brewfile" || echo "⚠ Algunos paquetes fallaron; revisa arriba y re-ejecuta."
else
  say "3/7 brew bundle (omitido)"
fi

say "4/7 Oh My Zsh + Powerlevel10k"
[ -d "$HOME/.oh-my-zsh" ] || RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
P10K="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ -d "$P10K" ] || git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K"
[ -d "$HOME/.fzf" ] || { git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"; "$HOME/.fzf/install" --all --no-bash --no-fish; }

say "5/7 Dotfiles (symlinks)"
link "$REPO/dotfiles/zsh/.zshrc"                 "$HOME/.zshrc"
link "$REPO/dotfiles/zsh/.p10k.zsh"              "$HOME/.p10k.zsh"
link "$REPO/dotfiles/git/.gitconfig"             "$HOME/.gitconfig"
link "$REPO/dotfiles/nvim"                       "$HOME/.config/nvim"
link "$REPO/dotfiles/karabiner/karabiner.json"   "$HOME/.config/karabiner/karabiner.json"
link "$REPO/dotfiles/opencode/opencode.jsonc"    "$HOME/.config/opencode/opencode.jsonc"
link "$REPO/dotfiles/vscode/settings.json"       "$HOME/Library/Application Support/Code/User/settings.json"

if [ ! -f "$HOME/.gitconfig.local" ]; then
  read -rp "Git user.name: " GN; read -rp "Git user.email: " GE
  printf '[user]\n\tname = %s\n\temail = %s\n' "$GN" "$GE" > "$HOME/.gitconfig.local"
fi

say "6/7 Preferencias de macOS"
bash "$REPO/scripts/macos-defaults.sh"

say "7/7 Neovim: instalar plugins"
command -v nvim >/dev/null && nvim --headless "+Lazy! restore" +qa || true

cat <<MSG

✓ Listo. Pasos manuales que no se pueden automatizar → 01-sistema/preferencias.md
  (iCloud, cuentas Microsoft, permisos de Privacidad, licencias).
  Abre una terminal nueva para cargar zsh.
MSG
