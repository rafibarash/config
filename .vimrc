"General
set linebreak                       "Break lines at word (req Wrap-lines)
set textwidth=80                    "Line wrap at 80 cols
set backspace=indent,eol,start      "Backspace behavior

syntax on			    "Enable syntax highlighting
colorscheme minimalist		    "Vim editor theme
set number                          "Show line numbers
set showmatch                       "Highlight matching brace
set ruler			    "Show row and col numbers
set showmode			    "Shows current mode (ex: VISUAL)

set hlsearch                        "Highlight all search results
set smartcase                       "Enable smart-case search
set ignorecase                      "Search case-insensitive

set autoindent                      "Auto-indent new lines
set shiftwidth=2                    "Number of auto-indent spaces
set smartindent                     "Enable smart-indent
set smarttab                        "Enable smart-tabs
set softtabstop=2                   "Number of spaces per tab

"-- AUTOCOMPLETION --
filetype plugin on
set omnifunc=syntaxcomplete#Complete


"-- MAPPINGS --

"Maps jk to <Esc>
inoremap jk <Esc>

"Advanced
if has ('mac')
    set clipboard=unnamed	    "Integrate mac clipboard with vim
endif


"-- PLUGINS --

"Ale fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

"Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"Show errors in statusline with airline
let g:airline#extensions#ale#enabled = 1

"NeoVim Format on save
autocmd BufWritePre *.js Neoformat

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
Plug 'dikiaap/minimalist'		"Editor theme
Plug 'w0rp/ale'				"Linting tool
Plug 'pangloss/vim-javascript'		"JS syntax highlighting
Plug 'mxw/vim-jsx'			"JSX syntax highlighting
Plug 'sbdchd/neoformat'

"List ends here. Plugins become visible to Vim after this call.
call plug#end()
