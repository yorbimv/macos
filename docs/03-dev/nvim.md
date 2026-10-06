# Neovim

Configuración moderna de Neovim en **Lua** con **lazy.nvim**.

## Instalación

```bash
brew install neovim ripgrep fd
```

- `neovim` ≥ 0.11
- `ripgrep` y `fd` son necesarios para Telescope (búsqueda difusa)

## Configuración

### 1. Copiar dotfiles

```bash
mkdir -p ~/.config/nvim
cp -r ~/Documents/GitHub/macos/dotfiles/nvim/* ~/.config/nvim/
```

### 2. Primera ejecución

```bash
nvim
```

La primera vez, **lazy.nvim** se clona solo y sincroniza todos los plugins. Para forzarlo o actualizar:

```vim
:Lazy sync
```

## Estructura

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── options.lua      # Opciones generales
    │   ├── keymaps.lua      # Atajos (Leader = Espacio)
    │   └── lazy.lua         # Bootstrap de lazy.nvim
    └── plugins/
        ├── colorscheme.lua  # gruvbox
        ├── treesitter.lua   # Resaltado/indentación por lenguaje
        ├── lsp.lua          # LSP (mason + lspconfig)
        ├── cmp.lua          # Autocompletado
        ├── telescope.lua    # Búsqueda difusa
        ├── lualine.lua      # Status bar
        ├── neo-tree.lua     # Explorador de archivos
        ├── gitsigns.lua     # Signos de git
        ├── autopairs.lua    # Auto-cerrar paréntesis/llaves
        ├── ts-autotag.lua   # Auto-cerrar tags HTML
        ├── flash.lua        # Navegación rápida
        ├── indent-blankline.lua
        ├── which-key.lua    # Ayuda de atajos
        ├── comment.lua      # Comentar/descomentar
        └── tmux.lua         # vimux + tmux-navigator
```

## Migración de plugins (antiguo → moderno)

| Antes (Vimscript) | Ahora (Lua + lazy.nvim) |
|-------------------|--------------------------|
| gruvbox | **gruvbox.nvim** |
| indentLine | **indent-blankline.nvim** |
| vim-polyglot | **nvim-treesitter** |
| lightline.vim | **lualine.nvim** |
| lightline-ale | diagnósticos en **lualine** (vía LSP) |
| NERDTree | **neo-tree.nvim** |
| auto-pairs | **nvim-autopairs** |
| vim-closetag | **nvim-ts-autotag** |
| vimux | **vimux** (igual) |
| vim-tmux-navigator | **vim-tmux-navigator** (igual) |
| coc.nvim | **nvim-cmp + nvim-lspconfig + mason** |
| vim-easymotion | **flash.nvim** |
| fzf + fzf.vim | **telescope.nvim** (+ fzf-native) |

## LSP (mason)

Los servidores se instalan automáticamente vía **mason**:

```lua
"lua_ls", "ts_ls", "pyright", "phpactor",
"html", "cssls", "emmet_language_server",
"jsonls", "yamlls", "bashls", "sqlls"
```

Para añadir otro, agrégalo a `ensure_installed` en `lua/plugins/lsp.lua` y ejecuta `:Mason`.

Parámetros/atajos LSP:
- `gd` definición · `gD` declaración · `gr` referencias · `gi` implementaciones
- `K` información · `<leader>rn` renombrar · `<leader>ca` acciones de código
- `[d` / `]d` diagnóstico anterior/siguiente · `<leader>d` ver diagnóstico

## Tema

Activo: **Gruvbox** (contraste hard) en `lua/plugins/colorscheme.lua`.

## Atajos (Leader = Espacio)

| Atajo | Acción |
|-------|--------|
| `Space + e` | Explorador (toggle) |
| `Space + nt` | Explorador en el archivo actual |
| `Space + ff` | Buscar archivos |
| `Space + fg` | Buscar texto (grep) |
| `Space + fb` | Buffers |
| `Space + fr` | Archivos recientes |
| `Space + s` | Salto rápido (Flash) |
| `Space + w` | Guardar |
| `Space + q` | Salir |
| `Space + t` | Terminal |
| `Space + vp` | Vimux: enviar comando |
| `Space + vl` | Vimux: repetir comando |

## Requisitos

```bash
brew install node            # para servidores LSP basados en npm
brew install php             # para phpactor
brew install tmux            # para vimux / vim-tmux-navigator
```
