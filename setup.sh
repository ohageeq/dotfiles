#!/bin/sh

# install homebrew
if ! type brew >/dev/null 2>&1; then
  echo "installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "homebrew is already installed"
fi

brew install go-task/tap/go-task

# link
$(cd $(dirname $0); pwd)/link.sh

task build