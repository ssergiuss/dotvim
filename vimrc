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

" Filesystem tree (with search capabilities) and code commenter
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "mileszs/ack.vim"
Bundle "vim-scripts/nerdtree-ack"

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

" Syntax checker
Bundle "scrooloose/syntastic"

" IndentLine
Bundle "Yggdroot/indentLine"

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

" Set no wrap
set nowrap

" Show absolute line number of the current line
set number

" Set global tabs and spacing
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show a status bar
set ruler
set laststatus=2

" Scroll the window with 10 lines around
set scrolloff=10

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

" Set tabs and spacing for Javascript
autocmd FileType javascript set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Show lines that exceed 80 characters
match ErrorMsg '\%>80v.\+'

" Remove vertical scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Switch between splits key bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Set search case insensitive
set ic

" Highlight the columns from 81 to 120
execute 'set colorcolumn=' . join(range(81,120),',')

" Syntastic config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" New line and indent key binding
inoremap <C-Return> <CR><CR><C-o>k<Tab>

" IndentLine config
let g:indentLine_char = '│'

" Reload ~/.vimrc key binding
noremap \rc :source ~/.vimrc<CR>

" 81 characters vertical resize key binding
noremap \vr <C-w>=<CR> :vertical resize 85<CR>
