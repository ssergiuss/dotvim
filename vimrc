"
" START VUNDLE CONFIGURATION
"
set nocompatible " be iMproved, required
filetype off     " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"
" Plugins
"

" Themes and status/tabline
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'evgenyzinoviev/vim-vendetta'

" Full path fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" TAB for autocompletion
Plugin 'ervandew/supertab'

" Filesystem tree (with search capabilities) and code commenter
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/nerdtree-ack'

" Autocompletion for quotes, parens, brackets, etc
Plugin 'Raimondi/delimitMate'

" Git
Plugin 'tpope/vim-fugitive'

" Numbers
Plugin 'myusuf3/numbers.vim'

" Improved incremental search
Plugin 'haya14busa/incsearch.vim'

" Javascript
Plugin 'pangloss/vim-javascript'

" Syntax checker
Plugin 'scrooloose/syntastic'

" IndentLine
Plugin 'Yggdroot/indentLine'

" EditorConfig
Plugin 'editorconfig/editorconfig-vim'

" UltiSnips
"Plugin 'SirVer/ultisnips'

" UltiSnips PHP
"Plugin 'ssergiuss/ultisnips-php'

" Ultisnips Javascript
"Plugin 'ssergiuss/ultisnips-javascript'

" VIM Snippets
Plugin 'honza/vim-snippets'

" PHP omni-completion
"Plugin 'shawncplus/phpcomplete.vim'

" YouCompleteMe
"Plugin 'valloric/youcompleteme'

" PHP Documentor
Plugin 'tobyS/pdv'

" Mustache (required by PHP Documentor)
Plugin 'tobyS/vmustache'

" EasyAlign
Plugin 'junegunn/vim-easy-align'

" All the Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required

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

"if has('gui_running')
    colorscheme vendetta
"endif

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

" Allow backspacing over autoindent, line breaks, the start of insert
set backspace=indent,eol,start

" Disable beeping and visual bell
set vb t_vb=

" Highlight all search matches
set hlsearch

" Disable the cursor/arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Set the leader key
let mapleader = ','

" Disable working path mode. Keep the first root.
let g:ctrlp_working_path_mode = 0

" NERDTree key bindings
map <C-n> :NERDTreeToggle<CR>

" Incremental search key bindings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Remove trailing spaces
"autocmd BufWritePre * :%s/\s\+$//e

" Set tabs and spacing for Javascript
"autocmd FileType javascript set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Set tabs and spacing for HTML
"autocmd FileType html set tabstop=2 | set softtabstop=2 | set shiftwidth=2

" Show lines that exceed 80 characters
if has('gui_running')
    "match ErrorMsg '\%>80v.\+'
endif

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

" Highlight the 81th column and the columns greater than 120th
"if has('gui_running')
    "let &colorcolumn='81,'.join(range(121,999),',')
    let &colorcolumn='81,121,122'
"endif

" Syntastic config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" IndentLine config
let g:indentLine_char = '‧'
"let g:indentLine_char = '`'
"let g:indentLine_char = '·'

" Reload ~/.vimrc key binding
noremap <leader>rc :source ~/.vimrc<CR>

" 81 characters vertical resize key binding
noremap <leader>vr <C-w>=<CR> :vertical resize 85<CR>

" Vertical resize
noremap <leader>v1 :vertical resize +10<CR>
noremap <leader>v2 :vertical resize +20<CR>
noremap <leader>v3 :vertical resize +30<CR>
noremap <leader>v4 :vertical resize +40<CR>
noremap <leader>v5 :vertical resize +50<CR>
noremap <leader>v6 :vertical resize +60<CR>
noremap <leader>v7 :vertical resize +70<CR>
noremap <leader>v8 :vertical resize +80<CR>
noremap <leader>v9 :vertical resize +90<CR>

" Enable the expansion of <CR>
let delimitMate_expand_cr = 2

" Press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Reveal current file in tree
noremap <leader>n :NERDTreeFind<CR>

" Search for visually selected text
vnoremap // y/<C-R>"<CR>

" PHP Documentor
let g:pdv_template_dir = $HOME .'/.vim/bundle/pdv/templates_snip'
nnoremap <C-k> :call pdv#DocumentWithSnip()<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger='<C-s>'
let g:UltiSnipsJumpForwardTrigger='<C-l>'
let g:UltiSnipsJumpBackwardTrigger='<C-h>'

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
"nmap ga <Plug>(EasyAlign)
let g:easy_align_ignore_groups = ['String']

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_seed_identifiers_with_syntax = 0

" VIM Javascript
let g:javascript_plugin_jsdoc = 1

" Keep only the active tab and split
noremap <C-w>O :tabo \| on<CR>

" TODO update it so that it pushes only if necessary
" Push changes to dev4 on file save
"autocmd BufWritePost * execute ':silent ! /bin/bash /Users/sergiuungur/Projects/partfiniti/push > /dev/null 2>&1 &'
