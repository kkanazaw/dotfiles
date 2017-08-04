#!/bin/bash

[ ! -h ~/.bash_logout ];ln -sf `pwd`/.bash_logout ~/.bash_logout 
[ ! -h ~/.bashrc ];ln -sf `pwd`/.bashrc ~/.bashrc 
[ ! -h ~/.bash_profile ];ln -sf `pwd`/.bash_profile ~/.bash_profile 
[ ! -h ~/.bash_ssh_agent ];ln -sf `pwd`/.bash_ssh_agent ~/.bash_ssh_agent
[ ! -h ~/.profile ];ln -sf `pwd`/.profile ~/.profile
[ ! -h ~/git-completion.bash ];ln -sf `pwd`/git-completion.bash ~/git-completion.bash
[ ! -h ~/git-prompt.sh ];ln -sf `pwd`/git-prompt.sh ~/git-prompt.sh
[ ! -h ~/.tmux.conf ]; ln -sf `pwd`/.tmux.conf ~/.tmux.conf
[ ! -h ~/.screenrc ]; ln -sf `pwd`/.screenrc ~/.screenrc
[ ! -h ~/.inputrc ]; ln -sf `pwd`/.inputrc ~/.inputrc
[ ! -h ~/.gitconfig ]; ln -sf `pwd`/.gitconfig ~/.gitconfig
[ ! -h ~/.gitignore_global ]; ln -sf `pwd`/.gitignore_global ~/.gitignore_global
[ ! -h ~/.zshrc ]; ln -sf `pwd`/.zshrc ~/.zshrc
[ ! -h ~/.config/peco ]; ln -sf `pwd`/peco ~/.config/peco
source ~/.bashrc




