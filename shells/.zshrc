#  _____     _        _             #
# |  __ \   | |      (_)            #
# | |__) |__| |_ _ __ _  ___ _   _  #
# |  ___/ _ \ __| '__| |/ __| | | | #
# | |  |  __/ |_| |  | | (__| |_| | #
# |_|   \___|\__|_|  |_|\___|\__,_| #
#                                   #

source "$HOME"/GitStuff/antigen.zsh

antigen use oh-my-zsh

# bundles from oh-my-zsh

antigen bundle git
antigen bundle cargo
antigen bundle github
antigen bundle node
antigen bundle npm
antigen bundle golang
antigen bundle command-not-found

# syntax highlighting

antigen apply

# use starship prompt
eval "$(starship init zsh)"

# set starship config file path
export STARSHIP_CONFIG="$HOME"/Configs/shells/starship.toml

# various aliases
alias vim="nvim"
alias ls="exa --long --header --git"
alias grep="rg"
alias find="fd"
alias ps="procs"
alias config="vim ./Configs/shells/.zshrc"
alias reload="source ./Configs/shells/.zshrc"

