#  _____     _        _             #
# |  __ \   | |      (_)            #
# | |__) |__| |_ _ __ _  ___ _   _  #
# |  ___/ _ \ __| '__| |/ __| | | | #
# | |  |  __/ |_| |  | | (__| |_| | #
# |_|   \___|\__|_|  |_|\___|\__,_| #
#                                   #

source "$HOME"/.antigen.d/antigen.zsh

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
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# use starship prompt
eval "$(starship init zsh)"

# various aliases
alias vim="nvim"
alias less="bat"
alias ls="exa --long --header --git"
alias grep="rg"
alias find="fd"
alias ps="procs"
alias config="vim $HOME/.zshrc"
alias reload="source $HOME/.zshrc"
alias doom="$HOME/.emacs.d/bin/doom"
alias pm="pamac"
alias autoremove="sudo pacman -Rcns $(pacman -Qdtq) || paru -Rcns $(paru -Qdtq)"
alias nvm="bash n"
alias gvm="$GOPATH/bin/g"

ONE_DRIVE_MOUNTPOINT="$HOME/OneDrive"
export PERSONAL_ONE_DRIVE_SERVICE=$(systemd-escape --template onedriver@.service --path $ONE_DRIVE_MOUNTPOINT)


export GOPATH="$HOME/go"
export GOROOT="$HOME/.go"
export PATH="$GOPATH/bin:$HOME/.local/bin:$PATH"
