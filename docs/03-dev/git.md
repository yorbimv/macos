# Git

Configuración de Git y alias.

## Configuración básica

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
```

## Alias

Agregar al `~/.gitconfig` o usar los alias de Zsh:

| Alias | Comando |
|-------|---------|
| `gs` | `git status` |
| `gbr` | `git branch` |
| `ga` | `git add` |
| `gc` | `git commit -m` |
| `gp` | `git push` |
| `gpll` | `git pull` |
| `gsw` | `git switch` |

## Cheat Sheet

### Ramas

```bash
git branch ramaNueva          # Crear rama
git switch -c ramaNueva       # Crear y cambiar
git switch rama               # Cambiar de rama
git branch -d rama            # Eliminar rama
```

### Stash

```bash
git stash                     # Guardar cambios temporales
git stash list                # Ver stashes
git stash pop                 # Aplicar y eliminar stash
git stash drop                # Eliminar stash
```

### Merge

```bash
git merge rama -m "mensaje"   # Fusionar rama
```

### Tags

```bash
git tag "v1.0"                # Crear tag
```

### Log visual

```bash
git log --graph --pretty=oneline
git log --all --graph --decorate --oneline
```

### Checkout

```bash
git checkout archivo.py       # Restaurar archivo
git checkout <commit-hash>    # Ir a commit específico
git checkout tags/dia_1       # Ir a tag
```

## Autenticación

### Token GitHub

1. Ir a GitHub → Settings → Developer Settings → Personal Access Tokens
2. Crear token con permisos `repo`
3. Configurar:

```bash
git config --global credential.helper osxkeychain
```

Al hacer push/pull, macOS guardará las credenciales en el keychain.

### SSH (alternativa)

```bash
ssh-keygen -t ed25519 -C "tu@email.com"
cat ~/.ssh/id_ed25519.pub
# Agregar la clave pública a GitHub → Settings → SSH Keys
```
