#!/bin/bash
alias g="git"

if [ -f ~/.dir_aliases ]; then
    . ~/.dir_aliases
fi

alias v="vi"
alias s="sudo"
alias sma="sudo mount -a"
alias svi="sudo vi"
alias sapt="sudo apt-get"
alias sapti="sudo apt-get install"
alias saptar="sudo apt-add-repository"
alias saptuu="sudo apt-get update; sudo apt-get upgrade"
alias sipt="sudo iptables"
alias addalias="vim ~/.bash_aliases && source ~/.bashrc"
alias clion="clion.sh"

