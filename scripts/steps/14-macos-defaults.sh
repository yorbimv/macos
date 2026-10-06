#!/usr/bin/env bash
# Preferencias de macOS (Finder, Dock, trackpad, capturas)
source "$(dirname "$0")/../lib.sh"
say "Preferencias de macOS"
note "Finder: extensiones visibles, buscar en carpeta actual, vista de lista"
note "Dock: efecto genio, magnificación, sin recientes"
note "Trackpad: tocar para hacer clic · Capturas → ~/Pictures/Screenshots"
ask "¿Aplicar?" || { note "Omitido."; exit 2; }
bash "$REPO/scripts/macos-defaults.sh"
