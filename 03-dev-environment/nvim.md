# Neovim

Configuración del editor Neovim.

## Instalación

```bash
brew install neovim
```

## Configuración

### 1. Crear directorio de config

```bash
mkdir -p ~/.config/nvim
```

### 2. Copiar dotfiles

```bash
cp -r ../dotfiles/nvim/* ~/.config/nvim/
```

### 3. Instalar plugins

```bash
nvim +PlugInstall +qall
```

## Plugins

| Plugin | Función |
|--------|---------|
| gruvbox | Tema de colores |
| indentLine | Líneas de indentación |
| vim-polyglot | Soporte para muchos lenguajes |
| lightline.vim | Status bar |
| lightline-ale | Integración ALE en status bar |
| NERDTree | Explorador de archivos |
| auto-pairs | Auto-cerrar paréntesis/llaves |
| vim-closetag | Auto-cerrar tags HTML |
| vimux | Integración con tmux |
| vim-tmux-navigator | Navegar entre paneles tmux |
| coc.nvim | Autocompletado IntelliSense |
| vim-easymotion | Navegación rápida |
| fzf + fzf.vim | Búsqueda difusa |

## Tema

Tema activo: **Gruvbox** (contraste hard)

```vim
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
```

Tema alternativo: Dracula (comentado en config)

## Atajos (Leader = Espacio)

| Atajo | Acción |
|-------|--------|
| `Space + s` | Easymotion (búsqueda de 2 chars) |
| `Space + nt` | NERDTree |
| `Space + w` | Guardar |
| `Space + q` | Salir |
| `Space + t` | Abrir terminal |

## Configuración base

```vim
set number              " Números de línea
set relativenumber      " Números relativos
set mouse=a             " Mouse habilitado
set clipboard=unnamed   " Clipboard del sistema
set encoding=utf-8
set showmatch           " Match de paréntesis
set cursorline          " Resaltar línea actual
set sw=2                " Soft width = 2
```

## Requisitos

```bash
# Node.js (para coc.nvim)
brew install node

# tmux (para vimux)
brew install tmux

# XQuartz (si se necesita)
brew install --cask xquartz
```
