map <F2> :!tmux send-keys -t left 'g++ % -o <C-R>=expand('%:r')<CR>' C-m <Cr><Cr>
map <F3> :!tmux send-keys -t left 'g++ % -o <C-R>=expand('%:r')<CR> && <C-R>=expand('%:r')<CR>' C-m <Cr><Cr>
