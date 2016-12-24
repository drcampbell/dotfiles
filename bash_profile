#!/bin/bash
#~/.bash_profile
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Initialize RBENV
eval "$(rbenv init -)"

if [[ $OSTYPE == "linux-gnu" ]]; then
	# Load the default .profile
	[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 
	# Load RVM into a shell session *as a function*
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
	export PS1="\${debian_chroot:+(\$debian_chroot)}\
\[\033[01;93m\]\u\[\033[92m\]@\h\[\033[00m\]:\
\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\
\$git_branch\[$txtred\]\$git_dirty\n\[$txtrst\]\
\[\033[01;31m\]\$ \[\033[m\]"
# Are we on MacOSX?
elif [[ $OSTYPE == "darwin"* ]]; then
	export PS1="\[\033[01;93m\]\u\[\033[92m\]@\[\033[32m\]\h\
\[\033[00m\]: \
\[\033[00;34m\] \w \[\033[00m\]\
\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]
\[\033[01;31m\]λ \[\033[m\]"
	# Make ls command perdy
	export CLICOLOR=1
	export LSCOLORS=exFxCxDxBxegedabagacad
fi

export PATH="$HOME/.rbenv/bin:$PATH"

#->RUBY ENV<-#
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Python3 Bpython
alias bpy3="python3 -m bpython"

alias vim="/usr/local/Cellar/vim/7.4.1147/bin/vim"

# Add node.js to PATH
export PATH="$HOME/.node/bin:$PATH"

NPM_PACKAGES=/Users/david/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
alias crontab="VIM_CRONTAB=true crontab"

export TERM="xterm-256color"
