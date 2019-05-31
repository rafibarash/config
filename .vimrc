"General
set linebreak                       "Break lines at word (req Wrap-lines) 
set textwidth=80                    "Line wrap at 80 cols
set backspace=indent,eol,start      "Backspace behavior

syntax on			    "Enable syntax highlighting
set number                          "Show line numbers
set showmatch                       "Highlight matching brace
set ruler			    "Show row and col numbers
set showmode			    "Shows current mode (ex: VISUAL)

set hlsearch                        "Highlight all search results
set smartcase                       "Enable smart-case search
set ignorecase                      "Search case-insensitive

set autoindent                      "Auto-indent new lines
set shiftwidth=4                    "Number of auto-indent spaces
set smartindent                     "Enable smart-indent
set smarttab                        "Enable smart-tabs
set softtabstop=4                   "Number of spaces per tab

"Mappings
inoremap jk <Esc>noremap jk <Esc>

"Advanced
if has ('mac')
    set clipboard=unnamed	    "Integrate mac clipboard with vim
endif

"Plugins
if empty(glob('~/.vim/autoload/plug.vim'))  "Installs vim-plug (plugin mangr)
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

