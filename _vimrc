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


" Start NERDTree
autocmd vimenter * NERDTree /Users/jrawls/Projects
" Go to previous (last accessed) window
autocmd Vimenter * wincmd p


function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set relativenumber
set number
set tabstop=2
set guifont=Consolas:h8
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
syntax enable
syntax on
" Set the colorscheme 
autocmd vimenter * colorscheme Tomorrow-Night
autocmd vimenter * AirlineTheme light




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
