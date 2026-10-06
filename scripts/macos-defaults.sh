#!/usr/bin/env bash
# Preferencias de macOS vía `defaults`. Idempotente.
# Algunas claves cambian entre versiones; las que no apliquen se ignoran sin romper.
set -u

d() { defaults write "$@" 2>/dev/null || echo "  (omitido: $*)"; }

echo "→ Finder"
d com.apple.finder AppleShowAllExtensions -bool true
d NSGlobalDomain AppleShowAllExtensions -bool true
d com.apple.finder FXDefaultSearchScope -string "SCcf"      # buscar en la carpeta actual
d com.apple.finder NewWindowTarget -string "PfHm"            # nueva ventana = carpeta personal
d com.apple.finder NewWindowTargetPath -string "file://$HOME/"
d com.apple.finder FXPreferredViewStyle -string "Nlsv"       # vista de lista

echo "→ Dock"
d com.apple.dock mineffect -string "genie"
d com.apple.dock magnification -bool true
d com.apple.dock show-recents -bool false

echo "→ Trackpad (tocar para hacer clic)"
d com.apple.AppleMultitouchTrackpad Clicking -bool true
d com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
d NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "→ Capturas de pantalla en ~/Pictures/Screenshots"
mkdir -p "$HOME/Pictures/Screenshots"
d com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

killall Finder Dock SystemUIServer 2>/dev/null || true
echo "✓ Listo. Algunos cambios requieren cerrar sesión."
