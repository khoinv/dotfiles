set nocompatible              " be iMproved, required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'https://github.com/tpope/vim-commentary.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/altercation/vim-colors-solarized'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'yggdroot/indentline'
Plugin 'bonsaiben/bootstrap-snippets'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/grep.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'soramugi/auto-ctags.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-repeat'

" All of your Plugins must be added before the following line
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
nnoremap <leader>s :split<CR>
nnoremap <leader>f :Rgrep<CR>
nnoremap <leader>a <S-a>
nnoremap <leader>; <S-a>;
nnoremap <space> za
nnoremap ; :
nnoremap <leader>nt :NeoCompleteToggle<CR>
nnoremap <leader>st :SyntasticToggleMode<CR>
cnoremap W! w !sudo tee %

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

inoremap {<CR> <Esc><S-a>{<CR>}<ESC><S-o>
inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd FileType qf nnoremap <buffer> t <C-W><Enter><C-W>T
autocmd FileType qf nnoremap <buffer> v <C-W><Enter><C-W>L
autocmd FileType qf nnoremap <buffer> s <C-W><Enter>

let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

nnoremap <silent> <S-t> :tabnew<CR>
nnoremap <silent> <leader>z :sus<CR>

nnoremap <silent> <leader><space> :noh<cr>

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_aggregate_errors = 1
let g:ctrlp_map = '<leader>e'

autocmd FileType javascript let g:syntastic_javascript_checkers = ['jshint', 'jslint']
autocmd FileType python let g:syntastic_python_checkers=['python', 'pylint']
autocmd FileType html let g:syntastic_html_checkers=['jshint', 'jslint']

autocmd FileType html :UltiSnipsAddFiletypes javscript|:UltiSnipsAddFiletypes php|:UltiSnipsAddFiletypes python
autocmd FileType javascript :UltiSnipsAddFiletypes html
autocmd FileType python :UltiSnipsAddFiletypes html
autocmd FileType php :UltiSnipsAddFiletypes html

au BufRead,BufNewFile *.ts set filetype=typescript

set backspace=indent,eol,start
set list listchars=tab:>-,trail:.,extends:>
set foldmethod=indent
set foldlevel=0
set cursorline

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#tags#cache_limit_size = 500000

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
set tags+=.git/tags
let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags = 1
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
