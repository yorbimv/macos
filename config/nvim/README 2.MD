# Tutorial nvim

[Udemy](https://www.udemy.com/course/vim-aumenta-tu-velocidad-de-desarrollo)


1. Una vez terminado el tutorial, consultar los archivos para ver las configuraciones actuales.


****



## Crear init.vim

- El código siguiente indica que los cambios se aplican a vim y nvim 
 - Se crea en /Users/yorbi/.config/nvim/init.vim 
~~~
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
~~~






## Crear .vimrc

Se crea en /Users/yorbi/.vimrc
~~~
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
~~~

***

## Configuración de temas

1. Instalar vim plug

~~~

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
~~~

2. Editar nuevamente **.vimrc** y agregar

~~~

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')

" Themes 
Plug 'morhetz/gruvbox'

call plug#end()


colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

~~~


3.  Guardar y salir

4. Entrar nuevamente y la configuración queda así

![Captura de Pantalla 2022-06-21 a la(s) 20 09 09](https://user-images.githubusercontent.com/65741972/174922007-32ddfe56-eec6-4b61-8558-7d86c6f82444.png)

***

En este punto ya se agregaron las configuraciónes, ahora solo falta instalar, para ello hay que hacer lo sig:

1. Ejecutar ``` nvim ./vimrc```
2. Ejecutar ```:Plug```+ TAB, ejecutar comando **PlugInstall**
<br>

![Captura de Pantalla 2022-06-21 a la(s) 20 00 05](https://user-images.githubusercontent.com/65741972/174921097-d751cc0b-232e-4be2-9174-51fa8c2d786b.png)


***

## Finalizando configuración

Agregar a .vimrc

Agregar toda la configuración del [archivo de github](https://github.com/yorbimv/macos_catalina_config/blob/main/config/nvim/nvim/.vimrc) al archivo .vimrc de la mac


Listo



![Captura de Pantalla 2022-06-21 a la(s) 20 46 05](https://user-images.githubusercontent.com/65741972/174925625-97fc5382-409a-430f-9f19-e1faefd0d573.png)








## Descargas 

- [Node](https://nodejs.org/en/download/)
- Tmux ```brew install tmux```
