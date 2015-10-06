#!/usr/bin/env bash

timestamp=$(date +"%s")
dotfiles="$@"

if [ $# -eq 0 ]; then
  echo "No dotfiles provided to be cleaned"
  exit 1
fi

echo "#### Cleaning up home dotfiles symbolic links ####"

for dotfile in $dotfiles
do
  if [ -L "${HOME}/.${dotfile}" ]
  then
    echo -e "\tCleaning up symlink for .${dotfile}"
    rm ${HOME}/.${dotfile}
  elif [ -e "${HOME}/.${dotfile}" ]
  then
    echo -e "\tNon symlink version of .${dotfile} exists moving"
    mv ${HOME}/.${dotfile} ${HOME}/${dotfile}-${timestamp}
  fi
done
echo ""
