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
call dein#add('airblade/vim-rooter')

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
call dein#add('junegunn/fzf',{ 'path': '~/.fzf', 'build': './install --all' })
call dein#add('junegunn/fzf.vim')
call dein#add('nicodebo/base16-fzf')

"CtrlP
"call dein#add('kien/ctrlp.vim')
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

" UI Config
set autoindent
set expandtab
set tabstop=2 " a n-space tab width
set shiftwidth=2 " allows the use of < and > for VISUAL indenting
set softtabstop=2 " counts n spaces when DELETE or BCKSPCE is used
set nobackup " dont keep backups after close
set writebackup " do keep one while working
set backupdir=$HOME/.vim/backup/,/tmp
set backupcopy=yes
set directory=$HOME/.vim/backup/,/tmp
set noswapfile " disable swapfiles
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
"set foldenable
"set foldlevelstart=10
"set foldnestmax=10
"set foldmethod=indent   " fold based on indent level
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" save session
nnoremap <leader>s :mksession<CR><Paste>
" open ag.vim
nnoremap <leader>a :Ag
" os x
set backspace=indent,eol,start
" Rendering
 set ttyfast
"
" " Status bar
set laststatus=2
"

" KEYBINDINGS
let mapleader=',' " Change leader
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
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
" Disable arrow movement, resize splits instead.
let g:elite_mode=1

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

"nnoremap <leader><space>: Files<CR>
"" Lightline


let g:neomru#file_mru_path = $HOME.'/.nvim/cache/neomru/file'
let g:neomru#directory_mru_path = $HOME.'/.nvim/cache/neomru/directory'
let delimitMate_expand_cr=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <C-P> :Files<CR>
nnoremap <C-F> :Ag 
"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
"nnoremap <C-F> :Find<CR>
let g:rooter_patterns = ['Rakefile', '.git/', 'bower.json']
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }
" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

