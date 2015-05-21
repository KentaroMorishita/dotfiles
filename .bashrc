# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
function parse_git_branch {
  git branch --color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function precmd() {
  PROMPT="\h@\u:\W\$(parse_git_branch) \$ "
}
function proml {
  PS1="\h@\u:\W\$(parse_git_branch) \$ "
}
proml
