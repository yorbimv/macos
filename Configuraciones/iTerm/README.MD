
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

1. Descargar ohmyzsh ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```
2. Descargar [PowerLevel10](https://github.com/romkatv/powerlevel10k#homebrew) en la carpeta de tu usuario
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
    - Agregar plugins y herramientas de zsh
        - fzf
        - fif 
    - Editar la vista de la terminal desde ~/.p10k.zsh  
    ![Screen Shot 2022-06-13 at 4 43 56](https://user-images.githubusercontent.com/65741972/173326646-0413b2ca-35e3-45aa-b8f8-182cdf035dc7.png)

6. En caso de no ejecutar Vs Code desde terminal
   > Abra el código de Visual Studio y presione Comando + Shift + P 
   > luego escriba Shell en la paleta de comandos ahora puede encontrar esta opción como Shell Command : Install code in PATH de la lista sugerida en la paleta de comandos. Seleccione esas opciones.
