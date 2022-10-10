# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,functions,bash_prompt,exports,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

# nvm
. ~/.nvm/nvm.sh

# gvm
. ~/.gvm/scripts/gvm

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# git
if [[ $(isWork) == "true" ]]; then
	git config --global user.name $GIT_WORK_NAME
	git config --global user.email $GIT_WORK_EMAIL
else
	git config --global user.name "Isken Huang"
	git config --global user.email "iskenhuang@gmail.com"
fi

if [[ $(isMac) == "true" && $(isWork) == "true" ]]; then
	# Volume: make default volume be mute
	osascript -e 'set volume output volume 0'
fi
