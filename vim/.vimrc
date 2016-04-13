"
" File		: .vimrc
" Author	: Guillaume Watteeux
" Source	: https://github.com/guillaumewatteeux/dotfiles
" Licence	: WTFPL
"

let $VIMHOME = glob('~/.vim')		" Main Vim configuration directory
let $VIMTEMP = glob('~/vim/tmp')	" One temp directory to rule them all

" don’t create temp files everywhere, but just in $VIMTEMP if it exists
if !empty($VIMTEMP)             	" check that the directory exists
  set backupdir=$VIMTEMP        	" backup files
  set directory=$VIMTEMP        	" swap files
  set undodir  =$VIMTEMP        	" undo files
  set undofile                  	" persistent undo
endif

" modern behavior
set nocompatible                	" required for a multi-level undo/redo stack
set mouse=a                     	" enable mouse selection

" >>> Plugins
" =======================================================

filetype off				" required!
if filereadable($VIMHOME.'/plugins.vim')
	source $VIMHOME/plugins.vim
endif
filetype plugin indent on


" >>> User interfaces
" =======================================================

set hidden				" Don't ask before closing a window
set showmode				" display current mode blow the status line
set showtabline=2			" how tabbar even for a single buffer
set laststatus=2      			" always show the status line
set ruler             			" display line/col position in the status line
set cursorline        			" highlight current line
set splitbelow        			" consistency with most tiling WMs (wmii, i3…)
set splitright        			" consistency with most tiling WMs (wmii, i3…)
set virtualedit=block 			" easier rectangular selections

" line numbers
set number		" show absolute line numbers (:set nu)
"set relativenumber	" show relative line numbers (:set rnu)
set scrolloff=5		" number of screen lines to show around the cursor
set numberwidth=6	" minimal number width (not working?)

" show tabs / nbsp / trailing spaces
set list listchars=nbsp:¤,tab:··,trail:¤,extends:▶,precedes:◀

" minimal interface when running in GUI mode
set guioptions=
set guifont=Inconsolata\ 11

" syntax highlighting
syntax enable
set synmaxcol=200	" don’t try to highlight super long lines
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2


" >>> General Settings
" =======================================================
set encoding=utf-8

" this should be the default but some distros disable modelines by default…
set modeline
set modelines=5

set showmatch " when inserting a bracket, briefly jump to its match
set textwidth=80      	" line length above which to break a line
set colorcolumn=+0    	" highlight the textwidth limit
set nowrap
"set nowrapscan
set linebreak


" two-space indentation except for Python and makefiles
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set cindent
set smartindent
set shiftround
"set autoindent
"set foldmethod=indent
augroup indents
  autocmd FileType ?akefile set noexpandtab
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
  autocmd FileType html,xhtml,javascript,css,c,cpp,python setlocal foldmethod=indent
augroup END



