" ---------------
"
"		Text Helper Plugin	
"
" ---------------

" Recognize some file types...
au BufNewFile,BufRead *.txt set filetype=txt
" Use ReStructuredText highlighting for all text files.
au FileType text set syntax=rest

" ================
" Shared Commands
" ================


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
autocmd FileType markdown map <Leader>d :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown date<Cr><Cr>
autocmd FileType markdown map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h1<Cr>2j
autocmd FileType markdown map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h2<Cr>2j
autocmd FileType markdown map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown h3<Cr><Cr>
autocmd FileType markdown map <Leader>i :.!$HOME/.vim/bundle/vim-rst/bin/text-helper markdown img<Cr><Cr>

" TODO: Add some useful abbreviations? 
" Abbreviations
" ab pm Project Manager
" ab lead Lead Developer
" ab dev Developer
"
"
"    Confluence headers
" -------------------------------------------------------
"  TODO: Convert confluence stuff into text-helper instead of separate
"  scripts.
au FileType *.mkd :map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 1<Cr>2j
au BufEnter *.mkd :map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 2<Cr>2j
au BufEnter *.mkd :map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 3<Cr>2j
au BufEnter *.mkd :map <Leader>h4 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 4<Cr>2j
au BufEnter *.mkd :map <Leader>h5 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 5<Cr>2j


" TODO: Move the other helper scripts into their own separate plugins
" =======================================================
" TODO Management 
" =======================================================
"  Probably should be it's own separate plugin...
" Done / Todo
map <Leader>od :.!text-task-toggle<Cr>$ 
map <Leader>d :.!text-task-toggle<Cr>$ 
map <Leader>ol :!text-list-todos %<Cr>

" Sort file by completed vs TODO lines
" :map <Leader>os :%!done_to_top<Cr>

" List organizer progress of TODO / DONE / WAITING
:map <Leader>op :!text-task-progress %<Cr>
" Waiting 
:map <Leader>ow :.!text-task-toggle -w<Cr>$ 


" Convert document from RST to Confluence Wiki format.
" Uses https://github.com/kenichiro22/rst2confluence
map <leader>tc :!python2 $HOME/projects/rst2confluence/rst2confluence.py % > /tmp/%:t:r.wiki<Cr>:badd /tmp/%:t:r.wiki<Cr>:bn<Cr>
