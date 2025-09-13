#!/bin/sh

# install homebrew
if ! type brew >/dev/null 2>&1; then
  echo "installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # Add Homebrew to PATH for current session and future sessions
  if [[ $(uname -m) == "arm64" ]]; then
    # Apple Silicon Mac
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    # Intel Mac
    echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/usr/local/bin/brew shellenv)"
  fi
  
  echo "homebrew installed and PATH configured"
else
  echo "homebrew is already installed"
fi

# Check if brew command is available
if ! type brew >/dev/null 2>&1; then
  echo "Error: brew command not found. Homebrew installation may have failed."
  exit 1
fi

brew install go-task/tap/go-task

# link
SCRIPT_DIR=$(cd $(dirname $0); pwd)
"$SCRIPT_DIR/link.sh"

task init