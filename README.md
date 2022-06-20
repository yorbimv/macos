# MacOs Catalina Config

Configuración de Mac Actual 2022

- Apps Instaladas
- Configuraciones 
- Shorcuts

***
### Configuraciones iniciales

##### Primeros pasos después de formatear

1. Una vez que cargó todo el sistema, se debe hacer login en icloud drive.
2. Ir a Preferencias/apple ID/
3. Prender la palomita de **" Carpetas Escritorio y Documentos"**
4. Una vez realizado, proceder a configurar **Mail y Fotos**, esperar a que se descargue
5. Después de 1 hora aprox, empezarán a sincronizarse los documentos de icloud en la Macbook

***


##### Instalar apps de cualquier sitio
 ```sudo spctl --master-disable```
  
##### Homebrew 
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```


***

##### Instalación de Apps

1. Se debe instalar las apps que se encuentran en el archivo Apps.txt
2. Hay aplicaciones que se deben configurar a detalle como:
    - iTerm
    - vs code
    - herramientas de hacking como sherlock, whatweb, etc.
   
Estas configuraciones vienen a detalle en la carpeta de Configuraciones


***

## Finder

##### onedrive

Si los iconos desaparecen de finder realizar lo siguiente

1. Ir a preferencias/extensiones
2. En la sección de **"All"** y en la sección de **"Finder extensions"**
- Hay que desactivar todas las casillas que digan **"Finder extensions (gdrive, dropbox,mega,etc)"**
    ![Screen Shot 2022-06-17 at 9 39 14](https://user-images.githubusercontent.com/65741972/174320220-55207ff0-38af-4558-82a5-09caa86d4c41.png)
    ![Screen Shot 2022-06-17 at 9 41 28](https://user-images.githubusercontent.com/65741972/174320561-880f2fee-77c8-4637-9eb0-36678ce41183.png)

3. Ejecutar en terminal ```killall Finder```
4. Habilitar extension solamente de **onedrive**
5. En unos segundos deben de aparecer los iconos
6. Ahora ya se pueden activar las otras extensiones
