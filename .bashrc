#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f .bash_aliases ]
then
	. .bash_aliases
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export HISTCONTROL=ignoredups
export EDITOR=vim
export ANDROID_NDK_ROOT=/home/johan/Documents/Builds/android-ndk

function changelog() {
	git log | grep '^ *\(fix\|feat\|feature\):' | sed 's/^ *(fix|feat|feature):/- /'
}

[[ -z $XDG_CONFIG_HOME ]] && export XDG_CONFIG_HOME="$HOME/.config"

[ -z $TMUX ] && tmux
