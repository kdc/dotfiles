if [[ $- != *i* ]] ; then
    return
fi

if [ -f /etc/bashrc ]; then
    source /etc/bashrc
elif [ -f /etc/bash/bashrc ]; then
    source /etc/bash/bashrc
fi

export EDITOR="vim"
export VISUAL=$EDITOR
export PAGER="less"
export LESS='-R -i -F -X -M'
export MANPAGER='less'

HISTCONTROL=ignoreboth
HISTIGNORE='ls:history'
HISTFILESIZE=65536
HISTSIZE=65536

shopt -s checkwinsize
shopt -s histappend

PROMPT_COMMAND='history -a'

if [ $UID == 0 ]; then
    export PS1="\[\e[31m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
elif [[ $UID == 1000 ]]; then
    export PS1="\[\e[36m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
else
    export PS1="\[\e[34m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
fi

# shellcheck source=/dev/null
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f /usr/share/bash-completion/completions/fzf ]] && . /usr/share/bash-completion/completions/fzf
[[ -f /usr/share/fzf/key-bindings.bash ]] && . /usr/share/fzf/key-bindings.bash
