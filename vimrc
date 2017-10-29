"""""""""""""""""""""""""""""""""   GENERAL SETTINGS
" execute pathogen#infect()

:set encoding=utf-8
:set fileencoding=utf-8


call plug#begin('~/.vim/bundle')

Plug 'https://github.com/nightsense/carbonized.git'
Plug 'https://github.com/junegunn/vim-journal.git'
Plug 'https://github.com/junegunn/goyo.vim.git'

" C Extensions need to be compiled, ruby version has to match vim ruby version
Plug 'https://github.com/wincent/command-t.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-git.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/junegunn/vim-easy-align.git'

Plug 'https://github.com/tmhedberg/SimpylFold.git', { 'for': 'python' }
Plug 'https://github.com/davidhalter/jedi-vim.git', { 'for': 'python' }
Plug 'https://github.com/Vimjas/vim-python-pep8-indent.git', { 'for': 'python' }
Plug 'https://github.com/junegunn/indentLine.git', { 'for': 'python' }
Plug 'https://github.com/vim-syntastic/syntastic.git', { 'for': 'python' }

" Plug 'https://github.com/xuhdev/vim-latex-live-preview.git', { 'for': 'tex' }
Plug 'https://github.com/lervag/vimtex.git', { 'for': 'tex' }

call plug#end()

filetype plugin on
filetype indent on
filetype on           " Enable filetype detection

syntax enable

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

let g:netrw_altv=2

"""""""""""""""""""""""""""""""""   VISUAL SETTINGS
"Highlightschema"
set background=dark


"highlight search"
set hlsearch
set incsearch
noremap <silent> <leader><c-l> :nohls<cr><c-l>

"Terminalsetting"
set wildmode=longest,list
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

"""""""""""""""""""""""""""""""""   GENERAL MAPPINGS
"Centeer
nmap <space> zz
"Open files
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
map <leader>m :copen <CR>

"""""""""""""""""""""""""""""""""   COMMANDS
" highlight NonText ctermbg=none
" hi Normal ctermbg=none

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""   ADDONS

" Markdown syntax hightlight
autocmd BufRead,BufNew *.md set filetype=journal
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Powerline
set rtp+=/home/nicolas/.local/lib/python3.5/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set statusline+=%*

if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap = ['<ESC>', '<C-c>']
endif

"""""""""""""""""""""""""""""""""   FUNCTIONS
nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let g:goyo_width=90 
let g:goyo_height=95
let g:goyo_linenr=0

function! s:goyo_leave()
  set background=dark
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()

function! CreateComment(title,char)
    " Creates a comment consisting of
    " title, seperated with the character char
    " in the middle of the line

    let framewidth=80
    let l = strlen(a:title)

    let start = (framewidth - l)/2
    let over = (framewidth - l)%2

    for index in range(start-3)
        execute "normal A" . a:char
    endfor

    execute "normal A   "

    execute "normal A" . a:title

    execute "normal A   "

    for index in range(start-3)
        execute "normal A" . a:char
    endfor

    for index in range(over)
        execute "normal A" . a:char
    endfor

    echo "done"
endfunction
