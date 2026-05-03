# VSCode

Configuración de Visual Studio Code.

## Instalación

```bash
brew install --cask visual-studio-code
```

## Command Line

Abrir VSCode → Cmd+Shift+P → `Shell Command: Install 'code' command in PATH`

Verificar:

```bash
code --version
```

## Configuración

### Sync con GitHub

1. Iniciar sesión con cuenta de GitHub
2. Esperar a que se sincronicen settings y extensiones
3. O usar la config manual del repo:

```bash
cp ../dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

## Settings

Configuración principal:

- **Tema:** One Dark Pro Mix
- **Font editor:** Menlo, Monaco, monospace
- **Font terminal:** MesloLGS NF
- **Sidebar:** Derecha
- **Minimap:** Desactivado
- **Format on Save:** Activado
- **Bracket pair guides:** Activado
- **Cursor:** Animación de parpadeo

## Terminal integrada

VSCode usa el shell del sistema (Zsh). Hereda todos los alias y plugins configurados.

## Extensiones recomendadas

- One Dark Pro
- GitLens
- Prettier
- ESLint
- Auto Rename Tag
- Bracket Pair Colorizer
- Error Lens
