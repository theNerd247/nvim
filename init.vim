call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
call plug#end()

" add the directory to 'runtimepath'
set nocompatible

set path+=**
set wildmenu
filetype plugin on

" netrw
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=2  " open in prior window
let g:netrw_preview=1
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" set the mode of mouse
set mouse=a

" I like syntax highlighting
syntax enable

" set custom colors
"use 16 colors
set t_Co=16 
set background=dark
colorscheme desert

" show the commands as I type them
set showcmd

" don't wrap text by default
set nowrap

" allow for inline searching
set incsearch

" fold code by syntax
set foldmethod=syntax

" default tab size
set tabstop=2
" spaces to use for auto-indent
set shiftwidth=2
" number of spaces for a single tab
set softtabstop=2
set expandtab

" show lines numbers
set number
set relativenumber

" turn off smart indenting
set nosmartindent

" turn off spell check
set nospell

" set the program to use for the S-K mapping
set keywordprg=

" set the number of lines to buffer the cursor with (above or below) when
" scrolling
set scrolloff=10

" highlight when I've gone past the 80 character width
highlight ColorColumn ctermbg=brown
call matchadd('ColorColumn', '\%81v', 30)

" set map leader for custom key-maps
let mapleader = "," 

" custom mappings
nmap <leader>co :copen<cr><C-w><S-j>
nmap <leader>ns :nohlsearch<cr>
nmap <leader>sc :copen<cr>
nmap <space> zz
nmap <leader>m :make<cr>
nmap <leader>vs :vsp<CR>
nmap <leader>hs :sp<CR>
nmap <leader>w :w<cr>
nmap <leader>se :tabnew ~/.config/nvim/init.vim<cr>
nmap <leader>hh :tab help 
nmap <leader>tn :tabnew<cr>
nmap <leader>td :tabclose<cr>
nmap <leader>q :q<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bd :bd<cr>
nmap <leader>prez :so ~/.config/nvim/prez.vim<cr>

"-- PRINTER {{{ ------------------------------------------------------
set printoptions=top:1in,bottom:1in,left:0.5in,right:0.5in
set printheader=" "
"-- END PRINTER }}} --------------------------------------------------

nnoremap <leader>class :-1read $HOME/.config/nvim/newJsClass.js<cr>
