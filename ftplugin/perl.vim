let b:did_ftplugin = 1

setlocal colorcolumn=81
setlocal foldenable
setlocal foldmethod=syntax
syn region POD start=/^=head[123]/ end=/^=cut/ fold

hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
