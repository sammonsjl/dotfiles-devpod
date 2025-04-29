export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="devcontainers"

plugins=(git)

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
