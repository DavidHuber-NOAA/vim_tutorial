" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

if &diff
   colorscheme mycolorscheme
end

" Include and initialize Vundle
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" Let Vundle manage Vundle
"Plugin 'VundleVim/Vundle.vim'

" Load up Jedi for extra Python auto-completion dictionaries
"Plugin 'davidhalter/jedi-vim'

" Load vimf90 for extra Fortran auto-completion dictionaries
"Plugin 'rudrab/vimf90'

" Finalize Vundle
"call vundle#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
 set encoding=utf-8

" Whitespace
" set wrap
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase

" Color scheme (terminal)
set t_Co=1024
set background=dark
set mouse=a
