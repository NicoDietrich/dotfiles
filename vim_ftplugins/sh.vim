"mappings
map <F2> :!bash %<Cr>

"Tabulatorlänge"
set tabstop=4

"Verschiebenan tabstop anpassen"
set shiftwidth=4

"Leerzeichen zurückgehen bei Backspace"
set softtabstop=4

"Automatisches einrücken"
set autoindent
set foldlevel=99

"Numeration
set number

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc

nnoremap <F3> :call NumberToggle()<cr>

"Textsettings
set autoindent
"set textwidth=79
autocmd BufRead *.sh set smartindent cinwords=if,elif,do,else,for,while,try,except,finally,def,class
