# Aliases
# ---
#
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Kubernetes
alias k="kubectl"
alias kg="kubectl get"
alias kga="kubectl get all"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kgs="kubectl get svc"
alias kaf="kubectl apply -f"
alias kdf="kubectl delete -f"
alias kd="kubectl describe"
alias h="helm"
alias tf="terraform"
alias a="ansible"
alias ap="ansible-playbook"
alias ai="ansible-inventory -i inventory.yml --graph --vars"

# VS Code
alias code="open -a 'Visual Studio Code'"

alias cls="clear"
alias grep="ggrep"
alias rm="rm -i"
alias pcp="rsync -rh --info=progress2 --stats"

alias mkcd='function _mkcd(){ mkdir -p "$1" && cd "$1"; }; _mkcd'

# Quick directory jumping
alias gohl="cd $HOME/Coding/homelab"
alias gooz="cd $HOME/ONZACK"

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"
alias la="eza --icons --group-directories-first -la"

# SOPS and AGE
alias saei='encrypt_sops_age_inplace'
alias sadi='decrypt_sops_age_inplace'
alias saef='encrypt_sops_age_filetype'
alias sadf='decrypt_sops_age_filetype'

# rsync Documents Backup to NAS
alias docbackup='rsync -av "/Users/niklas/Documents" "/Volumes/niklas/Documents"'
