[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(direnv hook zsh)"

eval "$(op completion zsh)"; compdef _op op

export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

export KUBECONFIG=$HOME/.kube/config

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
