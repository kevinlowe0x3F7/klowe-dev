"Environment
set nocompatible
"Syntax highlighting
syntax on
"File type indent
filetype plugin indent on
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
set tabstop=4
set softtabstop=4
set autoindent
set copyindent
set smarttab
"Allow for cursor past one character
set virtualedit=onemore
"History
set history=500
"Line numbers
set nu
"Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
"Brackets
set showmatch
set mat=2
"Misc format
set shiftwidth=4
"Ignore file extensions during tab
set wildignore=*.swp,*.bak,*.pyc,*.class
"change terminal title
set title
"Sounds
set noerrorbells
set novisualbell
"Set 0
nnoremap 0 ^
"Set semicolon to colon for command line
nnoremap ; :
"Fast save
nnoremap <leader>w :w<CR>
"Wrapped lines continue
nnoremap j gj
nnoremap k gk
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
let mapleader = ","
"Search and backwards search
nnoremap <space> /
nnoremap <c-space> ?
"Clear highlights after search
nnoremap <silent> <leader><space> :nohlsearch<CR>
"Set remap for buffer movement
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <leader>b :ls<CR>:b<space>
" Markdown
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md set ft=markdown
au FileType markdown set cc=80
au FileType markdown set textwidth=80
"Turn off swap files
set noswapfile
"White space for specific file types
autocmd Filetype ruby setlocal ts=4 sw=4 expandtab
autocmd Filetype html setlocal ts=4 sw=4 expandtab
autocmd Filetype css setlocal ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd StdinReadPre * let s:std_in=1
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%
" Always show the status line
set laststatus=2
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
