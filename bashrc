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

# Bring the power of vim to bash
# Prese ESC or Ctrl+[ at the prompt to enter Normal mode
set -o vi

# User specific aliases and functions
alias sl="ls"
alias py3="python3"
alias la="ls -al"
alias ..="cd .."
alias ww="cd ~/workspace && ls"
alias c="clear"
alias td="todoro"
alias g++7="g++ -std=c++17 -Wall -Werror"
alias g++1="g++ -std=c++11 -Wall -Werror"
alias open="xdg-open"
alias vim="nvim"
alias vi="nvim"

export EDITOR=vim

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="(\[\e[1;32m\u\e[m\] \[\e[1;31m\W\e[m\])\[\e[1;36m\$(parse_git_branch)\e[m\] λ "

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
