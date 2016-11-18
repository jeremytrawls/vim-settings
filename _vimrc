set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" set rtp+=%HOME%/vimfiles/bundle/Vundle.vim/
" call vundle#begin('%USERPROFILE%/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
"Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'https://github.com/ternjs/tern_for_vim.git'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'wincent/command-t'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'
Plugin 'PeterRincker/vim-argumentative'
Plugin 'helino/vim-json'
Plugin 'junegunn/vim-easy-align'
Plugin 'easymotion/vim-easymotion'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'justinj/vim-react-snippets'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wikitopian/hardmode'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/CSApprox'
Plugin 'scrooloose/syntastic'	
Plugin 'bling/vim-bufferline'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" noremap h <NOP> 
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>

let mapleader=","
let g:syntastic_check_on_open=1

map <leader>r : NERDTreeFind<cr>
map <C-n> :NERDTreeToggle<cr>

set t_Co=256 " Tell vim that terminal supports 256 colors
set autoindent
set smartindent
set relativenumber
set number
set tabstop=2
set laststatus=2
syntax on

" set background=dark
" Set the colorscheme 
autocmd vimenter * colorscheme hemisu
autocmd vimenter * AirlineTheme light

" Open nerdtree if Vim has oeen opened without a file argument
autocmd vimenter * if !argc() | NERDTree | endif
" Go to previous (last accessed) window
autocmd vimenter * wincmd p
" close vim if Nerdtree is the only buffer reamining open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



