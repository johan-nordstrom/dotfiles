if &compatible
set nocompatible
endif
set runtimepath +=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')
call dein#add('Shougo/dein.vim')
call dein#add('gorodinskiy/vim-coloresque')
call dein#add('Valloric/MatchTagAlways')
call dein#add('sheerun/vim-polyglot')

" Tmux
"call dein#add('erikw/tmux-powerline')
call dein#add('Raimondi/delimitMate')

call dein#add('Valloric/YouCompleteMe',  { 'do': 'python2 install.py' })

" Syntax
call dein#add('othree/html5.vim')

call dein#add('nicodebo/base16-fzf')

call dein#add('junegunn/fzf',{ 'dir': '~/.fzf', 'do': './install --all' })
call dein#add('junegunn/fzf.vim')
call dein#add('Shougo/neomru.vim')

call dein#add('scrooloose/nerdtree')
call dein#add('pangloss/vim-javascript')
call dein#add('kien/ctrlp.vim')
call dein#add('shinchu/lightline-gruvbox.vim')
"call dein#add('vim-airline/vim-airline')
"call dein#add('vim-airline/vim-airline-themes')
call dein#add('leafgarland/typescript-vim')
call dein#add('scrooloose/nerdcommenter')
"call dein#add('fholgado/minibufexpl.vim')
"call dein# add('bling/vim-bufferline')
"call dein#add('ap/vim-buftabline')
call dein#add('tpope/vim-fugitive')
call dein#add('edkolev/tmuxline.vim')
call dein#add('maksimr/vim-jsbeautify')
call dein#add('vim-syntastic/syntastic')
call dein#add('mattn/emmet-vim')
call dein#add('docunext/closetag.vim')
call dein#add('gregsexton/matchtag')
call dein#add('tpope/vim-fugitive')

call dein#add('itchyny/lightline.vim')
call dein#add('mgee/lightline-bufferline')

" leader sb
"  call dein#add(' )
call dein#add('vim-scripts/HTML-AutoCloseTag')
call dein#add('gko/vim-coloresque')
call dein#add('/hail2u/vim-css3-syntax')
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

syntax enable
filetype plugin indent on
set background = dark
colors gruvbox

set nu " linenumbers
set t_Co = 256
set shell = /bin/zsh
" set default shell

set autoindent

set expandtab
set tabstop = 2 " a n-space tab width
set shiftwidth = 2 " allows the use of < and > for VISUAL indenting
set softtabstop = 2 " counts n spaces when DELETE or BCKSPCE is used
set nobackup " dont keep backups after close
set writebackup " do keep one while working
"set backupdir = $HOME/.vim/backup/,/tmp
"set backupcopy = yes
"set directory = $HOME/.vim/backup/,/tmp
set noswapfile " disable swapfiles


" KEYBINDINGS
let mapleader = ','
" Change leader
nnoremap K: tabnext < CR >
    nnoremap J: tabprev < CR >
    nnoremap H: bnext < CR >
    nnoremap L: bprev < CR >
    nnoremap < C - N >: bnext < CR >
    nnoremap < C - P >: bprev < CR >
    nmap < silent > < A - Up >: wincmd k < CR >
    nmap < silent > < A - Down >: wincmd j < CR >
    nmap < silent > < A - Left >: wincmd h < CR >
    nmap < silent > < A - Right >: wincmd l < CR >
    map < S - n >: NERDTreeToggle < CR >

    "let g:airline_powerline_fonts = 1 
"let g: airline_theme = 'gruvbox'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tmuxline#enabled = 0

let g: gruvbox_contrast_dark = 'hard'
let g: gruvbox_contrast_light = 'hard'
let g: gruvbox_bold = 1
let g: gruvbox_italic = 1
let g: gruvbox_italicize_comments = 1

    " CTRL-P
let g: ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" JSBEAUTIFY CONFIG 
map < c - f >: call JsBeautify() < cr >
    " or
autocmd FileType javascript noremap < buffer > < c - f >: call JsBeautify() < cr >
    " for json
autocmd FileType json noremap < buffer > < c - f >: call JsonBeautify() < cr >
    " for jsx
autocmd FileType js noremap < buffer > < c - f >: call JsBeautify() < cr >
    " for html
autocmd FileType html noremap < buffer > < c - f >: call HtmlBeautify() < cr >
    " for css or scss
autocmd FileType css noremap < buffer > < c - f >: call CSSBeautify() < cr >
    " for css or scss
autocmd FileType scss noremap < buffer > < c - f >: call CSSBeautify() < cr >
    " for css or scss
autocmd FileType sass noremap < buffer > < c - f >: call CSSBeautify() < cr >
    "let g:Powerline_symbols = 'unicode'

"au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim
"set noignorecase 

" SYNTASTIC CONFIG 
"set statusline += % #warningmsg#
"set statusline += % {
"    SyntasticStatuslineFlag()
"}
"set statusline += % *

    let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


  let g:fzf_nvim_statusline = 0 " disable statusline overwriting

  nnoremap <silent> <leader><space> :Files<CR>
  nnoremap <silent> <leader>a :Buffers<CR>
  nnoremap <silent> <leader>A :Windows<CR>
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>O :Tags<CR>
  nnoremap <silent> <leader>? :History<CR>
  nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
  nnoremap <silent> <leader>. :AgIn 

  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>

  imap <C-x><C-f> <plug>(fzf-complete-file-ag)
  imap <C-x><C-l> <plug>(fzf-complete-line)

"let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
"let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
"let g:lightline.component_type   = {'buffers': 'tabsel'}
  let g:neomru#file_mru_path = $HOME . '/.nvim/cache/neomru/file'
  let g:neomru#directory_mru_path = $HOME . '/.nvim/cache/neomru/directory'
