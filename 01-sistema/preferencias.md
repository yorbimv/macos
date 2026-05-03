# 01 - Configuración del Sistema

Primeros pasos después de formatear el Mac con OpenCore Legacy Patcher.

## Paso 1: OpenCore Legacy Patcher

Si tu Mac no es oficialmente compatible con Sonoma:

1. Descargar [OpenCore Legacy Patcher](https://github.com/dortania/OpenCore-Legacy-Patcher/releases/latest)
2. Ejecutar la app
3. `Build and Install OpenCore` → seleccionar USB o disco interno
4. Reiniciar y mantener `Option` al arrancar
5. Seleccionar `EFI Boot`

## Paso 2: Actualizar macOS

1. Abrir **Ajustes del Sistema** → **General** → **Actualización de Software**
2. Instalar la última versión disponible
3. Reiniciar cuando se solicite

## Paso 3: iCloud

1. Iniciar sesión con Apple ID
2. Activar **Escritorio y Documentos** en iCloud Drive
3. Esperar a que sincronicen los archivos

## Paso 4: Permitir apps de terceros

```bash
sudo spctl --master-disable
```

## Paso 5: Preferencias del sistema

Ver [preferencias.md](preferencias.md) para la guía completa.

## Paso 6: Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Después de instalar:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Siguiente paso

Ir a [02 - Aplicaciones](../02-aplicaciones/).
