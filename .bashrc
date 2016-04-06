#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f .bash_aliases ]
then
	. .bash_aliases
fi

PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
alias ls='ls --color=auto'

export HISTCONTROL=ignoreboth
export EDITOR=vim
export ANDROID_NDK_ROOT=/home/johan/Documents/Builds/android-ndk

stty -ixon

function changelog() {
	git log | grep '^ *\(fix\|feat\|feature\):' | sed 's/^ *(fix|feat|feature):/- /'
}

[[ -z $XDG_CONFIG_HOME ]] && export XDG_CONFIG_HOME="$HOME/.config"

[ -z $TMUX ] && tmux
