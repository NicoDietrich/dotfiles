"C specific settings
"
"
" map <F2> :! gcc -g -o %:r %<Cr>
" map <F3> :! ./%:r<Cr>
map <F4> :!cgdb %:r %<Cr>

set autoindent
set cindent
set number

"Tabulatorlänge"
set tabstop=4

"Verschiebenan tabstop anpassen"
set shiftwidth=4

"Leerzeichen zurückgehen bei Backspace"
set softtabstop=4
