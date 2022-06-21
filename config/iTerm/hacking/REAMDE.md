# Instalación de herramientas de hacking

**Whatweb**
<br>
Se debe instalar ruby para usarse

``` brew install ruby ```
- https://github.com/urbanadventurer/WhatWeb/wiki/Installation


## Descarga
1. [whatweb](https://github.com/urbanadventurer/WhatWeb)
2. [sherlock](https://github.com/sherlock-project/sherlock)


## Docker
Si no se puede ejecutar whatweb, intentar con docker
- Instalar [Docker](https://docs.docker.com/desktop/mac/install/)
- Después de instalar docker, ejecutar en terminal
   
   ~~~
   docker pull guidelacour/whatweb
   ~~~
   - Esto instala whatweb en un contenedor
- Ahora para ejecutar
    ~~~
    docker run --tty --interactive --rm guidelacour/whatweb \./whatweb www.youtube.com
    ~~~
- Ahora crear un alias en zsh y fish para que se ejecute así:
  - ~~~
    whatweb www.pagina.com 
    ~~~
<br>

Fuente : [Docker whatweb](https://hub.docker.com/r/guidelacour/whatweb/)
