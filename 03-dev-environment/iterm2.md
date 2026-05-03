# iTerm2

Configuración del terminal iTerm2.

## Instalación

```bash
brew install --cask iterm2
```

## Configuración de colores

**Preferences → Profiles → Colors**

| Color | Valor |
|-------|-------|
| Foreground | `#c7c7c7` |
| Background | `#333333` |
| Bold | `#feffff` |
| Cursor | `#c7c7c7` |
| Links | `#005bbb` |

## Configuración general

**Preferences → Profiles → Text**

- **Font:** MesloLGS NF, 17pt (o FiraCode NF)
- **Cursor:** Block con parpadeo

**Preferences → Profiles → Window**

- **Scrollback lines:** 1000

## Integración con Shell

**Preferences → Profiles → General → Command:**

- Login shell (por defecto Zsh)

### Shell Integration

```bash
# Instalar integración con iTerm2
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
```

## Hotkey global

Opción 1: Usar la app **Hotkey** de la App Store (Cmd+T para mostrar/ocultar).

Opción 2: Configurar **Hotkey Window** en iTerm2:
- Preferences → Keys → Hotkey → Create a Dedicated Hotkey Window

---

#### Ver más

- [Configuración Zsh](zsh.md)
- [Configuración Fish](fish.md)
