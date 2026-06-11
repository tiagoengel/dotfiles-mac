#!/usr/bin/env bash

# Copy dotfiles into $HOME.

cd "$(dirname "$0")"

files=(.zshrc .aliases .gitconfig .gitignore .hushlogin .tmux.conf .vimrc)

read -p "This will overwrite ${files[*]} in your home directory. Continue? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
	for f in "${files[@]}"; do
		cp -v "$f" "$HOME/$f"
	done
	cp -Rv .vim "$HOME/"
fi
