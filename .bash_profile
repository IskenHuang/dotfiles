# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# nvm
. ~/.nvm/nvm.sh

# Case-insensitive globbing (used in pathname expansion)
# shopt -s nocaseglob #zsh not support

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
# complete -W "NSGlobalDomain" defaults #zsh not support

# git
local IS_WORK=$(echo $HOST | grep work)
if [[ ${#IS_WORK} > 0 ]]; then
	git config --global user.name $GIT_WORK_NAME
	git config --global user.email $GIT_WORK_EMAIL
else
	git config --global user.name "Isken Huang"
	git config --global user.email "iskenhuang@gmail.com"
fi

if [ ! -z "$__MAC_VERSION" ]; then
	# Volume: make default volume be mute
	osascript -e 'set volume output volume 0'
fi
