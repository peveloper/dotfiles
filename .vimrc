"-------------------------------------------
" My Vim config -- Last Update on 08.02.2018
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
        " IndentLine            https://github.com/Yggdroot/indentLine
        " NerdTree              https://github.com/scrooloose/nerdtree
        " SuperTab              https://github.com/ervandew/supertab
        " Lightline             https://github.com/itchyny/lightline.vim

let &runtimepath.=',/home/peveloper/mycloud/dev/dotfiles/.vim'
execute pathogen#infect()

"General Stuff
set nocompatible
set lazyredraw
set ttyfast
filetype indent plugin on
set hidden
set relativenumber
syntax enable
set encoding=utf-8
set undofile
set undodir=~/.vim/undodir
set clipboard=unnamed
set t_Co=256 
set background=dark
colorscheme hybrid
set fillchars+=vert:▌
set formatoptions+=j
set rtp+=~/mycloud/dev/fzf


"Remaps
let mapleader = "\<Space>"
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wqa<CR>
nnoremap <Leader>q :q<CR>
nnoremap Ctrl Alt 
nnoremap B ^
nnoremap E <S-a>
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <ScrollWheelUp> <C-Y>
nnoremap <S-ScrollWheelUp> <C-U>
nnoremap <ScrollWheelDown> <C-E>
nnoremap <S-ScrollWheelDown> <C-D>
nnoremap <Leader>zz ZZ
inoremap <S-Tab> <C-d>

"Usability
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm


"Indentation (strong tab)
set shiftwidth=4
set tabstop=4
set expandtab
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'


"Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


"Arrow keys (move text alongside in nmode and move selection in vmode)
nmap <Left> <<
nmap <Right> >>
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv


"A more natural split opening (right-below)
set splitbelow
set splitright


"Better navigation in splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Vim Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
