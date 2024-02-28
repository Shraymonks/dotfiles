if has('vim_starting')
  if &compatible
    set nocompatible " be iMproved
  endif
endif

" Required:
filetype plugin indent on

" Settings
"syntax on " Syntax highlighting
set ruler " Cursor position in status line
set number " Line numbers
set background=dark
set termguicolors
highlight SignColumn ctermbg=0
set laststatus=2 " Status line always on
set ttimeoutlen=50
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set hidden " Hidden buffers
set backspace=indent,eol,start " Enable backspace in insert mode
set mouse=a " Mouse support
set colorcolumn=80 " 80 col line

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

" Ignore these files in listings
set wildignore+=**/.git/*,**/.svn/*,**/bower_components/*,**/node_modules/*,dist/*,build/*

nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>$ <Cmd>BufferLineGoToBuffer -1<CR>

nnoremap <silent><leader>[ :BufferLineCycleNext<CR>
nnoremap <silent><leader>] :BufferLineCyclePrev<CR>

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" FZF
set rtp+=/usr/local/opt/fzf

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99
