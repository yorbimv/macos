# Configuraciones y Personalizaciones - macOS Sonoma

Esta carpeta contiene todas las configuraciones y personalizaciones necesarias para dejar tu entorno macOS Sonoma listo después de formatear.

---

## Índice

- [iTerm](#iterm)
- [VSCode](#vscode)
- [Zsh](#zsh)
- [Fish](#fish)
- [Oh My Zsh](#oh-my-zsh)
- [Neovim (NVIM)](#neovim-nvim)
- [Fonts](#fonts)

---

## iTerm

### Requisitos

Descarga e instala iTerm2 desde su sitio oficial:  
[iTerm2 Downloads](https://iterm2.com/downloads.html)

### Configuración inicial

- Colores recomendados:

  | Elemento         | Color   |
  | ---------------- | ------- |
  | Foreground       | #c7c7c7 |
  | Background       | #333333 |
  | Bold             | #feffff |
  | Links            | #005bbb |
  | Selection        | #c1ddff |
  | Selected Text    | #000000 |
  | Badge            | #ff2600 |
  | Minimum Contrast | 50      |

- Configura estas opciones desde la sección **Preferences > Profiles > Colors**.

### Personalización

- Instala `lsd` para una mejor experiencia visual en el terminal:

  ```bash
  brew install lsd
  ```

- Configuraciones y scripts relacionados:

  - [Tutorial iTerm + Zsh](https://github.com/yorbimv/macos/tree/main/config/iTerm/zsh)
  - [Herramientas para hacking en iTerm](https://github.com/yorbimv/macos/tree/main/config/iTerm/hacking)

---

## VSCode

- Configuración recomendada para desarrollo
- Tutorial de configuración y personalización:  
  [VSCode Config](https://github.com/yorbimv/macos/tree/main/config/VsCode)

---

## Zsh

- Personaliza tu shell Zsh con temas y plugins
- Tutorial y configuración detallada:  
  [Zsh Config](https://github.com/yorbimv/macos/tree/main/config/zsh)

---

## Fish Shell

- Configuración para Fish shell y sus plugins
- Tutorial y scripts:  
  [Fish Config](https://github.com/yorbimv/macos/tree/main/config/fish)

---

## Oh My Zsh

- Framework para gestionar la configuración de Zsh
- Instalación y personalización:  
  [Oh My Zsh Config](https://github.com/yorbimv/macos/tree/main/config/ohmyzsh)

---

## Neovim (NVIM)

- Configura Neovim para un entorno de desarrollo poderoso
- Tutorial y configuración:  
  [NVIM Config](https://github.com/yorbimv/macos/tree/main/config/nvim)

---

## Fonts

- Carpeta con fuentes personalizadas para el sistema y terminal
- Ubicación: `config/fonts`

---

## Instrucciones

1. Instala iTerm2, VSCode, y otras apps según [README principal](../README.md)
2. Configura iTerm siguiendo las indicaciones aquí
3. Personaliza tu shell con Zsh, Fish y Oh My Zsh
4. Configura tu editor con NVIM o VSCode
5. Instala las fuentes disponibles en la carpeta `fonts`

---

Si tienes dudas, visita el repositorio principal para más detalles:  
[https://github.com/yorbimv/macos](https://github.com/yorbimv/macos)

---

**¡Listo para comenzar a trabajar en tu nuevo entorno macOS Sonoma!**
