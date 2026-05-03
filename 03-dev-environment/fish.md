# Fish Shell

Shell alternativo con Oh My Fish (OMF).

## Instalación

```bash
brew install fish
```

## Oh My Fish

```bash
curl -L https://get.oh-my.fish | fish
```

### Comandos OMF

```bash
omf list          # Listar plugins instalados
omf install <pkg> # Instalar plugin
omf theme <name>  # Cambiar tema
```

## Funciones y alias

Crear alias:

```bash
alias lla='ls -la'
funcsave lla
```

Las funciones se guardan en `~/.config/fish/functions/`.

## Configurar en iTerm2

Crear un nuevo perfil en iTerm2 que use Fish:

1. Preferences → Profiles → +
2. Command → `/opt/homebrew/bin/fish`
3. Configurar colores y fuente (ver [iTerm2](iterm2.md))

## Dotfiles

Las funciones fish están en `../dotfiles/fish/functions/`.
