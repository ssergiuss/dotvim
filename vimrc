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

" Full path fuzzy file finder
Bundle "ctrlpvim/ctrlp.vim"

" TAB for autocompletion
Bundle "ervandew/supertab"

" NERD bundles
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"

" Autocompletion for quotes, parens, brackets, etc
Bundle "Raimondi/delimitMate"

" Git
Bundle "tpope/vim-fugitive"

" Numbers
Bundle "myusuf3/numbers.vim"

" Improved incremental search
Bundle "haya14busa/incsearch.vim"

" Javascript
Bundle "pangloss/vim-javascript"

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

" Set auto-indent options
set autoindent
set cindent
set smartindent

set nowrap
set number

" Set tabs and spacing for PHP as recommended by PEAR and Zend
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show a status bar
set ruler
set laststatus=2

" Disable the cursor/arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Disable working path mode. Keep the first root.
let g:ctrlp_working_path_mode = 0

" NERDTree key bindings
map <C-n> :NERDTreeToggle<CR>

" Incremental search key bindings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" Show lines that exceed 80 characters
match ErrorMsg '\%80v.\+'

" Remove vertical scrollbars
:set guioptions-=l
:set guioptions-=L
:set guioptions-=r
:set guioptions-=R

" Switch between splits key bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Set search case insensitive
:set ic
