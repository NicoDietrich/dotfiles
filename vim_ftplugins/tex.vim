set autoindent
set relativenumber
set spell

set number
set softtabstop=2
set tabstop=2
set shiftwidth=2


set conceallevel=0
set concealcursor=""
map <F2> :highlight Conceal ctermfg=39
hi Normal ctermbg=none

colorscheme mylatex

" map <F3> :!pdflatex %<Cr>
" map <F4> :!bibtex <C-R>=expand('%:r')<Cr><Cr>
map <F3> :!pdflatex main.tex<Cr>
map <F4> :!bibtex main<Cr>
map <F5> :!nohup evince <C-R>=expand('%:r') . ".pdf &"<CR><CR>
"send to other shell
" map <F3> :!tmux send-keys -t left 'pdflatex %' C-m <Cr><Cr>
