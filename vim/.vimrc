" +-------------------------------------------------------------+
" |                         Plugins                             |
" +-------------------------------------------------------------+

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source '~/.vimrc'
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'ErichDonGubler/vim-sublime-monokai'
" Plug 'ryanoasis/vim-devicons'
" Plug 'ryanoasis/nerd-fonts'
call plug#end()

" +-------------------------------------------------------------+
" |                   Plugins Settings                          |
" +-------------------------------------------------------------+

" +--------------------------------+
" |            NERDTree            |
" +--------------------------------+

let g:NERDTreeAutoCenterThreshold = 5
let g:NERDTreeChDirMode = 3
let g:NERDTreeMouseMode = 3

let g:NERDTreeNaturalSort = 1
let g:NERDTreeSortOrder = [ '\/$', '\.h$', '\.c$', '*', '^Makefile$' ]

let g:NERDTreeStatusline = '%{getcwd()}'
let g:NERDTreeWinSize = 25

let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1

let g:NERDTreeDirArrowCollapsible = 'ᗑ'
let g:NERDTreeDirArrowExpandable = 'ᗒ'

let g:NERDTreeCustomOpenArgs = {
	\ 'file': {
		\ 'where': 't',
		\ 'reuse': 'all',
		\ },
	\}

imap <C-c> <Esc>:NERDTreeToggle<CR>
map  <C-c> <Esc>:NERDTreeToggle<CR>



" +--------------------------------+
" |            airline             |
" +--------------------------------+

let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
let g:airline_theme = 'powerlineish'

let g:airline_mode_map = {
    \ 'c'      : 'COMMAND',
    \ 'i'      : 'INSERT',
    \ 'n'      : 'NORMAL',
    \ 'R'      : 'REPLACE',
    \ 'v'      : 'VISUAL',
    \ 'V'      : 'VISUAL LINE',
    \ ''     : 'VISUAL BLOCK',
    \ }

let g:airline_filetype_overrides = {
    \ 'help':     [ 'HELP', '%f' ],
    \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
    \ 'vim-plug': [ 'PLUGINS', '' ],
    \}

let g:airline_section_z = "%l/%L \ue0a1 :%c" 

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ' ⃠⃠⃠⃠⃠⃠⃠⃠ '

let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = "⮾"
let g:airline#extensions#ycm#warning_symbol = "⚠"
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

set ttimeoutlen=50

let &t_SI.="\e[5 q"
let &t_SR.="\e[2 q"
let &t_EI.="\e[1 q"

