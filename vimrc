set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'erikw/tmux-powerline'
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
Plugin 'morhetz/gruvbox'
Plugin 'jwalton512/vim-blade'
Plugin 'noahfrederick/vim-laravel'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
Plugin 'sickill/vim-monokai'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dunckr/vim-monokai-soda'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
call vundle#end()

filetype plugin indent on
set background=dark
colors gruvbox

set nu " linenumbers
set nocompatible   
set expandtab
set t_Co=256
set shell=/bin/zsh      " set default shell
set nofoldenable        " dont autofold
set foldmethod=syntax
set foldlevel=1
set autoindent
set foldnestmax=10
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
let g:airline_theme = 'gruvbox'

"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tmuxline#enabled = 1
"let g:tmuxline_preset = 'default'
let g:neocomplete#enable_at_startup = 1
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_italic=1
" Airline
"automd VimEnter * call AirlineInit()
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
