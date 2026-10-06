# Funciones compartidas por install.sh y scripts/steps/*.sh
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"

say()  { printf "\n\033[1;34m==> %s\033[0m\n" "$*"; }
note() { printf "    \033[2m%s\033[0m\n" "$*"; }
warn() { printf "\033[1;33m!  %s\033[0m\n" "$*"; }

# ask "pregunta" → 0 si responde s/y (default: no)
ask() {
  local r; read -rp "$1 [s/N] " r
  [[ "$r" =~ ^[sSyY]$ ]]
}

load_brew() {
  if [ -x /opt/homebrew/bin/brew ]; then eval "$(/opt/homebrew/bin/brew shellenv)"; fi
  command -v brew >/dev/null 2>&1 || { warn "Homebrew no está instalado. Ejecuta antes el paso 'Homebrew'."; exit 1; }
}

# Muestra lo que instala un Brewfile y pide confirmación
brewfile_step() {
  local f="$REPO/brewfiles/$1.Brewfile"
  load_brew
  say "Se instalará (brewfiles/$1.Brewfile):"
  grep -E '^(brew|cask|vscode|mas) ' "$f" | sed 's/^/    /'
  echo
  if ask "¿Instalar todo esto?"; then
    brew bundle --file="$f" || warn "Algo falló; revisa arriba y vuelve a ejecutar este paso."
  else
    note "Omitido. Para elegir solo algunos: edita brewfiles/$1.Brewfile o usa brew install [--cask] <nombre>."
    return 2
  fi
}

# link origen destino → symlink con respaldo
link() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then note "ya enlazado: $dst"; return; fi
  if [ -e "$dst" ] || [ -L "$dst" ]; then mv "$dst" "$dst.bak-$STAMP"; note "respaldo: $dst.bak-$STAMP"; fi
  ln -s "$src" "$dst"; note "$dst -> $src"
}
