export PS1="\h: [\w] \u\$ "
export EDITOR='vim'

alias ll='ls -lGahtr'
alias ls='ls -Gatr'
alias vim='vim -p'
alias grep='grep -n --color'
alias git='gh'
alias c='coderay'

# brew binaries should override the system defaults
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# MacOS will not load .bashrc for non-login shells, so source it
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# make powerline-shell load automatically
function _update_ps1() {
   export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
