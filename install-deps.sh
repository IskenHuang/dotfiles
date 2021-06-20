# up to you (me) if you want to run this as a file or copy paste at your leisure

# homebrew! only install on mac
# you need the code CLI tools YOU FOOL.
if [ ! -z "$__MAC_VERSION" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
# . ~/.nvm/nvm.sh

