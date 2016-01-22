#!/bin/bash
###########
# .installdots.sh
# This script creates symlinks from the home directory to any dotfiles in ~/dotfiles
###########

### Vars ###

dir=-/dotfiles		# dotfiles dir
olddir=-/dotfiles_old	# backup directory
files="vimrc" 	# list of files/folders to symlink in home

### Create Dotfiles_old in Homedir ###
echo "Creating $olddir for backup of any existing dotfiles in -"
mkdir -p $oldir
echo "...done"

### Change to the dotfiles directory ###
echo "Changing to the dotfiles directory"
cd $dir
echo "...done"

### Move any existing dotfiles in homedir to dotfiles_old directory
### Then create symlinks ###
for file in $files; do
  echo "Moving existing dotfiles from - to $olddir"
  mv -/.$file -/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file -/.$file
done
echo "Finished"
