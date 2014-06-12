set nocompatible    "disable vi mode, has to come first

"enable many things like 4 space tabs etc
set ss=4 ts=4 sts=4 sw=4 expandtab

"<F2>close
map <F2> :bd<Enter>
set pastetoggle=<F3>
nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>:nohl<CR>

syntax on
filetype plugin on

colorscheme blackdust

au BufWinEnter * let w:m2=matchadd('DiffDelete', '\s\+$', -1)
au BufWinEnter * let w:m3=matchadd('ErrorMsg', 'HACK')

:map <F4> :setlocal spell! spelllang=en_gb<CR>
hi SpellLocal cterm=NONE ctermbg=yellow

filetype indent on

set guioptions-=T   "no toolbar
set guioptions-=r   "no scroll bar
set title           "show file in term title

set smartindent     "better indenting
set autoindent
"set copyindent

set showmatch       "parenthisis

set ignorecase      "case insensitve search
set smartcase       "unless there's uppercase
set hlsearch        "highlight search
set incsearch       "highlight as you type

set number          "line numbers

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set updatetime=250  "this is for the vl-hl plugin
let g:hlvarhl="ctermbg=blue ctermfg=yellow guifg=#ffff00 guibg=#0000ff gui=bold"

if has('gui_running')
    set guifont=Monospace\ 10
endif

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
