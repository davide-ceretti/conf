set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" Nerdtree
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

" Python syntax highlight
Bundle 'klen/python-mode'

" Autocompletion
Bundle 'Valloric/YouCompleteMe'

" Syntax checking
Bundle 'scrooloose/syntastic'

" Better status line
Bundle 'Lokaltog/vim-powerline'

" Jump to target
Bundle 'Lokaltog/vim-easymotion'

" Full path fuzzy file finder
Bundle 'kien/ctrlp.vim'

" Color scheme
Bundle 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" on .vimrc file save auto source
autocmd! bufwritepost .vimrc source %

" easier indenting of block
vnoremap < <gv
vnoremap > >gv

" Make search case insensitive
set hlsearch
nnoremap <silent> <C-l> :nohl<CR><C-1>
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Settings for ctrlp
let g:ctrlp_max_height = 30
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|tox\'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*collected_static/*

" Colors
syntax on
set background=dark
colorscheme molokai

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
"    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
"    autocmd Filetype python match Excess /\%80v.*/
"    autocmd Filetype python set nowrap
augroup END

map <F2> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
set autoindent

set encoding=utf-8
set scrolloff=3

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2  " ensures status bar shows
set relativenumber
set number                  " absolute nmbr on current line
" set undofile  " don't want persistant undos
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80  " not needed as something discolors from col 80

nnoremap ; :
au FocusLost * :wa

" Macros are like anonymous functions

" Leader: usr-specified customisations, kind of namespace
let mapleader = ","  " dflt \

" strip all trailing whitespace in curr file:
nnoremap ,W : %s/\s\+$//<crw>:let @/=''<CR>
nnoremap ,a : Ack

inoremap jj <ESC>  " insert mode

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" python-mode
let g:pymode_lint = 1
let g:pymode_syntax = 1
let g:pymode_rope = 0   " disable for Jedi-vim
let g:pymode_lint_on_fly = 1

" better copy & paste
set clipboard=unnamedplus

set t_Co=256
set number

let g:pymode_lint_cwindow = 0
