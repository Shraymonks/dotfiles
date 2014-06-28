set nocompatible " be iMproved

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Vundle bundles
Plugin 'altercation/vim-colors-solarized'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
Plugin 'mhinz/vim-signify'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-surround'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'plasticboy/vim-markdown'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'elzr/vim-json'
Plugin 'rking/ag.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'brookhong/DBGPavim'

call vundle#end()
filetype plugin indent on

" Settings
syntax on " Syntax highlighting
set ruler " Cursor position in status line
set number " Line numbers
set background=dark
colorscheme solarized
highlight SignColumn ctermbg=0
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
set title " Display filename in title
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

" Turn off search highlighting with Space
nnoremap <Space> :nohlsearch<CR>

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_cpp_compiler_options='-L/usr/X11R6/lib -lX11 -lstdc++ -I/opt/X11/include'
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute', 'trimming empty', '<link>', 'not recognized', 'discarding unexpected', 'lacks "action"']

" Airline
" Disable triangles
let g:airline_left_sep=''
let g:airline_right_sep=''

" Startify
let g:startify_bookmarks=['~/.vimrc']
let g:startify_files_number=9

" Bufferline
let g:bufferline_echo=0

" delimitMate
let delimitMate_expand_cr=1

" vim-json
let g:vim_json_syntax_conceal=0

" ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=100

" YouCompleteMe
let g:ycm_filetype_specific_completion_to_disable = {'php': 1}
