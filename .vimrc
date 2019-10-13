set backspace=indent,eol,start
set nocompatible              " be iMproved, required
"filetype off                  " required
filetype on
filetype indent on
filetype plugin on

"make powerline show up in single window
set laststatus=2

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins!
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-latex/vim-latex'
Plugin 'pangloss/vim-javascript'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'fatih/vim-go'
"Plugin 'fatih/molokai'
Plugin 'tomasr/molokai'
Plugin 'lithammer/vim-eighties'
Plugin 'Raimondi/delimitMate'
Bundle 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'hail2u/vim-css3-syntax'
Plugin 'wlangstroth/vim-racket'
Plugin 'jgdavey/tslime.vim'
Plugin 'vim-airline/vim-airline'

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

" vim-go
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" Scheme
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

vmap <C-c><C-s> <Plug>SendSelectionToTmux

" Colors and Fonts

let python_highlight_all=1
" Syntax highlighting
syntax enable
syntax on

set background=dark

" Enable 256 terminal color 
"set term=xterm-256color
"set t_Co=256

" Set colorscheme to Solarized
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"colorscheme solarized

" Set colorscheme to molakai
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" Set colorscheme to vim-eighties
"colorscheme eighties

" Text, tab, indent, etc
set ruler
set number
set autoindent
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
" set nowrap

" Latex Commands
let g:Tex_ViewRule_ps='open -a Preview'
let g:Tex_ViewRule_pdf='open -a Preview'
