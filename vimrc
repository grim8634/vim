set nocompatible    "disable vi mode, has to come first

source ~/.vim/plugins/load-plugins.vim

map <F1> :NERDTreeToggle<Enter>

map <F6> :set number!<CR>
map <F7> :set invnumber<CR> :NERDTreeToggle<CR>
set pastetoggle=<F3>

nnoremap <silent> <F11> :ToggleBufExplorer<CR>
nnoremap <silent> <F12> :b#<CR>

syntax on
filetype plugin on

au BufWinEnter * let w:m3=matchadd('ErrorMsg', 'HACK')

:map <F4> :setlocal spell! spelllang=en_gb<CR>

filetype indent on

set encoding=utf-8

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set expandtab       "spaces instead of tab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set hidden          "hide buffers instead of closing on switch

set title           "show file in term title

set autoindent     "better indenting

set showmatch       "parenthisis
set cmdheight=2

set ignorecase      "case insensitve search
set smartcase       "unless there's uppercase
set hlsearch        "highlight search
set incsearch       "highlight as you type

set number          "line numbers

set history=1000    " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo

set updatetime=250  "this is for the vl-hl plugin
set backspace=2     "normal backspace

let g:hlvarhl="ctermbg=blue ctermfg=yellow guifg=#ffff00 guibg=#0000ff gui=bold"

let g:sql_type_default = 'postgresql'

autocmd ColorScheme * highlight Tab gui=underline guifg=blue ctermbg=blue
hi Tab gui=underline guifg=blue ctermbg=blue
match Tab /\t/

let g:vim_json_syntax_conceal = 0

let g:bufExplorerSortBy='number'

set background=dark
set t_Co=256
let g:solarized_hitrail=1
colorscheme solarized
