# Isken's dotfiles
This repo contains my personal dotfiles and based on [Addy](https://github.com/addyosmani/dotfiles)

## Some differences
* `ptt` quick connect PTT.cc(Taiwan famous forum)
* added linux support

## install the neccessary apps
My basic setup is captured in `install-deps.sh` which adds homebrew, nvm etc.

## private config
Toss it into a file called `.extra` or `*extra*` which you do not commit to this repo and just keep in your `~/`

### Sensible OS X defaults
When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```



## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`
* `.inputrc` - config for bash readline


## Installation

```bash
git clone https://github.com/IskenHuang/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
