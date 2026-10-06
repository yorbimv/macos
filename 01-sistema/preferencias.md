# 01 - Sistema (pasos manuales)

`install.sh` aplica Finder, Dock y trackpad con `scripts/macos-defaults.sh`. Esto es lo que queda por hacer a mano.

## Antes de correr `install.sh`

1. **Actualizar macOS:** Ajustes del Sistema → General → Actualización de Software.
2. **iCloud:** iniciar sesión con tu Apple ID y activar **Escritorio y Documentos** en iCloud Drive. Esperar a que sincronice y reiniciar.
3. **Herramientas de Xcode:** `xcode-select --install` (el script también lo intenta).

## Después de correr `install.sh`

- **Batería:** activar "Impedir entrar en reposo automáticamente cuando se apaga la pantalla y se usa el adaptador de corriente".
- **Fondo y protector de pantalla:** quitar el fondo animado; configurar el tiempo del protector y las esquinas activas.
- **Finder:** agregar carpetas frecuentes a la barra lateral.
- **Atajos de app:** Ajustes del Sistema → Teclado → Atajos de teclado → Atajos de apps.
- **Permisos de Privacidad y seguridad** (Accesibilidad, Acceso total al disco, etc.) para: iTerm2, Alfred, Rectangle, Karabiner-Elements, CleanShot.
- **Fuente de iTerm2:** Profiles → Text → Font → `MesloLGS NF` (o FiraCode Nerd Font).

## Apps de terceros bloqueadas

No desactives Gatekeeper. Si una app no abre: Ajustes del Sistema → Privacidad y seguridad → **Abrir de todos modos**.

Siguiente: [02 - Aplicaciones](../02-aplicaciones/).
