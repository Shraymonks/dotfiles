set nocompatible " be iMproved

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundle bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-signify'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'tpope/vim-surround'
Bundle 'mhinz/vim-startify'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'
Bundle 'plasticboy/vim-markdown'
Bundle 'LaTeX-Box-Team/LaTeX-Box'

filetype plugin indent on

" Settings
syntax on " Syntax highlighting
set ruler " Cursor position in status line
set number " Line numbers
set background=dark
colorscheme solarized
set laststatus=2 " Status line always on
set ttimeoutlen=50
set shiftwidth=4
set tabstop=4
set noexpandtab
set softtabstop=0
set hidden " Hidden buffers
set backspace=indent,eol,start " Enable backspace in insert mode
set hlsearch " Search highlight
set incsearch " Incremental search
set whichwrap+=<,>,h,l,[,] " Fix cursor wrapping
set cursorline " Highlight cursor line
set nostartofline " Don't reset the cursor to the start of line
" 5 line context when scrolling
set scrolloff=5
execute 'nnoremap H H'.&l:scrolloff.'k'
execute 'vnoremap H H'.&l:scrolloff.'k'
execute 'nnoremap L L'.&l:scrolloff.'j'
execute 'vnoremap L L'.&l:scrolloff.'j'
set autoindent " Automatic indenting
set ignorecase " Ignore case in search
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_cpp_compiler_options='-L/usr/X11R6/lib -lX11 -lstdc++ -I/opt/X11/include'
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute']

" Airline
let g:airline_left_sep=''
let g:airline_right_sep=''

" Startify
let g:startify_bookmarks=['~/.vimrc']
let g:startify_files_number=9
