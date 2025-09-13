#!/bin/bash

## link .zshenv
SCRIPT_DIR=$(cd $(dirname $0); pwd)
ln -sf "$SCRIPT_DIR/zsh/.zshenv" "$HOME/.zshenv"
echo "linked .zshenv"

## link .gitconfig
ln -sf "$SCRIPT_DIR/git/.gitconfig" "$HOME/.gitconfig"
echo "linked .gitconfig"