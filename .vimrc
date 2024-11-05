"Environment
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'easymotion/vim-easymotion'
Plugin 'bkad/CamelCaseMotion'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"File type indent
filetype plugin indent on    " required
"Syntax highlighting
syntax on
"Color scheme
syntax enable
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_underline=1
set background=dark
"Mouse (removed for practice)
set mouse=
"Set command line autocompletion
set wildmenu
"Key information
set backspace=indent,eol,start
set esckeys
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set copyindent
set smarttab
"History
set history=500
"Line numbers
set nu rnu
"Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
"Brackets
set showmatch
set mat=2
"Misc format
set shiftwidth=2
"Ignore file extensions during tab
set wildignore=*.swp,*.bak,*.pyc,*.class
"change terminal title
set title
"Sounds
set noerrorbells
set novisualbell
"Set 0
nnoremap 0 ^
"Keep cursor in middle
nnoremap <C-d> <C-d>zz 
nnoremap <C-u> <C-u>zz 
nnoremap n nzzzv
nnoremap N Nzzzv
"Fast terminal connections
set ttyfast
"Add g flag for search/replace by default
set gdefault
"See the cursor position
set ruler
"Show the current mode
set showmode
"Indent
set ai "Auto indent
set si "Smart indent
"Leader
let mapleader = " "
"Clear highlights after search
nnoremap <silent> <leader><BS> :nohlsearch<CR>
"Fast save
nnoremap <leader>s :w<CR>
"Turn off swap files
set noswapfile
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%
" Always show the status line
set laststatus=2
"easymotion
let g:EasyMotion_keys = 'abcdefghijklmnoprstuvwxy'
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)
