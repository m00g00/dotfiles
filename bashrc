#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -F'
PS1='[\u@\h \W]\$ '



set -o vi

if [[ $TERM == xterm-termite ]]; then
	. /etc/profile.d/vte.sh
 	PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'__vte_ps1'
elif [[ -z "$TMUX" && $(tput colors) == 256 ]]; then
    export TERM='xterm-256color'
fi

export VISUAL=vim
export EDITOR=vim

export HISTSIZE=10000
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTCONTROL=ignoreboth
export PROMPT_COMMAND='history -a'

export http_proxy=http://localhost:8123/

export NODE_PATH=/usr/lib/jsctags

shopt -s cmdhist lithist histappend


alias pacman='sudo pacman'
alias cower='cower --color=auto'
alias pack='packer --noedit --noconfirm -S'


# vim: set ts=4 sw=4:

#export PATH=/home/moogoo/sencha-cmd/pkg/sencha-cmd/opt/Sencha/Cmd/3.0.0.250:$PATH

#export SENCHA_CMD_3_0_0="/home/moogoo/sencha-cmd/pkg/sencha-cmd/opt/Sencha/Cmd/3.0.0.250"
