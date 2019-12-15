" +-------------------------------------------------------------+
" |                         Plugins                             |
" +-------------------------------------------------------------+

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" +-------------------------------------------------------------+
" |                   Plugins Settings                          |
" +-------------------------------------------------------------+

" +--------------------------------+
" |            NERDTree            |
" +--------------------------------+

" +--------------------------------+
" |            airline             |
" +--------------------------------+

let g:airline_theme = 'powerlineish'

let g:airline_powerline_fonts = 1 
let g:airline_section_z = "%l/%L \ue0a1 :%c" 
let g:Powerline_symbols = 'unicode'

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = '' 
" +--------------------------------+
" |        youcompleteme           |
" +--------------------------------+


" +-------------------------------------------------------------+
" |                     Basic settings                          |
" +-------------------------------------------------------------+
 
filetype plugin indent on

set encoding=utf-8

set nocompatible

syntax on

set number

colorscheme sublimemonokai

set tabstop=4
set shiftwidth=4
set smarttab
set smartindent

set wrap
set textwidth=80

let &t_SI.="\e[5 q"
let &t_SR.="\e[2 q"
let &t_EI.="\e[1 q"
