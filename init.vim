filetype plugin indent on
" tabs
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" tabs for go
autocmd FileType go setlocal expandtab shiftwidth=4 softtabstop=4
set backspace=indent,eol,start
set mouse=a
set noswapfile

set number
set numberwidth=5

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" terminal colors
" set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" vim airline
set laststatus=2
" let g:airline_theme='one'

" set background=dark


" ale highlight
highlight ALEwarning ctermbg=DarkMagenta

" GO highlighting
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" automatically start NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" close a tab if only remaining window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jacoborus/tender.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'hdima/python-syntax'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-markdown'
Plug 'unblevable/quick-scope'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()

syntax enable

" call colorsehemes after plug end
"colorscheme nord
" colorscheme onedark
" set background=dark
colorscheme dracula
