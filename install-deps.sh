# up to you (me) if you want to run this as a file or copy paste at your leisure

# homebrew! only install on mac
# you need the code CLI tools YOU FOOL.
if [[ ! -z "$__MAC_VERSION" && $(checkCmdOne brew) == "false" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # install useful apps/cmds
    brew install wget
    brew install shadowsocks-rust
    brew install v2ray-plugin
    brew install visual-studio-code
    brew install mas
fi

# install app from macos app store
if [[ ! -z "$__MAC_VERSION" ]]; then
    if [[ $(checkCmdOne mas) == "false" ]]; then
        mas install 1091189122 #Bear
        mas install 904280696  #Things3
        # mas install 975937182  #Fantastical
    else
        echo "mas is not installed!"
    fi
fi


# nvm
if [[ $(checkCmdOne nvm) == "false" ]]; then
    curl https://raw.github.com/creationix/nvm/master/install.sh | sh

    # init nvm
    . ~/.nvm/nvm.sh

    # install last lts version node
    nvm install --lts
fi
