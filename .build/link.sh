#!/usr/bin/env bash

dotfiles="$@"

if [ $# -eq 0 ]; then
  echo "No dotfiles provided to be cleaned"
  exit 1
fi


echo "#### Attaching Symlniks to home ####"
for dotfile in $dotfiles
do
  echo -e "\tGenerating Link for .${dotfile}"
  ln -s ${PWD}/${dotfile} ${HOME}/.${dotfile}
done
echo ""

