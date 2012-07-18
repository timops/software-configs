export PS1="\h: [\w] \u\$ "
export EDITOR='vim'

alias ll='ls -lGahtr'
alias ls='ls -Gatr'
alias vim='vim -p'
alias grep='grep -n --color'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
