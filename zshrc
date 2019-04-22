export ZSH="/home/gesterom/.oh-my-zsh"

ZSH_THEME="gesterom"

plugins=(
  git
	git-extras
	gitfast
	copyfile
	common-aliases
	pip
	python
	docker
	extract
	encode64
	web-search
)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:$PATH

export LC_ALL=pl_PL.UTF-8
setxkbmap pl

export EDITOR=vim
export BRWOSER=qutebrowser
export SHELL=zsh
export TERMINAL=st

alias e=$EDITOR

alias mk='function _blah(){ mkdir $1; cd $1 };_blah'
alias screen=flameshot
alias server="ssh root@193.33.111.137"

export PATH=$PATH:/home/gesterom/.scripts/
