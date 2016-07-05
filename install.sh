#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -f -s "${BASEDIR}"/vimrc ~/.vimrc

# git
ln -f -s "${BASEDIR}"/gitconfig ~/.gitconfig
ln -f -s "${BASEDIR}"/gitignore_global ~/.gitignore_global

# bashrc
ln -f -s "${BASEDIR}"/bashrc ~/.bashrc

# bash_profile
ln -f -s "${BASEDIR}"/bash_profile ~/.bash_profile

# muttrc
ln -f -s "${BASEDIR}"/muttrc.colors ~/.muttrc.colors
ln -f -s "${BASEDIR}"/muttrc ~/.muttrc

# mailcap
ln -f -s "${BASEDIR}"/mailcap ~/.mailcap

# Xdefaults for x2go
ln -f -s "${BASEDIR}"/Xdefaults ~/.Xdefaults

# isort
ln -f -s "${BASEDIR}"/isort.cfg ~/.isort.cfg
