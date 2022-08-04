#!/bin/bash
cd "$(dirname "$0")"
#git pull
function doIt() {
	# todo: refect it
	if [ ! -z "$__MAC_VERSION" ]; then
		if [ $SHELL == "/bin/zsh" ]; then
			rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" --exclude "readme.md" --exclude "install-deps.sh" -av . ~
		else
			rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" --exclude "readme.md" --exclude "install-deps.sh" --exclude ".zshrc" -av . ~
		fi
	else
		rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" --exclude "readme.md" --exclude "install-deps.sh" --exclude "osx.sh" -av . ~
		
	fi
	
}
#if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
#else
#	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
#	echo
#	if [[ $REPLY =~ ^[Yy]$ ]]; then
#		doIt
#	fi
#fi
unset doIt
if [ $SHELL == "/bin/zsh" ]; then
	source ~/.zshrc
else
	source ~/.bash_profile
fi

# install deps
source install-deps.sh
source .osx