" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" ================================= AirLine
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" =========================================

" ================================= Syntastic
" Syntastic
NeoBundle 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" =========================================

" ================================= vim-bufferline
NeoBundle 'bling/vim-bufferline'
" =========================================


" ================================= Colors Solarized
NeoBundle 'altercation/vim-colors-solarized'

let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
" =========================================

" ================================= Colors Badwolf
NeoBundle 'sjl/badwolf'
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" =========================================

" ================================= AutoClose
" Automatictly closed bracket...
NeoBundle 'AutoClose'
" =========================================

" ================================= Ansible-YAML
" Ansible
NeoBundle 'chase/vim-ansible-yaml'
let g:ansible_options = {'ignore_blank_lines': 0}
" =========================================

" ================================= NerdTree
NeoBundle 'scrooloose/nerdtree'
" Autoload NerdTree
"autocmd VimEnter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:sdt_in") | NERDTree | endif
"autocmd VimEnter * wincmd p
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
"let b:NERDTree.isTabTree()) | q | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree"
" =========================================

" ================================= Vim-fugitive
" Git wrapper
NeoBundle 'tpope/vim-fugitive'
" =========================================


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

