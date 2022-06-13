
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
- Configurar ...
- Descargar fuente sourcecodepro+powerline
