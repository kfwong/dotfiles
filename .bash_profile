# System settings before starting X
. $HOME/.bashrc

PATH=$PATH:$HOME/bin

# Enable use of rubygems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"


[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


