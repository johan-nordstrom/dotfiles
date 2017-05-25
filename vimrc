set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'othree/html5.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'myusuf3/numbers.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'burnettk/vim-angular'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jacoborus/tender.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jwalton512/vim-blade'
Plugin 'noahfrederick/vim-laravel'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
Plugin 'sickill/vim-monokai'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dunckr/vim-monokai-soda'
Plugin 'fholgado/minibufexpl.vim'
call vundle#end()

let g:gruvbox_italic=1
filetype plugin indent on
set background=dark
colors zenburn
set nu " linenumbers
set nocompatible   
set expandtab
set sw=4 
set ts=4
set sts=4
set t_Co=256
syntax on

"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


nnoremap K  :tabnext<CR>
nnoremap J  :tabprev<CR>
nnoremap H  :bnext<CR>
nnoremap L  :bprev<CR>

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:airline_powerline_fonts = 1 
let g:airline_theme = 'zenburn'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = 'default'
let g:neocomplete#enable_at_startup = 1
