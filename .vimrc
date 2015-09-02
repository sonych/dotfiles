set nocompatible              " be iMproved, required
filetype off                  " required

" My old configs
"syntax on
"filetype indent on

"set number
"set backspace=indent,eol,start
"set tabstop=8 expandtab shiftwidth=4 softtabstop=4

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'      " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree'            " Project and file navigation
Plugin 'majutsushi/tagbar'              " Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
Plugin 'rosenfeld/conque-term'          " Consoles as buffers
Plugin 'tpope/vim-surround'     " Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'        " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'   " dependencies #1
Plugin 'tomtom/tlib_vim'        " dependencies #2
Plugin 'honza/vim-snippets'     " snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
" Plugin 'klen/python-mode'           " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'       " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'        " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()                   " required
filetype on
filetype plugin on
filetype plugin indent on


"=====================================================
" General settings
"=====================================================
"
set backspace=indent,eol,start
" This must happen before the syntax system is enabled
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup

" Activate a permanent ruler and add line highlightng as well as numbers.
" Also disable the sucking pydoc preview window for the omni completion
" and highlight current line and disable the blinking cursor.
set ruler
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
    set cursorline
endif
set ttyfast

syntax on
"colorscheme  sourcerer
"colorscheme molokai
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12

"if has("mac")
"  set guifont=Consolas:h13
"  set fuoptions=maxvert,maxhorz
"else
"  set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10
"endif

set visualbell t_vb= 
set novisualbell 

set enc=utf-8
set ls=2              " всегда показываем статусбар
set incsearch         " инкреминтируемый поиск
set hlsearch          " подсветка результатов поиска
set nu		      " показывать номера строк
set scrolloff=5       " 5 строк при скролле за раз	

