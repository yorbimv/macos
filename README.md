# MacOs Monterrey Config

Configuración de Mac  2024

- Apps Instaladas
- Configuraciones 
- Shorcuts

***
### Configuraciones iniciales

##### Primeros pasos después de formatear

1. Actualizar Sistema
2. Login en icloud
2. Ir a Configuración de Sistema/apple ID/
    -   En el apartado de iCloud
    -   Prender la palomita de **" Carpetas Escritorio y Documentos"**
4. Una vez realizado, proceder a configurar **Mail y Fotos**
5. Se sincronizará todos los archivos.
    -   Esperar unas horas a que se descargue
    -   Reiniciar Euipo y ya debe aparecer los archivos


***


##### Instalar apps de cualquier sitio
~~~
sudo spctl --master-disable
~~~

  
##### Homebrew 
~~~
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
~~~


***

##### Instalación de Apps

1. Se debe instalar las apps que se encuentran en el archivo Apps.txt
2. Hay aplicaciones que se deben configurar a detalle como:
    - iTerm
    - vs code
    - herramientas de hacking como sherlock, whatweb, etc.
   
Estas configuraciones vienen a detalle en la carpeta de Configuraciones

3. Descargar **nodejs y tmux** para configurar **nvim**

    - [Node](https://nodejs.org/en/download/)
    - Tmux ```brew install tmux```
    - [xquarts](https://www.xquartz.org)

***

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
  

3. Ejecutar en terminal ```killall Finder```
4. Habilitar extension solamente de **onedrive**
5. En unos segundos deben de aparecer los iconos
6. Ahora ya se pueden activar las otras extensiones
