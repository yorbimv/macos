# Zsh

Shell principal con Oh-My-Zsh, PowerLevel10k y plugins.

## Instalación

### 1. Oh-My-Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. PowerLevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 3. Plugins

```bash
# Syntax highlighting
brew install zsh-syntax-highlighting

# Autosuggestions
brew install zsh-autosuggestions

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

### 4. Copiar configuración

```bash
cp ../dotfiles/zsh/.zshrc ~/.zshrc
cp ../dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
source ~/.zshrc
```

## Configurar PowerLevel10k

```bash
p10k configure
```

Sigue el wizard para personalizar el prompt. La config guardada está en `~/.p10k.zsh`.

## Alias

### Git

| Alias | Comando |
|-------|---------|
| `gs` | `git status` |
| `gbr` | `git branch` |
| `ga` | `git add` |
| `gc` | `git commit -m` |
| `gp` | `git push` |
| `gpll` | `git pull` |
| `gsw` | `git switch` |

### Listado (lsd)

| Alias | Comando |
|-------|---------|
| `ls` | `lsd` |
| `l` | `ls -l` |
| `la` | `ls -a` |
| `lla` | `ls -la` |
| `lt` | `ls --tree` |

### MySQL

| Alias | Comando |
|-------|---------|
| `mysql-start` | `brew services start mysql` |
| `mysql-stop` | `brew services stop mysql` |
| `mysql-restart` | `brew services restart mysql` |
| `mysql-root` | `mysql -u root -p -h 127.0.0.1` |

### Navegación

| Alias | Comando |
|-------|---------|
| `desktop` | `cd ~/Desktop` |
| `documents` | `cd ~/Documents` |
| `downloads` | `cd ~/Downloads` |
| `github` | `cd ~/Documents/GitHub` |

### Utilidades

| Alias | Comando |
|-------|---------|
| `ddir` | `rm -rf` |
| `zshconfig` | `code .zshrc` |
| `history-clear` | `rm $HISTFILE` |
| `view` | `imgcat` |

## FZF

| Atajo | Función |
|-------|---------|
| `Ctrl+T` | Buscar archivo |
| `Ctrl+R` | Buscar en historial |
| `fif <cadena>` | Buscar cadena dentro de archivos |

## Atajos de teclado

| Tecla | Acción |
|-------|--------|
| `Alt + ←` | Retroceder una palabra |
| `Alt + →` | Avanzar una palabra |
| `Fn + Delete` | Eliminar carácter |

## Plugins activos

- `git` (Oh-My-Zsh)
- `web-search` (Oh-My-Zsh)
- `zsh-syntax-highlighting`
- `zsh-autosuggestions`
