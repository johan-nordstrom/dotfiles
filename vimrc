if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Valloric/MatchTagAlways')
call dein#add('sheerun/vim-polyglot')
call dein#add('w0rp/ale')
call dein#add('erikw/tmux-powerline')
call dein#add('Valloric/YouCompleteMe')
call dein#add('othree/html5.vim')
call dein#add('ryym/vim-riot')
call dein#add('gmarik/Vundle.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('pangloss/vim-javascript')
call dein#add('wincent/command-t')
call dein#add('kien/ctrlp.vim')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('digitaltoad/vim-jade')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('jacoborus/tender.vim')
call dein#add('nanotech/jellybeans.vim')
call dein#add('morhetz/gruvbox')
call dein#add('noahfrederick/vim-laravel')
call dein#add('leafgarland/typescript-vim')
call dein#add('sickill/vim-monokai')
call dein#add('scrooloose/nerdcommenter')
call dein#add('dunckr/vim-monokai-soda')
call dein#add('fholgado/minibufexpl.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('edkolev/tmuxline.vim')
call dein#add('maksimr/vim-jsbeautify') 

call dein#end()
call dein#save_state()

set nocompatible
"filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
""Plugin 'xolox/vim-session'
"call vundle#end()

syntax enable
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

set tabstop=2           " a n-space tab width
set shiftwidth=2       " allows the use of < and > for VISUAL indenting
set softtabstop=2       " counts n spaces when DELETE or BCKSPCE is used
set nobackup            " dont keep backups after close
set writebackup         " do keep one while working
set backupdir=$HOME/.vim/backup/,/tmp
set backupcopy=yes
set directory=$HOME/.vim/backup/,/tmp
set noswapfile          " disable swapfiles
" Change leader
let mapleader=','

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
let g:airline_theme='base16_default'

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
let g:Powerline_symbols = 'unicode'
" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1
" Enable completion where available.
let g:ale_completion_enabled = 1
