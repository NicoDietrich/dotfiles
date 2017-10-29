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

"comment
setlocal commentstring=%\ %s

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
