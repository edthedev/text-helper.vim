" ---------------
"
"		Text Helper Plugin	
"
" ---------------

" By default, all text is ReStructuredText
au BufNewFile,BufRead *.txt set filetype=rest
" Use ReStructuredText highlighting for all text files.
au FileType text set syntax=rest

" =======================
" ReStructuredText Files
" =======================
" RST is the default assumption for this plugin.
" Note that some RST commands, such as Scratch,
"  are prefectly nice for other file types too.

map <Leader>d :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst date<Cr><Cr>
map <Leader>i :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst img<Cr><Cr>
map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst h1<Cr>2j
map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst h2<Cr>2j
map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst h3<Cr>2j
map <Leader>s :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst scratch<Cr><Cr>
" 2j jumps down a couple lines after, since the text expands a bit.

" =======================
" Confluence Wiki Markup
" =======================
" # vi: syntax=confluence
autocmd FileType confluence map <Leader>d :.!$HOME/.vim/bundle/vim-rst/bin/text-helper confluence date<Cr><Cr>
autocmd FileType confluence map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper confluence h1<Cr>2j
autocmd FileType confluence map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper confluence h2<Cr>2j
autocmd FileType confluence map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper confluence h3<Cr>2j
autocmd FileType confluence map <Leader>i :.!$HOME/.vim/bundle/vim-rst/bin/text-helper confluence img<Cr>2j

" ==========
" Vim Files
" ==========

"  .vim file headers. Should pickup .vimrc automatically too.
" -------------------------------------------------------
autocmd FileType vim map <Leader>d :.!$HOME/.vim/bundle/vim-rst/bin/text-helper vim date<Cr><Cr>
autocmd FileType vim map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper vim h1<Cr>2j
autocmd FileType vim map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper vim h2<Cr>2j
autocmd FileType vim map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper vim h3<Cr>2j
autocmd FileType vim map <Leader>s :.!$HOME/.vim/bundle/vim-rst/bin/text-helper vim scratch<Cr><Cr>

" ======
" HTML 
" ======
autocmd FileType html map <Leader>d :.!$HOME/.vim/bundle/vim-rst/bin/text-helper html date<Cr><Cr>
autocmd FileType html map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper html h1<Cr>2j
autocmd FileType html map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper html h2<Cr>2j
autocmd FileType html map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper html h3<Cr>2j

" =========
" Markdown
" =========
"
" # vi: syntax=markdown
autocmd FileType *.mkd map <Leader>d :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown date<Cr><Cr>
autocmd FileType *.mkd map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h1<Cr>2j
autocmd FileType *.mkd map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h2<Cr>2j
autocmd FileType *.mkd map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h3<Cr><Cr>
autocmd FileType *.mkd map <Leader>h4 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h4<Cr><Cr>
autocmd FileType *.mkd map <Leader>h5 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h5<Cr><Cr>
autocmd FileType *.mkd map <Leader>i :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown img<Cr><Cr>

" Convert document from RST to Confluence Wiki format.
" Uses https://github.com/kenichiro22/rst2confluence
" TODO: Copy this script into this plugin...
" map <leader>tc :!python2 $HOME/projects/rst2confluence/rst2confluence.py % > /tmp/%:t:r.wiki<Cr>:badd /tmp/%:t:r.wiki<Cr>:bn<Cr>

" TODO: Add some useful abbreviations? 
" Abbreviations
" ab pm Project Manager
" ab lead Lead Developer
" ab dev Developer
