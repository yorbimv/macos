# Troubleshooting

Problemas comunes y soluciones.

## OneDrive - Iconos faltantes en Finder

**Problema:** Los iconos de estado de OneDrive no aparecen en Finder.

**Solución:**

1. Ir a **Ajustes del Sistema → General → Elementos de inicio de sesión → Extensiones**
2. Desactivar TODAS las extensiones de Finder
3. Ejecutar en terminal:
   ```bash
   killall Finder
   ```
4. Activar SOLO la extensión de OneDrive
5. Verificar que los iconos aparezcan
6. Activar las demás extensiones una por una

## Neovim - No funciona / errores

**Problema:** NVIM no abre correctamente o los plugins fallan.

**Solución - Dependencias requeridas:**

```bash
# Node.js (para coc.nvim)
brew install node

# tmux (para vimux)
brew install tmux

# XQuartz (si se necesita display)
brew install --cask xquartz
```

**Reinstalar plugins:**

```bash
nvim +PlugClean +qall
nvim +PlugInstall +qall
```

## VSCode - `code` no funciona en terminal

**Problema:** El comando `code` no se reconoce en terminal.

**Solución:**

1. Abrir VSCode
2. Prsionar`Cmd+Shift+P`
3. Buscar y ejecutar: `Shell Command: Install 'code' command in PATH`
4. Reiniciar terminal

## Zsh - Lento al abrir

**Problema:** La terminal tarda mucho en cargar.

**Solución:**

1. Verificar plugins en `~/.zshrc` - tener solo los necesarios
2. Usar lazy loading para plugins pesados
3. Verificar rutas en aliases (que no apunten a discos externos desconectados)

```bash
# Benchmark de carga
time zsh -i -c exit
```

## Homebrew - Warning sobre PATH

**Problema:** Warning "Homebrew's bin is not in your PATH".

**Solución:**

```bash
# Apple Silicon
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Intel
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/usr/local/bin/brew shellenv)"
```

## OpenCore Legacy Patcher

**Problema:** El Mac no arranca después de actualizar.

**Solución:**

1. Arrancar desde USB con OCLP
2. Reinstalar OpenCore en el disco interno
3. Si persiste, restaurar desde Recovery Mode

## FZF - No funciona

**Problema:** Ctrl+T o Ctrl+R no buscan.

**Solución:**

```bash
# Verificar instalación
ls ~/.fzf.zsh

# Reinstalar
rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
