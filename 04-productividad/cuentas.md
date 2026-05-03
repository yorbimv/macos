# Cuentas y Servicios

Configuración de todas las cuentas en el nuevo Mac.

## Apple ID

1. **Ajustes del Sistema** → Iniciar sesión con Apple ID
2. Activar **iCloud Drive** → Escritorio y Documentos
3. Activar **iCloud Keychain** (Llavero) para contraseñas sync
4. Activar **Buscar mi Mac**

## Google

1. Iniciar sesión en Chrome y Brave
2. Activar sync de marcadores, extensiones, contraseñas
3. Descargar Google Docs Offline si se necesita

## GitHub

```bash
# Configurar credenciales
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"

# Token de acceso (recomendado sobre contraseña)
# Ir a GitHub → Settings → Developer Settings → Personal Access Tokens
# Crear token con permisos: repo, workflow

# Autenticar
gh auth login
```

## Microsoft

1. Iniciar sesión en Office 365 
2. Activar OneDrive

## Alfred

1. Abrir Alfred
2. Activar **Clipboard History** (Cmd+Alt+C)
3. Activar **Snippets**
4. Configurar **Powerpack** si tienes licencia
