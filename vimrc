let s:dein_path = expand('~/.vim/dein')

if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('$HOME/.vim/dein')
call dein#add('Shougo/dein.vim')

call dein#add('scrooloose/nerdcommenter')
" Find/Search
call dein#add('rking/ag.vim')

call dein#add('gorodinskiy/vim-coloresque')
call dein#add('Valloric/MatchTagAlways')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Raimondi/delimitMate')
call dein#add('Valloric/YouCompleteMe',  { 'build': 'sh install.sh' })


" Airline
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" Syntax
call dein#add('othree/html5.vim')
call dein#add('pangloss/vim-javascript')
call dein#add('leafgarland/typescript-vim')
call dein#add('sheerun/vim-polyglot')
call dein#add('burnettk/vim-angular')

"Fzf
"call dein#add('junegunn/fzf',{ 'path': '~/.fzf', 'build': './install --all' })
"call dein#add('junegunn/fzf.vim', { 'depends': 'fzf'})
"call dein#add('nicodebo/base16-fzf')

"CtrlP
call dein#add('kien/ctrlp.vim')
call dein#add('Shougo/neomru.vim')

call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/nerdcommenter')
call dein#add('tpope/vim-fugitive')
call dein#add('maksimr/vim-jsbeautify')
call dein#add('vim-syntastic/syntastic')
call dein#add('mattn/emmet-vim')
"call dein#add('docunext/closetag.vim')
call dein#add('gregsexton/matchtag')
call dein#add('tpope/vim-fugitive')

call dein#add('itchyny/vim-gitbranch')

" leader sb
"  call dein#add(' )
call dein#add('vim-scripts/HTML-AutoCloseTag')
call dein#add('gko/vim-coloresque')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('michalliu/sourcebeautify.vim')
call dein#add('Yggdroot/indentLine')
call dein#add('jelera/vim-javascript-syntax')

" Color Schemes
call dein#add('sickill/vim-monokai')
call dein#add('nanotech/jellybeans.vim')
call dein#add('morhetz/gruvbox')
call dein#add('dunckr/vim-monokai-soda')

call dein#end()
call dein#save_state()
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
set background=dark
colors gruvbox

set termguicolors
set nu " linenumbers
set t_Co=256
set shell=/bin/zsh
" set default shell

set autoindent

set expandtab
set tabstop=2 " a n-space tab width
set shiftwidth=2 " allows the use of < and > for VISUAL indenting
set softtabstop=2 " counts n spaces when DELETE or BCKSPCE is used
set nobackup " dont keep backups after close
set writebackup " do keep one while working
"set backupdir = $HOME/.vim/backup/,/tmp
"set backupcopy = yes
"set directory = $HOME/.vim/backup/,/tmp
set noswapfile " disable swapfiles


" KEYBINDINGS
let mapleader=',' " Change leader
nnoremap <C-J>: bnext<CR>
nnoremap <C-K>: bprev<CR>
"nnoremap K: tabnext < CR >
"   nnoremap J: tabprev < CR >
"   nnoremap H: bnext < CR >
"   nnoremap L: bprev < CR >
"   nmap < silent > < A - Up >: wincmd k < CR >
"   nmap < silent > < A - Down >: wincmd j < CR >
"   nmap < silent > < A - Left >: wincmd h < CR >
"   nmap < silent > < A - Right >: wincmd l < CR >
"   map < S - n >: NERDTreeToggle < CR >


" Gruvbox
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1

" CTRL-P
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  
let g:ctrlp_custom_ignore= '\v[\/]\.(git|hg|svn)$'
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" JSBEAUTIFY CONFIG 
map <C-F>: call JsBeautify()<CR>
autocmd FileType javascript noremap <buffer><c-f>: call JsBeautify() <cr>
autocmd FileType json noremap <buffer><c-f>: call JsonBeautify() <cr>
autocmd FileType js noremap <buffer><c-f>: call JsBeautify() <cr>
autocmd FileType html noremap <buffer><C-F>: call HtmlBeautify() <CR>
autocmd FileType css noremap <buffer><c-f>: call CSSBeautify() <cr>
autocmd FileType scss noremap <buffer><c-f>: call CSSBeautify() <cr>
autocmd FileType sass noremap <buffer><c-f>: call CSSBeautify() <cr>

" SYNTASTIC CONFIG 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" FZF
"let g:fzf_nvim_statusline=0 " disable statusline overwriting

"nnoremap <leader><space>: Files<CR>
"" Lightline


let g:neomru#file_mru_path = $HOME.'/.nvim/cache/neomru/file'
let g:neomru#directory_mru_path = $HOME.'/.nvim/cache/neomru/directory'
" ESEARCH
"let g:esearch = {
  "\ 'adapter':    'ag',
  "\ 'backend':    'vimproc',
  "\ 'out':        'win',
  "\ 'batch_size': 1000,
  "\ 'use':        ['visual', 'hlsearch', 'last'],
  "\}
"call esearch#map('<leader>ff', 'esearch')
"call esearch#map('<leader>fw', 'esearch-word-under-cursor')
 let delimitMate_expand_cr=1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tmuxline = 1
  let g:airline_powerline_fonts = 1 
  let g:airline_theme='gruvbox'
