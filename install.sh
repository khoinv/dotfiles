#!/bin/bash
cd $HOME
#create backup current dotfiles config
backup=.dotfiles_old.$(date +"%Y%m%d_%H%M%S")
mkdir $backup
echo $backup
mv .bash_profile $backup
mv .bashrc $backup
mv .gitconfig $backup
mv .gitignore $backup
mv .tmux.conf $backup
mv .vim $backup
mv .vimrc $backup
mv .bash_virtenv $backup
mv .git_template $backup
mv scripts $backup
mv .inputrc $backup
mv .aliases $backup
mv .sbtrc $backup
mv .ctags $backup
mv .ideavimrc $backup
#copy new config to your home directory using symboy link
ln -s .dotfiles/.bash_profile ~/.bash_profile
ln -s .dotfiles/.bashrc ~/.bashrc
ln -s .dotfiles/.gitconfig ~/.gitconfig
ln -s .dotfiles/.gitignore ~/.gitignore
ln -s .dotfiles/.tmux.conf ~/.tmux.conf
ln -s .dotfiles/.vim/ ~/.vim
ln -s .dotfiles/.vimrc ~/.vimrc
ln -s .dotfiles/.bash_virtenv ~/.bash_virtenv
ln -s .dotfiles/.git_template ~/.git_template
ln -s .dotfiles/scripts/ ~/scripts
ln -s .dotfiles/.inputrc ~/.inputrc
ln -s .dotfiles/.aliases ~/.aliases
ln -s .dotfiles/.sbtrc ~/.sbtrc
ln -s .dotfiles/.ctags ~/.ctags
ln -s .dotfiles/.ideavimrc ~/.ideavimrc
