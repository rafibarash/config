"UI
set showmode
set backspace=indent,eol,start
syntax on 
set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set cursorline
filetype indent plugin on
set wildmenu
set lazyredraw
set showmatch
set autoindent
"colorscheme solarized

"Search
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

"Folding
set foldenable
set foldlevelstart=10
set foldnestmax=90
nnoremap <space> za
set foldmethod=indent

"Movement
nnoremap j gj
nnoremap k gk
inoremap jk <Esc>
