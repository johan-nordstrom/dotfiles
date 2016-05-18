execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme zenburn
set laststatus=2 " status line always visible
let g:airline_powerline_fonts = 1

" Use the system clipboard
set clipboard+=unnamed

" Switch syntax highlighting on
syntax on

set t_Co=256              " enable 256-color mode.

" Don't worry about trying to support old school Vi features
set nocompatible


set autoindent
" Disable Mouse (this is something that only recently affected me within NeoVim)
" Seemed using the mouse to select some text would make NeoVim jump into VISUAL mode?
set mouse=

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Command history
set history=100

" Always show cursor
set ruler

" Show incomplete commands
set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search
set smartcase

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
" If you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
set hidden

" Turn word wrap off
set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=4

set softtabstop=4         " unify

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Turn on line numbers
set number

" Highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
set statusline=%f\ %m\ %=L:%l/%L\ C:%c\ (%p%%)

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line
set cursorline

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" Redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Set built-in file system explorer to use layout similar to the NERDTree plugin
" P opens file in previously focused window
" o opens file in new horizontal split window
" v opens file in new vertical split window
" t opens file in new tab split window
let g:netrw_liststyle=3


"set background=dark

" vim-go
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" NeoVim shortcut for quick terminal exit
:silent! tnoremap <Esc> <C-\><C-n>

fun! StripTrailingWhitespace()
  " Don't strip on these filetypes
  if &ft =~ 'markdown'
    return
  endif
  %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0 " http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd FileType sh,cucumber,ruby,yaml,zsh,vim setlocal shiftwidth=2 tabstop=2 expandtab

" Specify syntax highlighting for specific files
autocmd Bufread,BufNewFile *.spv set filetype=php
autocmd Bufread,BufNewFile *.md set filetype=markdown " Vim interprets .md as 'modula2' otherwise, see :set filetype?

" Rainbow parenthesis always on!
autocmd VimEnter * if exists(':RainbowParenthesesToggle') | exe ":RainbowParenthesesToggleAll" | endif

" Change colourscheme when diffing
fun! SetDiffColours()
  highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
  highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
  highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
  highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColours()

" Map § key to :nohlsearch (or :noh for short)
map § :nohlsearch<CR>
