#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -f -s "${BASEDIR}"/vimrc ~/.vimrc

# git
ln -f -s "${BASEDIR}"/gitconfig ~/.gitconfig
ln -f -s "${BASEDIR}"/gitignore_global ~/.gitignore_global

# bashrc
ln -f -s "${BASEDIR}"/bashrc ~/.bashrc

# bashrc.local
ln -f -s "${BASEDIR}"/bashrc.local ~/.bashrc.local

