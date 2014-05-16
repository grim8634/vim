let b:did_ftplugin = 1

setlocal foldenable
setlocal foldmethod=syntax
let perl_include_pod = 1

syn region POD start=/^=head[123]/ end=/^=cut/ fold

hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3

syntax match Tab /\t/
hi Tab gui=underline guifg=blue ctermbg=blue
