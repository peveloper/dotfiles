"-------------------------------------------
" My Vim config -- Last Update on 22.05.2019
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
        " Lightline             https://github.com/itchyny/lightline.vim
        " Vimtex                https://github.com/lervag/vimtex

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
set undodir=~/mycloud/dev/dotfiles/.vim/undodir
set clipboard=unnamed
set t_Co=256 
set background=dark
colorscheme hybrid
set fillchars+=vert:▌
set formatoptions+=j

"Remaps
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wqa<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :e
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
au BufRead,BufNewFile *.md setlocal textwidth=80

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

"Vimtex settings
let &rtp  = '~/mycloud/dev/dotfiles/.vim/bundle/vimtex,' . &rtp
let &rtp .= '~/mycloud/dev/dotfiles/.vim/bundle/vimtex/after'
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

"Ranger inside buffer
function! RangeChooser()
    let temp = tempname()
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

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
