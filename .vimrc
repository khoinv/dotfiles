set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'Valloric/YouCompleteMe'

Plugin 'https://github.com/scrooloose/nerdtree.git'

Plugin 'L9'

Plugin 'kien/ctrlp.vim'

Plugin 'https://github.com/tpope/vim-surround'

Plugin 'https://github.com/mattn/emmet-vim'

Plugin 'vim-scripts/closetag.vim'
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/myusuf3/numbers.vim.git'
Plugin 'https://github.com/tpope/vim-commentary.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/altercation/vim-colors-solarized'
" Plugin 'klen/python-mode'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'morhetz/gruvbox'

Plugin 'scrooloose/syntastic'
Plugin 'yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
map <C-n> :NERDTreeToggle<CR>
let mapleader = ","
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
set encoding=utf-8
if !has('gui_running') && &encoding != 'cp932' && &term == 'win32'
	set termencoding=cp932
endif
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set number
set backupdir=~/vimbackup
set directory=~/vimswap
" nnoremap <Leader>f :execute "vimgrep /" . expand("<cword>") . "/j **/**/**/**"<Bar> cw<CR>

nnoremap <silent> <C-f> :FufBufferTagAllWithCursorWord!<CR>
vnoremap <silent> <C-f> :FufBufferTagAllWithSelectedText!<CR>
nnoremap <silent><C-p> :FufCoverageFile<CR>

set t_Co=256
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
colorscheme gruvbox

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree'] 
" set clipboard=unnamed

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "SC": "<ESC>"}
set hlsearch

map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>l <C-W>l
map <leader>v :vs
map <leader>s :sp

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint', 'jslint']
set list listchars=tab:>-,trail:.,extends:>
