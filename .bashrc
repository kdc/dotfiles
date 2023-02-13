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

HISTCONTROL=ignoreboth
HISTIGNORE='ls:history'
HISTFILESIZE=65536
HISTSIZE=65536

shopt -s checkwinsize
shopt -s histappend

PROMPT_COMMAND='history -a'

#export BAT_PAGER="cat"
#export BAT_PAGER="less -RFXi"
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#export MANROFFOPT="-c"

if [ $UID == 0 ]; then
    export PS1="\[\e[31m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
elif [[ $UID == 1000 ]]; then
    export PS1="\[\e[36m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
else
    export PS1="\[\e[34m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\] \[\e[31m\]\\$\[\e[m\] "
fi

alias vi='vim'
#alias ls='colorls -G' #OpenBSD
#alias ls='ls -G' #FreeBSD
#alias cat='bat --plain --paging=never'
alias p='pushd $PWD'
alias o='popd'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias pdf='mupdf-x11'
alias rm='rm -f'
alias eject='echo HAHA'
alias steam='STEAM_FRAME_FORCE_CLOSE=1 steam'
alias virsh='virsh -c qemu:///system'
alias psql='sudo -u postgres psql'

#export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

#source /usr/local/share/bash-completion/bash_completion.sh #FreeBSD
