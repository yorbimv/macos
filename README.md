# macOS — bootstrap de un equipo nuevo

Instala mis herramientas, apps y configuración en una Mac con Apple Silicon (probado en macOS 27, MacBook Air M5).

## Uso

1. Actualiza macOS e inicia sesión en iCloud ([guía rápida](docs/01-sistema.md)).
2. Abre Terminal y corre:

```bash
xcode-select --install
git clone https://github.com/yorbimv/macos.git ~/Documents/GitHub/macos
cd ~/Documents/GitHub/macos && ./install.sh
```

`install.sh` es idempotente: se puede volver a correr sin problema. Si ya tienes las apps, usa `./install.sh --no-apps`.

## Qué hace

| Paso | Qué |
|---|---|
| Homebrew | Instala brew si falta |
| `Brewfile` | CLI, apps, fuentes y extensiones de VSCode |
| Oh My Zsh | Con Powerlevel10k y fzf |
| `dotfiles/` | Symlinks a `~/.zshrc`, nvim, git, VSCode, Karabiner, OpenCode (respalda lo existente como `*.bak-<fecha>`) |
| `scripts/macos-defaults.sh` | Finder, Dock, trackpad, capturas |
| Neovim | Restaura los plugins con lazy.nvim |

## Estructura

```
Brewfile      # única lista de lo que se instala
install.sh    # orquestador
dotfiles/     # zsh, nvim, git, vscode, karabiner, opencode
scripts/      # preferencias de macOS
docs/         # pasos manuales y guías de referencia
```

## Documentación

- [01 - Sistema](docs/01-sistema.md): pasos manuales (iCloud, permisos, batería)
- [02 - Aplicaciones](docs/02-aplicaciones.md)
- [03 - Dev](docs/03-dev/): zsh, nvim, git, vscode, iTerm2
- [04 - Productividad](docs/04-productividad/): cuentas, Office 365, cloud, email
- [05 - IA local](docs/05-ia-local/): OpenCode, Gemini, Ollama
- [Troubleshooting](docs/troubleshooting/README.md)

## Mantener el repo al día

- Nueva app o CLI → agrégala al `Brewfile`. `brew bundle cleanup --file=Brewfile` muestra lo que tienes instalado y no está listado.
- Los dotfiles son symlinks: editar `~/.zshrc` o `~/.config/nvim` ya modifica el repo; solo haz commit.

_Última actualización: octubre 2026_
