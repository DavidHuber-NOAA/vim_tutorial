" Do not make vim compatible with vi
set nocompatible

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler

" Whitespace
"
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
" Cursor motion
set scrolloff=3
set backspace=indent,eol,start

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Color scheme (terminal)
set t_Co=256

if &diff
   colorscheme mycolorscheme
end

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Include and initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Load up Jedi for extra Python auto-completion dictionaries
Plugin 'davidhalter/jedi-vim'


" Finalize Vundle
call vundle#end()

" For plugins to load correctly
filetype plugin indent on

" Setup status bar
set laststatus=2
set statusline=%F       "tail of the filename
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
