"Inicio de configuracion nvim
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed  
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2


"------->Plugins

call plug#begin('~/.config/nvim/plugged')
Plug 'Yggdroot/indentLine',
Plug 'dracula/vim', {'as' :'dracula'}
"Reconoce muchos lenguajes de programación
Plug 'sheerun/vim-polyglot'
"Status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim',
"Tree
Plug 'scrooloose/nerdtree'
"Typing
  "Open & Close keys
  Plug 'chun-yang/auto-pairs',
  "html
  Plug 'alvan/vim-closetag'
"tmux
  ":vsp
  Plug 'benmills/vimux'
  "ctrl + hjkl moverse entre pantallas
  Plug 'christoomey/vim-tmux-navigator'
"autocomplete
"Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"IDE
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'




call plug#end()



"Theme
colorscheme dracula
"----------------------------------------------
"Tecla lider = Espacio
let mapleader=" "
"Al abrir un archivo, se cierra NERDTree en automatico
let NERDTreeQuitOpen=1
"Funciona solamente en modo normal
nmap <Leader>s <Plug>(easymotion-s2)
"Espacio + nt + Enter
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"Atajos para guardar y salir
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"Atajo para abrir terminal
nmap <Leader>t :term<CR>
