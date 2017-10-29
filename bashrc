
# Powerline Settings -> SLOW prompt

# /home/nicolas/.local/bin/powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /home/nicolas/.local/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh

# import aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="$PATH:$HOME/bin"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
