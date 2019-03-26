"-------------------------------------------
" My Vim config -- Last Update on 24.03.2017
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
set relativenumber
syntax enable
set undofile
set undodir=~/.vim/undodir
set clipboard=unnamed
set background=dark
colorscheme hybrid
set fillchars+=vert:▌
set formatoptions+=j
set rtp+=~/.fzf


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
inoremap <S-Tab> <C-d>
nnoremap <ScrollWheelUp> <C-Y>
nnoremap <S-ScrollWheelUp> <C-U>
nnoremap <ScrollWheelDown> <C-E>
nnoremap <S-ScrollWheelDown> <C-D>

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


"NerdTree
nmap <Leader>d :NERDTreeToggle<CR>


"Vim Statusline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
