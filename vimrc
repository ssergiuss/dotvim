"
" START VUNDLE CONFIGURATION
"
set nocompatible            " be iMproved, required
filetype off                " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"
" Bundles
"

" Themes and status/tabline
Bundle "altercation/vim-colors-solarized"
Bundle "bling/vim-airline"

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" END VUNDLE CONFIGURATION
"

syntax enable
set background=dark

if has('gui_running')
    colorscheme solarized
endif
