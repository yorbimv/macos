<p align="center">
<img width="50%" height="50%" src="https://cambiodigital-ol.com/wp-content/uploads/2023/06/mac-OS_Sonomajpg-696x392.jpg"/>
</p>

---

<p align="center">
  <a href="https://github.com/yorbimv/macos">Inicio</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/yorbimv/macos/tree/main/Configuraciones">Configuraciones</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/yorbimv/macos/tree/main/Apps">Apps</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/yorbimv/macos/tree/main/Soluciones">Soluciones</a>
</p>

---

# MacOs Sonoma - Inicio

Sigue las secciones en orden:

| #   | Sección                                   | Descripción                                       |
| --- | ----------------------------------------- | ------------------------------------------------- |
| 01  | [🖥️ Sistema](01-sistema/)                 | Preferencias del sistema                          |
| 02  | [📦 Aplicaciones](02-aplicaciones/)       | Homebrew, apps esenciales, inventario completo    |
| 03  | [💻 Dev Environment](03-dev-environment/) | iTerm2, Zsh, Fish, Git, Neovim, VSCode            |
| 04  | [⚡ Productividad](04-productividad/)     | Cuentas, Office 365, OneDrive, email, navegadores |
| 05  | [🤖 IA Local](05-ia-local/)               | OpenCode, Gemini, Ollama, archivos de contexto    |

---

### 1. Primeros pasos

> Una vez instalado el sistema, ejecutar lo siguiente en orden:

##### OpenCore-Patcher

1.  Abrir **OpenCore Patcher**
2.  Clic en Post-Install Root Patch
3.  Reiniciar equipo

##### Actualizar Sistema

1. Ir a Configuración del Sistema
2. Ir a General / Actualizar de Software

##### Loguearse en iCloud

1. Ir a Configuración del Sistema
2. Login en icloud
3. Ir a Configuración de Sistema/Apple ID/
   - En el apartado de iCloud
   - Activar **"Carpetas Escritorio y Documentos"**
4. Una vez realizado, proceder a configurar **Mail y Fotos**
5. Se sincronizará todos los archivos.
   - Esperar unas **horas** a que se descargue
   - Reiniciar Equipo y ya debe aparecer los archivos

> Después de reiniciar el equipo continuar con lo siguiente

### 2. Clonar repo en Documentos

_Cambiar a la ubicación de /Documentos_

```bash
git clone https://github.com/yorbimv/macos.git
```

### 3. Habilitar instalación de terceros

_Permite instalar aplicaciones de "Cualquier Sitio"_

```bash
sudo spctl --master-disable
```

### 4. Instalar brew

_Gestor de Paquetes para MacOs_

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> Continuar con las secciones
>
> > **Sistema**
> > **Aplicaciones**
> > **Dev Environment**
> > **Productividad**
> > **IA**

---

**Problemas comunes y soluciones en [troubleshooting/](troubleshooting/)**
**Última actualización:** Mayo 2026
