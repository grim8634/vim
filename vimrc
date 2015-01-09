set nocompatible    "disable vi mode, has to come first

call pathogen#infect()
call pathogen#helptags()

"enable many things like 4 space tabs etc
set ss=4 ts=4 sts=4 sw=4 expandtab

"<F2>close
map <F2> :q<Enter>

map <F6> :set number!<CR>
set pastetoggle=<F3>
nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>:nohl<CR>

syntax on
filetype plugin on

au BufWinEnter * let w:m3=matchadd('ErrorMsg', 'HACK')

:map <F4> :if exists("g:syntax_on") <Bar>
        \ syntax off <Bar>
        \ set spell spelllang=en_gb <Bar>
    \ else <Bar>
        \ syntax enable <Bar>
        \ set nospell <Bar>
    \ endif <CR>

filetype indent on

set guioptions-=T   "no toolbar
set guioptions-=r   "no scroll bar
set title           "show file in term title

set smartindent     "better indenting
set autoindent
"set copyindent

set showmatch       "parenthisis
set cmdheight=2

set ignorecase      "case insensitve search
set smartcase       "unless there's uppercase
set hlsearch        "highlight search
set incsearch       "highlight as you type

set number          "line numbers

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set updatetime=250  "this is for the vl-hl plugin
let g:hlvarhl="ctermbg=blue ctermfg=yellow guifg=#ffff00 guibg=#0000ff gui=bold"

let g:sql_type_default = 'mysql'

set background=dark
set t_Co=256
let g:solarized_hitrail = 1
"let g:solarized_termcolors=256

autocmd ColorScheme * highlight Tab gui=underline guifg=blue ctermbg=blue
hi Tab gui=underline guifg=blue ctermbg=blue
match Tab /\t/

colorscheme solarized
