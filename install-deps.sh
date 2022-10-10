#!/bin/bash

# homebrew! only install on mac
if [[ $(isMac) == "true" && $(checkCmdOne brew) == "false" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # install useful apps/cmds
    brew install wget
    # brew install shadowsocks-rust
    # brew install v2ray-plugin
    brew install visual-studio-code
    brew install mas
fi

# install app from macos app store
if [[ $(isMac) == "true" ]]; then
    if [[ "$(checkCmdOne mas)" == "false" ]]; then
        echo "mas is not installed!"
    else
        mas install 1091189122 #Bear
        mas install 904280696  #Things3
        # mas install 975937182  #Fantastical
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

# gvm (Go version management)
if [[ $(checkCmdOne gvm) == "false" ]]; then
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

    # init nvm
    source ~/.gvm/scripts/gvm
fi

if [[ $(checkFileOne "./install-deps-extra.sh") == "true" ]]; then
    . ./install-deps-extra.sh
fi