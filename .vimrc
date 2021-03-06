call plug#begin('~/.vim/plugged')
" List plugins here

" Airline bar
Plug 'vim-airline/vim-airline'
" Themes for Airline
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'

" Make color themes work in terminal vim
Plug 'godlygeek/csapprox'

call plug#end()

" Needed for YCM
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Numbered lines
set nowrap
set number
set bg=dark
set ignorecase

" Open the file tree as a new window 
noremap <F10> :split<Space>.<Return> 

" Complete function body with right brace
inoremap {<Return> {<Return>}<Esc>O

" Insert breakpoint for pdb (Python Debugger)
autocmd FileType python noremap ;bug Oimport<Space>pdb;<Space>pdb.set_trace()<Esc>

" Go to beginning/ending of line
noremap ö _
noremap Ö $

" newlines without going into insert mode
noremap å o<Esc>
noremap Å O<Esc>

" When escape is too far away
inoremap jj <Esc>
inoremap <c-k> <Esc>

" Remove nasty trailing whitespaces
noremap <F11> :%s/\s\+$//e<Return>

" Html tag generator
autocmd FileType html,php inoremap <C-Space> ><Esc>bywi<<Esc>o</<Esc>pa><Esc>O

" For Latex editing
autocmd FileType tex,latex set wrap
autocmd FileType tex,latex set spell

" Better row navigation for .tex files
autocmd BufNewFile,BufRead *.tex noremap j gj
autocmd BufNewFile,BufRead *.tex noremap k gk

" Tab indentation for c, cpp, and headers
autocmd FileType c,cpp,h set noet

" Compile the current .tex-file to produce a pdf
autocmd BufNewFile,BufRead *.tex noremap <F12> :w<Return>:!pdflatex %<Return>

" Better row navigation for .tex files
autocmd BufNewFile,BufRead *.tex noremap j gj
autocmd BufNewFile,BufRead *.tex noremap k gk
