set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'erikw/tmux-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Plugin 'ryym/vim-riot'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jacoborus/tender.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
Plugin 'noahfrederick/vim-laravel'
Plugin 'leafgarland/typescript-vim'
Plugin 'sickill/vim-monokai'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dunckr/vim-monokai-soda'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'xolox/vim-session'
call vundle#end()

filetype plugin indent on
set background=dark
colors gruvbox

set nu " linenumbers
set nocompatible   
set expandtab
set t_Co=256
set shell=/bin/zsh      " set default shell

set foldmethod=marker
set foldlevel=1
set autoindent
set foldnestmax=10
set termguicolors

set tabstop=4           " a n-space tab width
set shiftwidth=4        " allows the use of < and > for VISUAL indenting
set softtabstop=4       " counts n spaces when DELETE or BCKSPCE is used
set nobackup            " dont keep backups after close
set writebackup         " do keep one while working
set backupdir=$HOME/.vim/backup/,/tmp
set backupcopy=yes
set directory=$HOME/.vim/backup/,/tmp
set noswapfile          " disable swapfiles
" Change leader
let mapleader=','
syntax on

map <C-n> :NERDTreeToggle<CR>
nnoremap K  :tabnext<CR>
nnoremap J  :tabprev<CR>
nnoremap H  :bnext<CR>
nnoremap L  :bprev<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

let g:airline_powerline_fonts = 1 
let g:airline_theme='gruvbox'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1

let g:neocomplete#enable_at_startup = 1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
