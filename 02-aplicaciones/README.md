# 02 - Aplicaciones

Las apps están divididas por categoría en [`brewfiles/`](../brewfiles/). Cada una es un paso de `./install.sh`:

| Paso | Archivo | Contenido |
|---|---|---|
| 3 | [`cli`](../brewfiles/cli.Brewfile) | git, gh, neovim, ripgrep, fzf, lsd… |
| 5 | [`dev`](../brewfiles/dev.Brewfile) | iTerm2, VSCode, GitHub Desktop, fuentes |
| 8 | [`vscode-extensiones`](../brewfiles/vscode-extensiones.Brewfile) | Extensiones de VSCode |
| 9 | [`navegadores`](../brewfiles/navegadores.Brewfile) | Brave, Chrome, Helium |
| 10 | [`productividad`](../brewfiles/productividad.Brewfile) | Alfred, Rectangle, Karabiner, Obsidian… |
| 11 | [`microsoft-cloud`](../brewfiles/microsoft-cloud.Brewfile) | Office, Teams, OneDrive, Google Drive |
| 12 | [`utilidades`](../brewfiles/utilidades.Brewfile) | Tailscale, AnyDesk, Transmission… |
| 13 | [`ia`](../brewfiles/ia.Brewfile) | Claude, ChatGPT, Ollama, Gemini CLI, OpenCode |

```bash
./install.sh 9                                  # guiado: muestra la lista y pregunta
brew bundle --file=brewfiles/navegadores.Brewfile   # directo, sin preguntas
brew install --cask brave-browser               # una sola app
```

Para agregar algo nuevo: instálalo y escríbelo en el Brewfile de su categoría.

## Apps que NO están en el Brewfile (instalar a mano)

| Origen | Apps |
| :-- | :-- |
| Mac App Store | Encrypto, HP Smart, Paint X, PiPifier, Xcode (con `mas`, ver Brewfile) |
| Sitio oficial / con licencia propia | Angry IP Scanner, Bartender, CleanMyMac, Disk Drill, Path Finder, PDFelement, Photomator, ProFind, WidgetWall, Download Shuttle Pro, Ethernet Status |
| Portal de Microsoft | Microsoft Defender (lo despliega la organización) |

> Alfred, CleanShot y Spark se instalan con el Brewfile pero requieren tu licencia o cuenta.

Siguiente: [03 - Dev Environment](../03-dev-environment/).
