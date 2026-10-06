# 03 - Entorno de desarrollo

`install.sh` instala todo y enlaza los dotfiles con symlinks desde `dotfiles/`:

| Archivo en el repo | Destino |
|---|---|
| `dotfiles/zsh/.zshrc`, `.p10k.zsh` | `~/.zshrc`, `~/.p10k.zsh` |
| `dotfiles/git/.gitconfig` | `~/.gitconfig` (identidad en `~/.gitconfig.local`) |
| `dotfiles/nvim/` | `~/.config/nvim` |
| `dotfiles/vscode/settings.json` | `~/Library/Application Support/Code/User/settings.json` |
| `dotfiles/karabiner/`, `dotfiles/opencode/` | `~/.config/...` |

Como son symlinks, editar `~/.zshrc` o `~/.config/nvim` modifica el repo directamente: solo haz commit.

## Guías de referencia

| Guía | Descripción |
|------|-------------|
| [iTerm2](iterm2.md) | Colores, perfiles, integración |
| [Zsh](zsh.md) | Oh-My-Zsh, Powerlevel10k, plugins, alias |
| [Git](git.md) | Configuración y cheat sheet |
| [Neovim](nvim.md) · [tour](nvim-tour.md) | Plugins, tema, atajos |
| [VSCode](vscode.md) | Settings y extensiones |

Siguiente: [04 - Productividad](../04-productividad/).
