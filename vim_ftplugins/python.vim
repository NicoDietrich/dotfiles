"mappings
"execute
map <F2> :!python3 %<Cr>
"send to ipython
map <F3> :!tmux send-keys -t left 'run %' C-m <Cr><Cr>
"debug
map <F4> :!python3 -m pudb.run %<Cr>
"syntastic checker
map <F7> :let g:syntastic_python_checkers = ['pylint']<Cr>
map <F8> :let g:syntastic_python_checkers = ['flake8']<Cr>
"Numbers
nnoremap <F5> :call NumberToggle()<cr>

highlight Conceal ctermbg=None ctermfg=249

"Tabulatorlängel
set tabstop=4

set relativenumber

"Verschiebenan tabstop anpassen"
set shiftwidth=4

"Leerzeichen zurückgehen bei Backspace"
set softtabstop=4

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_python_exec = '/usr/bin/python3'
set textwidth=110

let g:jedi#popup_on_dot = 0

"Numeration
set number

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

"Textsettings
set nosmartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
