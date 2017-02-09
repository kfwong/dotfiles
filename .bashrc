# aliases
alias ls='ls --color=auto'
alias fuck='sudo $(history -p !!)'
alias stfu='shutdown -h now'

# Gtk themes
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# ibus env
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# default apps
export EDITOR=nano
export TERMINAL=termite
export BROWSER=firefox

# composer PATH
export PATH=$PATH:$HOME/.composer/vendor/bin

# android hierachy viewer variable
export ANDROID_HVPROTO=ddm


# PS1 config with git integration
B='\[\e[1;38;5;33m\]'
LB='\[\e[1;38;5;81m\]'
GY='\[\e[1;38;5;242m\]'
G='\[\e[1;38;5;82m\]'
P='\[\e[1;38;5;161m\]'
PP='\[\e[1;38;5;93m\]'
R='\[\e[1;38;5;196m\]'
Y='\[\e[1;38;5;214m\]'
W='\[\e[0m\]'

get_prompt_symbol() {
    [[ $UID == 0 ]] && echo "#" || echo "\$"
}

if [[ $PS1 && -f /usr/share/git/git-prompt.sh ]]; then
    source /usr/share/git/completion/git-completion.bash
    source /usr/share/git/git-prompt.sh

    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=0

    export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
else
    export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W$GY]$W\$(get_prompt_symbol) "
fi
