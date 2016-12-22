#~/.bash_profile
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

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
	export LSCOLORS=EaFxCxDxBxegedabagacad
fi

export EDITOR=vim
export PATH="/usr/local/bin/rbenv/shims/ruby:$PATH"
eval "$(rbenv init -)"

alias crontab="VIM_CRONTAB=true crontab"

export PATH="/Users/dcampbell/bin/Sencha/Cmd/6.1.2.15/..:$PATH"

export PATH=/Users/dcampbell/bin/Sencha/Cmd/5.1.3.61:$PATH
alias vim="/usr/local/Cellar/vim/7.4.1847_1/bin/vim"
export SENCHA_CMD_3_0_0="/Users/dcampbell/bin/Sencha/Cmd/3.1.1.274"

export NVM_DIR="/Users/dcampbell/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=/Users/dcampbell/bin/Sencha/Cmd/3.1.1.274:$PATH

# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export HOMEBREW_GITHUB_API_TOKEN="7081ed94eee8ac0f0a076110e06f215936e5c74a"

export PATH="/usr/local/sbin:$PATH"

export TERM="xterm-256color"
