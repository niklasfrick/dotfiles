# Aliases
# ---
#
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias k="kubectl"
alias h="helm"
alias tf="terraform"
alias a="ansible"
alias ap="ansible-playbook"
alias ai="ansible-inventory -i inventory.yml --graph --vars"

alias code="open -a 'Visual Studio Code'"

alias cls='clear'

# Quick directory jumping
alias ghl="cd $HOME/Coding/homelab"

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

alias grep='grep --color=auto -i'

alias prx="ssh root@pve.local.zazen.li"