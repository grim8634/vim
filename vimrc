"disable vi compatibiliy mode
set nocompatible

"enable many things like 4 space tabs etc
set ss=4 ts=4 sts=4 sw=4 expandtab

"<F2>close
map <F2> :bd<Enter>
noremap <silent> <F8> :TlistToggle<CR>

syntax on
set number

"makes vim do proper indenting
set smartindent autoindent

"makes vim highlight search terms
set hlsearch

"set t_Co=256
colorscheme desert
hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3

au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)
au BufWinEnter * let w:m2=matchadd('DiffDelete', '\s\+$', -1)
au BufWinEnter * let w:m3=matchadd('ErrorMsg', 'HACK')
"au BufWinEnter * let w:m4=matchadd('Search', '\%<81v.\%>77v', -1)
au BufNewFile,BufRead *.t set filetype=perl

set guioptions-=T
set guioptions-=r
set title
