umask 002

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#history
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias neb='nano ~/.bashrc'
alias sc='source ~/.bashrc'
alias python='python3'

#functions
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\e[33m\]\$(parse_git_branch)\[\e[00m\]\n>> "

#default editor
export EDITOR='nano'
export VISUAL='nano'
