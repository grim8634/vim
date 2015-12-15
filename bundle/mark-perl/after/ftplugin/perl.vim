setlocal foldenable
setlocal foldmethod=syntax
let perl_include_pod = 1

syn region POD start=/^=head[123]/ end=/^=cut/ fold

map! <F5> use Data::Dumper::Concise;<CR>warn Dumper( 
setlocal equalprg=perltidy
set complete-=i "don't search included files when autocompleting (too slow, too long)
