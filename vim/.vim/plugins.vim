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
NeoBundle 'bling/vim-airline'
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

" ================================= Colors Solarized
NeoBundle 'altercation/vim-colors-solarized'

let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
" =========================================

" ================================= AutoClose
" Automatictly closed bracket...
NeoBundle 'AutoClose'
" =========================================

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

