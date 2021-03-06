" ---------------
"
"		Text Helper Plugin	
"
" ---------------

" =======================
" ReStructuredText Files
" =======================
" RST is the default assumption for this plugin.
" Note that some RST commands, such as Scratch,
"  are prefectly nice for other file types too.

autocmd FileType rst map <Leader>b byw:.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst bold --selection=<C-R>"<Cr>
autocmd FileType rst map <Leader>d :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst date<Cr><Cr>
autocmd FileType rst map <Leader>h1 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst h1<Cr>2j
autocmd FileType rst map <Leader>h2 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst h2<Cr>2j
autocmd FileType rst map <Leader>h3 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst h3<Cr>2j
autocmd FileType rst map <Leader>i :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst img<Cr><Cr>
autocmd FileType rst map <Leader>l :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst link<Cr><Cr>
autocmd FileType rst map <Leader>s :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper rst scratch<Cr><Cr>
" 2j jumps down a couple lines after, since the text expands a bit.

" =======================
" Confluence Wiki Markup
" =======================
" # vi: syntax=confluence
autocmd FileType confluence map <Leader>d :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper confluence date<Cr><Cr>
autocmd FileType confluence map <Leader>h1 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper confluence h1<Cr>2j
autocmd FileType confluence map <Leader>h2 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper confluence h2<Cr>2j
autocmd FileType confluence map <Leader>h3 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper confluence h3<Cr>2j
autocmd FileType confluence map <Leader>img :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper confluence img<Cr>2j
autocmd FileType confluence map <Leader>l :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper confluence link<Cr>2j

" ==========
" Vim Files
" ==========

"  .vim file headers. Should pickup .vimrc automatically too.
" -------------------------------------------------------
autocmd FileType vim map <Leader>d :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper vim date<Cr><Cr>
autocmd FileType vim map <Leader>h1 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper vim h1<Cr>2j
autocmd FileType vim map <Leader>h2 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper vim h2<Cr>2j
autocmd FileType vim map <Leader>h3 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper vim h3<Cr>2j
autocmd FileType vim map <Leader>s :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper vim scratch<Cr><Cr>

" ======
" HTML 
" ======
autocmd FileType html map <Leader>b yw:.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html bold --selection=<C-R>"
autocmd FileType html map <Leader>d :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html date<Cr><Cr>
autocmd FileType html map <Leader>h1 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html h1<Cr>2j
autocmd FileType html map <Leader>h2 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html h2<Cr>2j
autocmd FileType html map <Leader>h3 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html h3<Cr>2j
autocmd FileType html map <Leader>img :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html img<Cr><Cr>
autocmd FileType html map <Leader>l :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper html link<Cr><Cr>

" =========
" Markdown
" =========
"
" # vi: syntax=markdown
autocmd FileType markdown map <Leader>d :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown date<Cr><Cr>
autocmd FileType markdown map <Leader>h1 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown h1<Cr>2j
autocmd FileType markdown map <Leader>h2 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown h2<Cr>2j
autocmd FileType markdown map <Leader>h3 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown h3<Cr><Cr>
autocmd FileType markdown map <Leader>h4 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown h4<Cr><Cr>
autocmd FileType markdown map <Leader>h5 :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown h5<Cr><Cr>
autocmd FileType markdown map <Leader>img :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown img<Cr><Cr>
autocmd FileType markdown map <Leader>l :.!$HOME/.vim/bundle/text-helper.vim/bin/text-helper markdown link<Cr><Cr>

" Convert document from RST to Confluence Wiki format.
" Uses https://github.com/kenichiro22/rst2confluence
" TODO: Copy this script into this plugin...
" map <leader>tc :!python2 $HOME/projects/rst2confluence/rst2confluence.py % > /tmp/%:t:r.wiki<Cr>:badd /tmp/%:t:r.wiki<Cr>:bn<Cr>

" TODO: Add some useful abbreviations? 
" Abbreviations
" ab pm Project Manager
" ab lead Lead Developer
" ab dev Developer
