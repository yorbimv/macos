# MacOs Sonoma - Inicio

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

**Actualizacion 25 mayo 2025**

### Primeros pasos después de formatear

**Ejecutar OpenCore-Patcher**

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

---

##### Instalar apps de cualquier sitio

Abrir Terminal

```
sudo spctl --master-disable
```

##### Instalar Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

##### Siguiente paso

Ir a
<a href="https://github.com/yorbimv/macos/tree/main/Configuraciones">Configuraciones</a>
