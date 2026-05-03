" Neovim configuration
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

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'Yggdroot/indentLine'
  Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'sheerun/vim-polyglot'
  Plug 'maximbaz/lightline-ale'
  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'chun-yang/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'easymotion/vim-easymotion'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
call plug#end()

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" Leader key = Space
let mapleader = " "

" NERDTree
let NERDTreeQuitOnOpen = 1

" Mappings
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>t :term<CR>
