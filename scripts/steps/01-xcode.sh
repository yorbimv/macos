#!/usr/bin/env bash
# Herramientas de línea de comandos de Xcode (git, clang…)
source "$(dirname "$0")/../lib.sh"
say "Herramientas de línea de comandos de Xcode"
if xcode-select -p >/dev/null 2>&1; then note "Ya instaladas: $(xcode-select -p)"; exit 0; fi
xcode-select --install
warn "Termina la instalación en la ventana que apareció y luego continúa con el siguiente paso."
