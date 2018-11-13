#!/bin/bash

if [ ! -d ~/mac-setup ]; then
  git clone https://github.com/blcsntb/mac-setup ~/mac-setup
else
  cd ~/mac-setup
  git pull --quiet
fi

--all() {
  ~/mac-setup/zsh/zsh.sh $@
  ~/mac-setup/rvm/rvm.sh $@
  ~/mac-setup/nvm/nvm.sh $@
  ~/mac-setup/python/python.sh $@
  ~/mac-setup/z/z.sh $@
  ~/mac-setup/iterm2/iterm2.sh $@
  ~/mac-setup/vim/vim.sh $@
  ~/mac-setup/vscode/vscode.sh $@
  ~/mac-setup/gitignore/gitignore.sh $@
}

if [ "$1" == "" ]; then
  --all --install --config
else
  --all $@
fi
