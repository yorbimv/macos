# MacOs Monterrey Config

<p align="center">
<img width="50%" height="50%" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/245f4571-14d4-4069-90a7-259b2971229f/del3rk1-177dea3e-01d6-4c32-bcfd-8927b7bc8364.png/v1/fill/w_894,h_894/macos_monterey_logo_by_protheme_del3rk1-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQxNCIsInBhdGgiOiJcL2ZcLzI0NWY0NTcxLTE0ZDQtNDA2OS05MGE3LTI1OWIyOTcxMjI5ZlwvZGVsM3JrMS0xNzdkZWEzZS0wMWQ2LTRjMzItYmNmZC04OTI3YjdiYzgzNjQucG5nIiwid2lkdGgiOiI8PTE0MTUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.zIDzzMJ61pgO0SZB6ZHXAiqpfYh9um24O5LScO5a3pE"/>
</a>
</p>

---

# Índice

<p align="center">
  <a href="#Configuracion inicial">Primero pasos</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#usage">Configuraciones</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#docker-notes">Apps</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#contributing"> Soluciones</a>
</p>

---

### Configuracion inicial

##### Primeros pasos después de formatear

1. Actualizar Sistema
2. Login en icloud
3. Ir a Configuración de Sistema/apple ID/
   - En el apartado de iCloud
   - Prender la palomita de **" Carpetas Escritorio y Documentos"**
4. Una vez realizado, proceder a configurar **Mail y Fotos**
5. Se sincronizará todos los archivos.
   - Esperar unas horas a que se descargue
   - Reiniciar Equipo y ya debe aparecer los archivos

---

##### Instalar apps de cualquier sitio

```
sudo spctl --master-disable
```

##### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

##### Instalación de Apps

1. Se debe instalar las apps que se encuentran en el archivo Apps.txt
2. Hay aplicaciones que se deben configurar a detalle como:
   - iTerm
   - vs code
   - herramientas de hacking como sherlock, whatweb, etc.

Estas configuraciones vienen a detalle en la carpeta de Configuraciones

3. Descargar **nodejs y tmux** para configurar **nvim**

   - [Node](https://nodejs.org/en/download/)
   - Tmux `brew install tmux`
   - [xquarts](https://www.xquartz.org)

---

## Finder

##### onedrive

Si los iconos desaparecen de finder realizar lo siguiente

1. Ir a preferencias/extensiones
2. En la sección de **"All"** y en la sección de **"Finder extensions"**

<details align="center">
          <summary><b>Picale aqui</b><br></summary>
          <img src="https://user-images.githubusercontent.com/65741972/174320561-880f2fee-77c8-4637-9eb0-36678ce41183.png">
          <img src="https://user-images.githubusercontent.com/65741972/174320220-55207ff0-38af-4558-82a5-09caa86d4c41.png">

</details>

3. Ejecutar en terminal `killall Finder`
4. Habilitar extension solamente de **onedrive**
5. En unos segundos deben de aparecer los iconos
6. Ahora ya se pueden activar las otras extensiones
