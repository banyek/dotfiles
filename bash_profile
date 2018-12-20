#!/bin/bash

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PATH="/usr/local/bin:~/bin:$PATH"
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias loc="find . -iname"
alias search="find . | grep "
alias vi=vim

export PS1="\u@\h:\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

[ -f ~/.bash_profile.local ] &&. ~/.bash_profile.local
