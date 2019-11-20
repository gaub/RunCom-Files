syntax on

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tomasr/molokai'
"Plugin 'gerw/vim-latex-suite'
call vundle#end()            " required
filetype plugin indent on    " required

" vim-suite
set shellslash
let g:tex_flavor='lualatex'
let g:Tex_CompileRule_pdf = 'lualatex -interaction=nonstopmode $*'
" if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

set tabstop=4
set shiftwidth=2
autocmd FileType vue set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType js set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType html set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd FileType go set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 smarttab
autocmd FileType cpp set tabstop=4 softtabstop=0 noexpandtab shiftwidth=2 smarttab

set encoding=utf-8              " Use UTF-8 encoding
set backspace=indent,eol,start
set number
set relativenumber
set showcmd
set ruler
set cursorline

set autoindent
set smartindent

set showmatch
set hlsearch
set incsearch

set ignorecase  
set smartcase

set autochdir
set undofile

" ########
" # TMUX #
" ########
if (has("termguicolors"))
  set termguicolors
endif

" #############
" # VIM THEME #
" #############
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark=1
let g:onedark_terminal_italics=1
let g:molokai_original = 1
colorscheme molokai  

" vim-airline-themes
let g:airline_theme='onedark'

" vim_airline
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 0

" nerdtree
map <C-o> :NERDTreeToggle<CR>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

" ctags
set tags+=~/.vim/tags/opencv
