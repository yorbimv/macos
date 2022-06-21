# Tutorial nvim

[Udemy](https://www.udemy.com/course/vim-aumenta-tu-velocidad-de-desarrollo)


1. Una vez terminado el tutorial, consultar los archivos para ver las configuraciones actuales.


****

Las carpetas iniciales de /Users/yorbi/.config/nvim  y /Users/yorbi/.vimrc se crean


init.vim

~~~
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
~~~






.vimrc
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


## Descargas 

- [Node](https://nodejs.org/en/download/)
- Tmux ```brew install tmux```
