#!/bin/bash

 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle install brewfile

#  needed for virt emulation on M1
PLAT=$(uname -a | cut -d " " -f 15)
if [ ${PLAT} = "arm64" ]; then
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

# 1. Install chezmoi: 
4. Run: ~chezmoi init https://github.com/username/dotfiles.git~
