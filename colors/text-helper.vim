" =======================================================
"  Allow files to specify what their highlight mode is.
" =======================================================
set modeline
" i.e.:
" # vi: syntax=apache

" ===========================
" Recognize more file types.
" ===========================

" Display .conf as INI                   
au BufReadPost *.conf set filetype=dosini

" Markdown
au BufReadPost *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd

" Salt SLS files are YAML
" au BufRead *.sls set syntax=yaml
" au BufRead *.sls setlocal expandtab
" au BufRead *.sls setlocal tabstop=2
" au BufRead *.sls setlocal shiftwidth=2
" au BufRead *.sls setlocal textwidth=0
" Vagrant configs are YAML
au BufRead Vagrantfile set syntax=yaml
au BufRead Vagrantfile set tabstop=2
au BufRead Vagrantfile set shiftwidth=2
au BufRead Vagrantfile set expandtab
" YML files are YAML
au BufRead *.yml set syntax=yaml
au BufRead *.yml set tabstop=2
au BufRead *.yml set shiftwidth=2
au BufRead *.yml set expandtab


