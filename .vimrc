set nocompatible              " be iMproved, required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
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
Plugin 'tpope/vim-repeat'
" Plugin 'derekwyatt/vim-scala'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'gre/play2vim'

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
" set shell=bash\ --login

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>f :Rgrep<CR>
nnoremap <leader>a <S-a>;
nnoremap <leader>; <S-a>;<ESC>:w<CR>
nnoremap <space> za
nnoremap ; :
nnoremap <leader>nt :NeoCompleteToggle<CR>
nnoremap <leader>st :SyntasticToggleMode<CR>
cnoremap W! w !sudo tee %

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" inoremap {<CR> {<CR>}<ESC><S-O>
" inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
" inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd FileType qf nnoremap <buffer> t <C-W><Enter><C-W>T
autocmd FileType qf nnoremap <buffer> v <C-W><Enter><C-W>L
autocmd FileType qf nnoremap <buffer> s <C-W><Enter>

let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

function! GetSelectedText()
    normal gv"xy
    let result = getreg("x")
    normal gv
    return result
endfunction

nnoremap <leader>p :setlocal paste! paste?<CR>
nnoremap <leader>o :execute '!python ~/scripts/python/open_web.py localhost' expand('%')<CR>
nnoremap <leader>g :execute '!python ~/scripts/python/open_web.py google.com' GetSelectedText()<CR>
nnoremap <silent> <leader>z :sus<CR>
nnoremap <silent> <leader><space> :noh<CR>
nnoremap <leader>n :lnext<CR>
nnoremap <leader>p :lprevious<CR>
" inoremap </ </<C-X><C-O>
noremap <leader>i gg=G<C-O><C-O>

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:ctrlp_map = '<leader>e'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|target'

set backspace=indent,eol,start
set list listchars=tab:>-,trail:.,extends:>
set foldmethod=indent
set foldlevel=1
set cursorline

" neocomplete setting
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#sources#tags#cache_limit_size = 500000

" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]


" ctag config
set tags+=.git/tags
let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags = 1
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'

autocmd FileType python nnoremap <leader>r :execute '!clear;python' expand('%')<CR>
autocmd FileType php nnoremap <c-f> :execute "vimgrep /function " . expand("<cword>") . "/j **/*.php" <Bar> cw<CR>
autocmd BufRead,BufNewFile *.txt set filetype=sql
autocmd BufRead,BufNewFile *.scss set tabstop=2
autocmd BufRead,BufNewFile *.scss set softtabstop=2
autocmd BufRead,BufNewFile *.scss set shiftwidth=2
au BufRead,BufNewFile *.scss set filetype=scss

let g:syntastic_auto_loc_list = 0
" disable auto synctastic
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

let g:syntastic_aggregate_errors = 1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "plain text isn't allowed in", "attribute with missing trailing quote mark"]
let g:syntastic_typescript_checkers=['tslint']

let Grep_Skip_Dirs = 'target .git .idea/'

autocmd FileType html :UltiSnipsAddFiletypes javscript|:UltiSnipsAddFiletypes php|:UltiSnipsAddFiletypes python
autocmd FileType javascript :UltiSnipsAddFiletypes html|:UltiSnipsAddFiletypes javascript
autocmd FileType python :UltiSnipsAddFiletypes html
autocmd FileType php :UltiSnipsAddFiletypes html
au BufRead,BufNewFile *.ts set filetype=typescript

set clipboard=unnamed
set exrc
set secure
