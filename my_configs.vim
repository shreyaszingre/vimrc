"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Shreyas Zingre
"
" Version:
"       1.0 - Sat 15 Oct 2016 18:40:03 (EDT)
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From
"    http://www.practiceovertheory.com/blog/2009/08/18/small-collection-of-
"    useful-vim-tricks/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim’s integrated spell checking
set spelllang=en_us
" Underline misspelled words
set spell
" Use z= to bring up suggestions for the misspelled words under the cursor
" Use ]s to move to next misspelled word after the cursor
"        A count before the command can be used to repeat
" Use [s like "]s" but search backwards, find the misspelled
"           word before the cursor.
" See http://vimdoc.sourceforge.net/htmldoc/spell.html for more options


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From
"    http://vim.wikia.com/wiki/Insert_current_date_or_time
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press F5 in normal mode or in insert mode to insert the current datestamp
nnoremap <F5> "=strftime("%a %d %b %Y %X (%Z)")<CR>P
inoremap <F5> <C-R>=strftime("%a %d %b %Y %X (%Z)")<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From
"    http://www.terminally-incoherent.com/blog/2012/03/26/how-to-configure-vim/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable line numbers
set nu

" show line and column markers
set cursorline
" highlight cursorline ctermbg=darkgrey
set cursorcolumn
" highlight cursorcolumn ctermbg=darkgrey

set colorcolumn=80    " highlight column after 'textwidth'
" highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" It is essentially reverse of J (join) command. It splits the line at the
" cursor
nmap <silent> <leader><CR> i<CR><ESC>

" use jj to quickly escape to normal mode while typing 
inoremap jj <ESC>

" toggle paste mode (to paste properly indented text)
" nnoremap <F2> :set invpaste paste?<CR>
" set pastetoggle=<F2>
" set showmode

" move by screen lines, not by real lines - great for creative writing
nnoremap j gj
nnoremap k gk

" also in visual mode
vnoremap j gj
vnoremap k gk

" press ; to issue commands in normal mode (no more shift holding)
nnoremap ; :


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From
"   http://nvie.com/posts/how-i-boosted-my-vim/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Just set your cursor inside a paragraph and press Q (or select a visual block
" and press Q)
vmap Q gq
nmap Q gqap

" If you are still getting used to Vim and want to force yourself to stop using
" the arrow keys, add this:
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Vim can highlight whitespaces for you in a convenient way:
set list
set listchars=tab:>.,trail:$,extends:#,nbsp:.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From
"    http://vim.wikia.com/wiki/Example_vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files
set confirm

" When splitting the window with multiple files:
" make the new window appear below the current window
set splitbelow

" make the new window appear on the right
set splitright


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From http://vim.wikia.com/wiki/Have_Vim_check_automatically_if_the_file_
" has_changed_externally and http://stackoverflow.com/a/20418591/850996
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" -- reload when entering the buffer or gaining focus
au FocusGained,BufEnter * :silent! !

" SZ: Following disabled to avoid undesired saving of files
" -- save when exiting the buffer or losing focus
" au FocusLost,WinLeave * :silent! w


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => From
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" #disqus_thread
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable folding
set foldmethod=indent
set foldlevel=99"

" Enable folding with the spacebar
nnoremap <space> za
