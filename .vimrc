"-- GENERAL --
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

"Maps <C-F> to format python code with yapf
map <C-F> :call yapf#YAPF()<cr>

"Advanced
if has ('mac')
    set clipboard=unnamed	    "Integrate mac clipboard with vim
endif


"-- PLUGINS --

"Installs plugin manager Vim-Plug (https://github.com/junegunn/vim-plug)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

"Vim/tmux enhancement
Plug 'vim-airline/vim-airline'		"Enhanced vim status line
Plug 'dikiaap/minimalist'		"Editor theme
Plug 'christoomey/vim-tmux-navigator'	"Makes tmux work nicer with vim

"Language support
"Plug 'Valloric/YouCompleteMe'		"Autocomplete - git cloned manually
Plug 'pangloss/vim-javascript'		"JS syntax highlighting
Plug 'mxw/vim-jsx'			"JSX syntax highlighting
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }    "Golang support

"Formatter plugins
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }	"Python
Plug 'w0rp/ale'			"Multi-language formatter/linter

"List ends here. Plugins become visible to Vim after this call.
call plug#end()


"-- PLUGIN CONFIGS --

" YCM autocomplete
let g:ycm_autoclose_preview_window_after_insertion = 1

" Ale fixing/linting
" let g:ale_linters_explicit = 1	    "only lint when explicitly configured
let g:ale_fix_on_save = 1	    "format on save
" Fix files with prettier, and then ESLint.
let g:ale_fixers = ['prettier', 'eslint']
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'javascript.tsx': ['prettier'],
" \   'typescript': ['prettier'],
" \   'typescript.tsx': ['prettier'],
" \   'css': ['prettier'],
" \}
