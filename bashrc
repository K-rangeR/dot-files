# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

os=$(uname)

# On Mac
if [ $os = "Darwin" ]; then
  export GOPATH=/Users/kranger/workspace/go_workspace
  export JAVA_HOME=$(/usr/libexec/java_home)
  export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
fi

# User specific aliases and functions
alias la="ls -al"
alias ..="cd .."
alias ww="cd workspace && ls"
alias c="clear"
alias vim="nvim"
alias vi="nvim"
alias open="xdg-open"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="(\[\e[1;32m\u\e[m\] \[\e[1;31m\W\e[m\])\[\e[1;36m\$(parse_git_branch)\e[m\] λ "
