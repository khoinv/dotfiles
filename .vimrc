set nocompatible              " be iMproved, required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'https://github.com/tpope/vim-commentary.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/altercation/vim-colors-solarized'
Plugin 'honza/vim-snippets'
Plugin 'yggdroot/indentline'
Plugin 'bonsaiben/bootstrap-snippets'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/grep.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/matchit.zip'

call vundle#end()            " required
filetype plugin indent on    " required
let mapleader = ","
set encoding=utf-8
set fileencodings=utf-8,sjis,default
if !has('gui_running') && &encoding != 'cp932' && &term == 'win32'
    set termencoding=cp932
endif
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set number

set nobackup
set noswapfile

set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme molokai

set hlsearch

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>f :Rgrep<CR>
nnoremap <leader>a <S-a>
nnoremap <leader>; <S-a>;
nnoremap <space> za
nnoremap ; :
cnoremap W! w !sudo tee %

inoremap {<CR> <Esc><S-a>{<CR>}<ESC><S-o>
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd FileType qf nnoremap <buffer> t <C-W><Enter><C-W>T
autocmd FileType qf nnoremap <buffer> v <C-W><Enter><C-W>L
autocmd FileType qf nnoremap <buffer> h <C-W><Enter>

let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

nnoremap <silent> <S-t> :tabnew<CR>
nnoremap <silent> <leader>z :sus<CR>

nnoremap <silent> <leader><space> :noh<cr>
let g:ctrlp_map = '<leader>e'
au BufRead,BufNewFile *.ts set filetype=typescript
set backspace=indent,eol,start
set cursorline

let g:SuperTabDefaultCompletionType = "<C-n>"
