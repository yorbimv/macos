
# Fish

Antes de configurar la terminal zsh, se debe instalar fish junto con omf


1. Instalar fish ```brew install fish```
2. Instalar omf para configuración de temas
- ```curl -L https://get.oh-my.fish | fish```
- ```omf install lambda```
- ```omf theme lambda```

[Fuente: OMF](https://ubunlog.com/omf-personaliza-tope-fishshell/)

> En caso de error al ejecutar fish, instalar ```brew install md5sha1sum```

##### Configuracion colores iterm

- Foreground: c7c7c7
- Background: 333333
- Bold: feffff
- Links: 005bbb

- Selection: c1ddff
- Selected text: 000000
- Badge: ff2600

- Minimum Contrast: 50


![Screen Shot 2022-06-12 at 12 50 28](https://user-images.githubusercontent.com/65741972/173246398-c06a731b-9c98-45e9-9947-f2e1f4943063.png)

***
# zsh

##### Configuración de tema

1. Descargar ohmyzsh
    - ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```
3. Descargar [PowerLevel10](https://github.com/romkatv/powerlevel10k#homebrew) en la carpeta de tu usuario
    - ``` git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ```

3. Editar .zshrc 
    - ZSH_THEME = "powerlevel10k/powerlevel10k"
    - Reiniciar iterm
4. Inicia configuración de powerlevel
- Configurar al gusto
- Descargar [fuentes](https://github.com/yorbimv/macos_catalina_config/tree/main/Configuraciones/Fonts) e instalar sourcecodepro+powerline (opcional)
    - Tambien se pueden conseguir más fuentes en esta [página](https://www.nerdfonts.com/font-downloads) 
5. Del archivo .zsh:
    - Agregar todos los alias
         ~~~ 
         # git
         alias gs="git status"
         alias gbr="git branch"
         alias ga="git add"
         alias gc="git commit -m"
         alias gp="git push"
         .
         .
         .
         ~~~
    - Instalar (**Consultar tutorial**)
        - Plugins
            - ```brew install zsh-syntax-highlighting```
            - ```brew install zsh-autosuggestions```

        - herramientas de zsh
            - [fzf](https://github.com/junegunn/fzf)
            ~~~
            brew install fzf

            # To install useful key bindings and fuzzy completion:
            $(brew --prefix)/opt/fzf/install
            ~~~
            - fif (buscador de palabras en archivos)
                - Para usarse se necesita instalar primero ```brew install ripgrep```
                - Despues se agrega la linea en .zshrc
                 ~~~ 
                 fif() {
                  if [ ! "$#" -gt 1 ]; then echo "Necesito una cadena para buscar!"; return 1; fi
                  rg --files-with-matches --no-messages $1 | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 $1 || rg --ignore-case --pretty --context 10 $1 {}"
                } 
                ~~~
    - Web Search
        - Se debe descargar en raiz User/yorbi 
        - ```git clone https://github.com/sinetoami/web-search.git "$ZSH_CUSTOM/plugins/web-search"```
        -  Agregar en .zshrc, en la sección de plugins
            ![Screen Shot 2022-06-14 at 0 35 11](https://user-images.githubusercontent.com/65741972/173500998-bc01664f-df72-48c8-a334-8d19a007b47c.png)

        - Fuente:
            - [highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
            - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions.  )  
            - [fif](https://logico.ar/blog/2019/07/13/fzf-el-buscador-nix)
            - [Web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)
        
    - Editar la vista de la terminal desde ~/.p10k.zsh (linea 32 y 50)
      
    ![Screen Shot 2022-06-13 at 4 43 56](https://user-images.githubusercontent.com/65741972/173326646-0413b2ca-35e3-45aa-b8f8-182cdf035dc7.png)
    
    - Agregar Movimientos de terminal
    ~~~ 
    # Movimientos terminal zsh
    # Desplazarse por palabra
    bindkey "[D" backward-word #tecla alt + izq
    bindkey "[C" forward-word  #tecla alt + derecha

    # Ir al principio & final
    bindkey "\e[D" delete-char    #fn + izq 
    bindkey "\e[C" delete-char    #fn + derecha 

    # Accion suprimir
    bindkey "\e[3~" delete-char    #fn + eliminar 


    ~~~

6. En caso de no ejecutar Vs Code desde terminal

   > Abra el código de Visual Studio y presione Comando + Shift + P 
   > luego escriba Shell en la paleta de comandos ahora puede encontrar esta opción como Shell Command : Install code in PATH de la lista sugerida en la paleta de comandos. Seleccione esas opciones.

****
##### Instalacion de herramientas de hacking

1. [whatweb](https://github.com/urbanadventurer/WhatWeb)
2. [sherlock](https://github.com/sherlock-project/sherlock)

***

### Todas las configuraciones de iterm



![Screen Shot 2022-06-13 at 9 07 33](https://user-images.githubusercontent.com/65741972/173372177-44c7a5d5-0be0-44d5-9f6c-d974adff7e18.png)
![Screen Shot 2022-06-13 at 9 07 52](https://user-images.githubusercontent.com/65741972/173372251-bdd5ab5e-ba5f-4296-9d19-de748fa731ae.png)
![Screen Shot 2022-06-13 at 9 08 04](https://user-images.githubusercontent.com/65741972/173372303-b83383d9-a131-4070-9b3a-2916fb68152f.png)
![Screen Shot 2022-06-13 at 9 08 18](https://user-images.githubusercontent.com/65741972/173372344-048cda53-ab0d-47f7-b92f-029812ab6ed3.png)
![Screen Shot 2022-06-13 at 9 08 25](https://user-images.githubusercontent.com/65741972/173372367-818f5906-9adb-4be7-81df-dee95e755b72.png)
![Screen Shot 2022-06-13 at 9 08 32](https://user-images.githubusercontent.com/65741972/173372391-49027080-cb7f-4cc3-8b20-ed5267d1f981.png)



