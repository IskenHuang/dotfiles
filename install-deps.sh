# up to you (me) if you want to run this as a file or copy paste at your leisure

# homebrew! only install on mac
# you need the code CLI tools YOU FOOL.
if [[ ! -z "$__MAC_VERSION" && ${#$(checkCmd brew)} > 0 ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# nvm
if [[ ${#$(checkCmd nvm)} > 0 ]]; then
    curl https://raw.github.com/creationix/nvm/master/install.sh | sh

    # init nvm
    . ~/.nvm/nvm.sh

    # install last lts version node
    nvm install --lts
fi
