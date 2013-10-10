" =======================================================
".vim/bundlerc directives that depend on script from my dotfiles GitHub
" repository. https://github.com/edthedev/dotfiles/

" TODO: Clean up and move out anything not related to editing
" ReStructuredText. (i.e. in some new and sparate.vim/bundle bundles)

" ===============
"   1 important
" ===============
" ===========================================
"   2 moving around, searching and patterns
" ===========================================
" ==========
"   3 tags
" ==========
" =====================
"   4 displaying text
" =====================
" =======================================
"   5 syntax, highlighting and spelling
" =======================================
" ======================
"   6 multiple windows
" ======================
" ========================
"   7 multiple tab pages
" ========================
" ==============
"   8 terminal
" ==============
" =====================
"   9 using the mouse
" =====================
" =========
"  10 GUI
" =========
" ==============
"  11 printing
" ==============
" =======================
"  12 messages and info
" =======================
" ====================
"  13 selecting text
" ====================
" ==================
"  14 editing text
" ==================
" ========================
"  15 tabs and indenting
" ========================
" =============
"  16 folding
" =============
" ===============
"  17 diff mode
" ===============
" =============
"  18 mapping
" =============
" ===============================
"  19 reading and writing files
" ===============================
" ===================
"  20 the swap file
" ===================
" ==========================
"  21 command line editing
" ==========================
" =================================
"  22 executing external commands
" =================================
" ========================================
"  23 running make and jumping to errors
" ========================================
" =======================
"  24 language specific
" =======================
" ===========================
"  25 multi-byte characters
" ===========================
" =============
"  26 various
" =============


" .vim/bundle defaults to 10 point font, which makes my eyes sad.
set guifont=Monospace\ 12

" SpellCheck
" se spell

" Generate some HTML
" map <F4> :!make html

" Abbreviations
" ab pm Project Manager
" ab lead Lead Developer
" ab dev Developer

" Wrap lines like a text editor, not a code editor.
set wrap
set linebreak
set nolist
" set paste " Expect to paste in text, when this is a normal text document.

" Do not add line breaks into newly entered text.
set wrapmargin=0
set textwidth=0

" Allow up and down into soft line wraps...
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Shared Clipboard
set clipboard=unnamed

" Do not show line numbers
set nonumber
set noexpandtab

" =======================================================
" Markdown
" =======================================================
" Wrap lines like a text editor, not a code editor.
"au BufEnter *.mkd setlocal textwidth=79
"au BufEnter *.mkd setlocal wrapmargin=5
"au BufEnter *.mkd setlocal wrap
"au BufEnter *.mkd setlocal linebreak
"au BufEnter *.mkd setlocal nolist

" -----------------------------------------------------------------
"    Wiki link stuff
" -----------------------------------------------------------------
map <Leader>ll :e <cfile><cr>
map <Leader>lw :e $HOME/Dropbox/notes<cr>
map <Leader>lh :e $HOME/Dropbox/notes<cr>
map <Leader>lb :buffers<Cr>
"map ,lj :bp<Cr>
"map ,lk :bn<Cr>


"    Confluence headers
" -------------------------------------------------------
au FileType *.mkd :map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 1<Cr>2j
au BufEnter *.mkd :map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 2<Cr>2j
au BufEnter *.mkd :map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 3<Cr>2j
au BufEnter *.mkd :map <Leader>h4 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 4<Cr>2j
au BufEnter *.mkd :map <Leader>h5 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -t confluence -l 5<Cr>2j

"  .vim/bundlerc headers
" -------------------------------------------------------
au FileType *.vim map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -l 1 -t.vim<Cr>2j
au FileType *.vim map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -l 2 -t.vim<Cr>2j
au FileType *.vim map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -l 3 -t.vim<Cr>2j


"      Send stuff to Wordpress
" -----------------------------------------------------------------
map <Leader>tw :!$HOME/.vim/bundle/vim-rst/bin/text-send-to-wordpress %<Cr>

" Plain text headers
map <Leader>hl :!list-headers %<Cr>
" au BufRead,BufNewFile.vim/bundle map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-make-header -l 2 -c.vim/bundlerc<Cr>2j

" Recognize some file types...
au BufNewFile,BufRead *.txt set filetype=txt
" Use ReStructuredText highlighting for all text files.
au FileType text set syntax=rest

" Print in black and white. SRSLY.
" map <C-p> :color print_bw<CR>:hardcopy<CR>:color darkeclipse<CR>:syn on<CR>


" Open the html...
" :map <Leader>tv :!google-chrome %:r.html&<Cr>


" Pandoc/markdown2pdf - Markdown to PDF
:map <Leader>kp :!markdown2pdf %<Cr>
" KindleGen - HTML to MOBI
:map <Leader>km :!$HOME/bin/KindleGen/kindlegen "%:r.html" -o "%:r.mobi"<Cr>

map <Leader>th :!$HOME/bin/multimarkdown % > %:r.html<Cr>
map <Leader>vh :!chromium-browser %:r.html&<Cr>

" =======================================================
" Minion shortcuts
" =======================================================
" Review the current file in Minion.
" https://bitbucket.org/edthedev/minion
map <Leader>or :!minion --filename %<Cr>:q<Cr>


set backspace=indent,eol,start " Backspace like an editor
set ignorecase " Ignore case when searching


" Tired of typing :Wq
cnoreabbrev W w
" Use tabs for outlining in wiki files
"au BufEnter *.mkd setlocal tabstop=2 
"au BufEnter *.mkd setlocal shiftwidth=2
"au BufEnter *.wiki setlocal tabstop=2 
"au BufEnter *.wiki setlocal shiftwidth=2



" \s to add a big 'SCRATCH' ASCII art block for indicating where your scratch notes begin or end.
" map <Leader>ts :r!scratch<Cr>


" Bullet 
" map <Leader>ob :.!indent_line<Cr>

" =======================================================
" TODO Management 
" =======================================================
" Done / Todo
map <Leader>od :.!text-task-toggle<Cr>$ 
map <Leader>d :.!text-task-toggle<Cr>$ 
map <Leader>ol :!text-list-todos %<Cr>

" Sort file by completed vs TODO lines
" :map <Leader>os :%!done_to_top<Cr>

" List organizer progress of TODO / DONE / WAITING
:map <Leader>op :!text-task-progress %<Cr>



" Gather tags!!
:map <Leader>ot :%!gather_tags 
" (insert) Updated timestamp
:map <Leader>ou :r!adddatetime<Cr>
" Waiting 
:map <Leader>ow :.!text-task-toggle -w<Cr>$ 

" New file from selected
:vmap <Leader>tf !new_file --filename=

" Sort lines!!
:map <Leader>ss :'<,'> !sort<Cr>

" =======================================================
" Graphing with graphiz
" =======================================================
:map <Leader>tg :!make-graph %:r<Cr>
:map <Leader>te :!ebook-convert %:r.html %:r.epub<Cr>

"

"   Minion stuff <Leader>o
"
" -----------------------------------------------------------------------
" Archive the current file and close it.
:map <Leader>ma :!minion --action=archive --filename=%<Cr>:q<Cr>
" Organizer help
:map <Leader>mh :!minion --help<Cr>$

" New Note
:map <Leader>mn :!minion --new-note

" Review this file
:map <Leader>mr :!minion --filename %<Cr>:q<Cr>

" Add this to your ~/.vim/bundlerc
function! HandleURL()
    let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    echo s:uri
    if s:uri != ""
        silent exec "!gnome-open '".s:uri."'"
    else
        echo "No URI found in line."
    endif
endfunction
map <leader>u :call HandleURL()<cr>
" map <Leader>wh :e ~/Dropbox/notes/wiki/home<cr>


" map <leader>w :!nautilus ~/Dropbox/notes/wiki >/dev/null 2>&1<Cr>
map <leader>ow :!ranger ~/Dropbox/notes/wiki<Cr>
" map <leader>oh :!firefox http://vifm.sourceforge.net/docs.html &<Cr>
" map <leader>oh :!firefox http://vifm.sourceforge.net/docs.html &<Cr>
map <leader>ob :!ranger .<Cr>

" Convert document from RST to Confluence Wiki format.
map <leader>tc :!python2 $HOME/projects/rst2confluence/rst2confluence.py % > /tmp/%:t:r.wiki<Cr>:badd /tmp/%:t:r.wiki<Cr>:bn<Cr>

" Copy entire document to clipboard.
map <leader>xc :!cat % <bar> xclip -sel c

" Create an image
"au FileType *.rst :map <Leader>m :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst img
map <Leader>i :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst img<Cr><Cr>
map <Leader>h1 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst h1<Cr><Cr>
map <Leader>h2 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst h2<Cr><Cr>
map <Leader>h3 :.!$HOME/.vim/bundle/vim-rst/bin/text-helper rst h3<Cr><Cr>
