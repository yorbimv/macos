# MacOs Monterrey - Herramientas hacking

<p align="center">
<img width="50%" height="50%" src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/245f4571-14d4-4069-90a7-259b2971229f/del3rk1-177dea3e-01d6-4c32-bcfd-8927b7bc8364.png/v1/fill/w_894,h_894/macos_monterey_logo_by_protheme_del3rk1-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQxNCIsInBhdGgiOiJcL2ZcLzI0NWY0NTcxLTE0ZDQtNDA2OS05MGE3LTI1OWIyOTcxMjI5ZlwvZGVsM3JrMS0xNzdkZWEzZS0wMWQ2LTRjMzItYmNmZC04OTI3YjdiYzgzNjQucG5nIiwid2lkdGgiOiI8PTE0MTUifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.zIDzzMJ61pgO0SZB6ZHXAiqpfYh9um24O5LScO5a3pE"/>
</a>
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

# Instalación de herramientas de hacking

#### Whatweb

Instalación:

- Descargar [whatweb](https://github.com/urbanadventurer/WhatWeb)
- Copiar la carpeta whatweb en Users/yorbi
- Se debe instalar ruby para usarse
  `brew install ruby`
- Dentro de la Carpeta Whatweb se debe ejecutar

  - ~~`make install`~~
  - `bundler install  `

- ~~Una vez que funcione, mover la carpeta de whatweb a raiz `yorbimv`~~

**Tutorial Completo**
`https://github.com/urbanadventurer/WhatWeb/wiki/Installation`

## Descarga

1. [whatweb](https://github.com/urbanadventurer/WhatWeb)

---

## Docker

Si no se puede ejecutar whatweb, intentar con docker

- Instalar [Docker](https://docs.docker.com/desktop/mac/install/)
- Después de instalar docker, ejecutar en terminal
  ```
  docker pull guidelacour/whatweb
  ```
  - Esto instala whatweb en un contenedor
- Ahora para ejecutar
  ```
  docker run --tty --interactive --rm guidelacour/whatweb \./whatweb www.youtube.com
  ```
- Ahora crear un alias en zsh y fish para que se ejecute así:
  - ```
        whatweb www.pagina.com
        ~~~
    <br>
    ```

Fuente : [Docker whatweb](https://hub.docker.com/r/guidelacour/whatweb/)

---

# Sherlok

Es una herramienta que arroja los resultados de los nick en toda la web

Instalación:

- Descargar desde terminal con brew

`brew install sherlock`

Para usarlo:

`usage: sherlock [-h] [--version] [--verbose] [--folderoutput FOLDEROUTPUT] [--output OUTPUT] [--tor] [--unique-tor] [--csv] [--xlsx] [--site SITE_NAME] [--proxy PROXY_URL]
                [--dump-response] [--json JSON_FILE] [--timeout TIMEOUT] [--print-all] [--print-found] [--no-color] [--browse] [--local] [--nsfw]
                USERNAMES [USERNAMES ...]
sherlock: error: the following arguments are required: USERNAMES`

#### Ejemplo

`$ sherlock arigameplays`

## Descarga

- `brew install sherlock`(Recomendado)
- Desde github [sherlock](https://github.com/sherlock-project/sherlock)

#### clone the repo

`$ git clone https://github.com/sherlock-project/sherlock.git`

#### change the working directory to sherlock

`$ cd sherlock`

#### install the requirements

`$ python3 -m pip install -r requirements.txt`
