set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'docteurklein/php-getter-setter.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'othree/html5.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'myusuf3/numbers.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
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
call vundle#end()

filetype plugin indent on

colors mango
set nu " linenumbers
set nocompatible   
set expandtab
set sw=4 
set ts=4
set sts=4
syntax on

"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


nnoremap K  :tabnext<CR>
nnoremap J  :tabprev<CR>

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
