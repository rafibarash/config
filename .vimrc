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

"Maps jk to <Esc>
inoremap jk <Esc>

"Advanced
if has ('mac')
    set clipboard=unnamed	    "Integrate mac clipboard with vim
endif


"Plugins

"Installs plugin manager Vim-Plug (https://github.com/junegunn/vim-plug)
if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

"Declare the list of plugins.

Plug 'editorconfig/editorconfig-vim'	"Use .editorconfig settings
Plug 'vim-airline/vim-airline'		"Enhanced vim status line

"List ends here. Plugins become visible to Vim after this call.
call plug#end()

