syntax on
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set relativenumber		" show relative line numbers
colorscheme desert      " colorscheme desert

" tabs
set tabstop=4

" Enable folding (za for folding)
set foldmethod=indent
set foldlevel=99

" Python PEP 8 settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=89 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
