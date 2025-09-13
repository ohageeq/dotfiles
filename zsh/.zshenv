eval "$(direnv hook zsh)"
# mise
eval "$(mise activate zsh)"
export PATH="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin:$PATH"