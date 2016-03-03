#[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

if [[ $OSTYPE == "linux-gnu" ]]; then
	export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\n\[$txtrst\]\$ "
elif [[ $OSTYPE == "darwin"* ]]; then
	export PS1="\[\033[01;93m\]\u\[\033[92m\]@\[\033[32m\]\h\
\[\033[00m\]: \
\[\033[00;34m\] \w \[\033[00m\]\
\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]
\[\033[01;31m\]\$ \[\033[m\]"
	export CLICOLOR=1
	export LSCOLORS=EaFxCxDxBxegedabagacad
	#export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\$ "
fi
