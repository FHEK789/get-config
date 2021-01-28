eval "$(starship init zsh)"

export EDITOR="/usr/bin/nvim"

chpwd() {
        ls
}

alias what-provides="zypper search --provides --match-exact"
alias lh="ls -d .*"
alias sudo="sudo "
alias v="nvim"
alias zc="nvim $HOME/.zshrc"
alias za="source $HOME/.zshrc"
