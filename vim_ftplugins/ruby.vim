"mappings
"execute
map <F2> :!ruby %<Cr>
"send to ipython
map <F3> :!tmux send-keys -t left 'ruby %' C-m <Cr><Cr>
"debug
"TODO
nnoremap <F5> :call NumberToggle()<cr>

"Tabulatorlänge"
set tabstop=4

"Verschiebenan tabstop anpassen"
set shiftwidth=4

"Leerzeichen zurückgehen bei Backspace"
set softtabstop=4

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0

"Numeration
set number

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting


function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

" "Textsettings
" set nosmartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" set textwidth=79
