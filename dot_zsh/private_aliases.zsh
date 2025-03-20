# Aliases
# ---

# Kubernetes
alias kubectl="kubecolor"
alias k="kubectl"
alias kg="kubectl get"
alias kga="kubectl get all"
alias kgn="kubectl get nodes"
alias kgns="kubectl get namespaces"
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kgs="kubectl get svc"
alias kaf="kubectl apply -f"
alias kdf="kubectl delete -f"
alias kd="kubectl describe"
alias h="helm"
alias tf="terraform"
alias kalpine="createkubernetesalpinetest"

# Velero
alias vbg="velero backup get"
alias vbc="velero backup create"
alias vbd="velero backup delete"

# Ansible
alias a="ansible"
alias ap="ansible-playbook"
alias ai="ansible-inventory -i inventory.yml --graph --vars"

alias cls="clear"
alias grep="ggrep"
alias rm="rm -i"
alias pcp="rsync -rh --info=progress2 --stats"
alias top="htop"

alias mkcd='function _mkcd(){ mkdir -p "$1" && cd "$1"; }; _mkcd'

# Quick directory jumping
alias ghl="cd $HOME/Coding/homelab"
alias gozk="cd $HOME/ONZACK"
alias gic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias .6='cd ../../../../../..'

alias ls="eza --icons --git --header --hyperlink --group-directories-first"
alias ll="ls -l"
alias la="ls -la"

# SOPS and AGE
alias eak='export_age_key'
alias saei='encrypt_sops_age_inplace'
alias sadi='decrypt_sops_age_inplace'
alias saef='encrypt_sops_age_filetype'
alias sadf='decrypt_sops_age_filetype'

# rsync Documents Backup to NAS
alias docbackup='rsync -av "/Users/niklas/Documents" "/Volumes/niklas/Documents"'

# cursor
alias c='cursor'
alias c.='c .'
