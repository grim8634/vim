"disable vi compatibiliy mode
set nocompatible

"enable many things like 4 space tabs etc
set ss=4 ts=4 sts=4 sw=4 expandtab

"<F2>close
map <F2> :bd<Enter>
set pastetoggle=<F3>
nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>:nohl<CR>

syntax on
set number
filetype plugin on

"makes vim do proper indenting
set smartindent autoindent

"makes vim highlight search terms
set hlsearch

colorscheme desert

au BufWinEnter * let w:m2=matchadd('DiffDelete', '\s\+$', -1)
au BufWinEnter * let w:m3=matchadd('ErrorMsg', 'HACK')

set guioptions-=T
set guioptions-=r
set title

:map <F4> :setlocal spell! spelllang=en_gb<CR>
hi SpellLocal cterm=NONE ctermbg=yellow
