# MacOS Sonoma -

Este archivo contiene las configuraciones y personalizaciones necesarias para dejar iTerm listo después de formatear tu Mac con macOS Sonoma.

---

## 1. Instalación de iTerm

Descargar desde [iTerm2.com](https://iterm2.com/). Recomendación: usar la versión estable.

---

## 2. Configuración inicial

### Preferencias

1. Abre iTerm > Preferences (⌘ + ,)
2. En la pestaña **Profiles**, selecciona el perfil por defecto:
   - **General** > Name: `Default`
   - **Colors** > Presets: `Solarized Dark` o tu tema favorito
   - **Text** > Fuente: `MesloLGS NF` tamaño 14pt o mayor
   - **Window** > Transparency: `10-15%` (opcional)
   - **Terminal** > Desactiva "Audible bell"

### Tip: Fuente Powerline

Usa fuentes compatibles con Powerline para mejorar los prompts personalizados:

- Descarga desde: [Nerd Fonts](https://www.nerdfonts.com/)
- Instala por ejemplo: `MesloLGS NF`

---

## 3. Comandos básicos útiles

Instala herramientas esenciales desde Homebrew:

```bash
brew install tree
brew install wget
brew install htop
```

---

## 4. Integración con GitHub

1. Navega a tu carpeta local de GitHub, por ejemplo:

```bash
cd ~/Documents/GitHub/macos
```

2. Realiza un commit o `git pull` y Git te pedirá autenticarte.

3. Genera un token personal en: [https://github.com/settings/tokens](https://github.com/settings/tokens)

   - Nombre: `Macbook Pro iTerm`
   - Copia el token generado.

4. Usa tu usuario de GitHub y el token como contraseña al autenticarte.

---

## 5. Zsh y plugins recomendados

```bash
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Instala plugins:

```bash
brew install zsh-autosuggestions zsh-syntax-highlighting
```

Agregar al final de tu `~/.zshrc`:

```bash
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

---

## 6. Tema Powerlevel10k (opcional)

```bash
brew install romkatv/powerlevel10k/powerlevel10k
```

En `~/.zshrc` añade:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

---

¡Listo! Ahora tienes iTerm personalizado para tu entorno en macOS Sonoma.
