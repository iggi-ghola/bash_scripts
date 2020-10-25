
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

#############################################################################

export PS1='[\[\033[01;32m\]\t \[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w\[\033[00m\]]\[\033[01;32m\]$?\[\033[01;35m\]\$ \[\033[00m\]'
umask 022

#############################################################################

eval "`dircolors`"

#############################################################################

alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -ahl'
alias l='ls $LS_OPTIONS -lA'
alias ..='cd ..'
alias ...='cd ../..'
alias s='ssh -l root'
alias grep='grep --color=auto'
alias ubp='wget -O - https://raw.githubusercontent.com/iggi-ghola/bash_scripts/main/.bash_profile > ~/.bash_profile && . ~/.bash_profile'
alias uvc='wget -O - https://raw.githubusercontent.com/iggi-ghola/bash_scripts/main/.vimrc > ~/.vimrc'
alias less='less -i'

#############################################################################

export EDITOR="vim"

export HISTFILESIZE=99999999
export HISTSIZE=99999999
export HISTCONTROL="ignoreboth"

export LS_OPTIONS='--color=auto -h'

#############################################################################

function info_msg() { echo -e "\e[1;32m$*\e[0m"; }
function warn_msg() { echo -e "\e[1;33m$*\e[0m"; }
function error_msg() { echo -e "\e[1;31m$*\e[0m"; }
