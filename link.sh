#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
ln -sf "$SCRIPT_DIR/zsh/.zshenv" "$HOME/.zshenv"
echo "linked .zshenv"