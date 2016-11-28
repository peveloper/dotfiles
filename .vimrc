"-------------------------------------------
" My Vim config -- Last Update on 28.11.2016
"-------------------------------------------
"
" Instructions
"
" All plugins are managed by Pathogen
"
        " $ mkdir -p ~/.vim/autoload ~/.vim/bundle 
        " $ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"
" Plugins
"
        " CtrlP                 https://github.com/kien/ctrlp.vim.git
        " IndentLine            https://github.com/Yggdroot/indentLine
        " NerdTree              https://github.com/scrooloose/nerdtree
        " SuperTab              https://github.com/ervandew/supertab
        " VimColorsSolarized    https://github.com/altercation/vim-colors-solarized
        " Vim Rooter            https://github.com/airblade/vim-rooter

execute pathogen#infect()

"General Stuff

set nocompatible
set lazyredraw
set ttyfast
filetype indent plugin on
set hidden
set number
syntax enable
set clipboard=unnamed
set background=dark
colorscheme solarized


"Remaps

let mapleader = "\<Space>"
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wqa<CR>
nnoremap <Leader>q :q<CR>
nnoremap Ctrl Alt 
nnoremap B ^
nnoremap E <S-a>
nnoremap $ <nop>
nnoremap ^ <nop>
inoremap <S-Tab> <C-d>


"Usability

set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set mouse=a


"Indentation (strong tab)

set shiftwidth=4
set tabstop=4
set expandtab
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'


"Arrow keys (move text alongside in nmode and move selection in vmode)

nmap <Left> <<
nmap <Right> >>
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv


"NerdTree

nmap <Leader>d :NERDTreeToggle<CR>


"CtrlP ()

set wildignore+=*/build/**
