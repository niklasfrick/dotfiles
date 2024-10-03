# Brewfile: Homebrew bundle file for macOS app install (with notes/source repos)
#
# Author  : Niklas Frick (hi@niklasfrick.com)
# License : MIT
#
# Installation steps;
#   1. Install Xcode CLI Tools: sudo xcode-select --install
#   2. Install Homebrew: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#   3. Install Brewfile: brew bundle install
#   4. Verify Brewfile Install: brew bundle check --verbose
#
# Optional steps;
#   1. Mirror system to Brewfile: brew bundle --force cleanup (will delete non-existant pkgs)
#   2. Check for current updates: brew cu -a -f --include-mas
#   3. Setup autoupdate every 12 hours: brew autoupdate start 43200
#
#
# --- Homebrew Cheatsheet --------------------------------
#
# brew help <cmd>            # print help for sub-command
# brew doctor                # diagnose brew issues
# brew analytics <on|off>    # turn analytics on or off
# brew shellenv              # display env variable exports
# brew --config              # display brew configurations
# brew --cache               # display cache download location
# brew --caskroom            # display caskroom location for GUI apps
# brew --cellar              # display location of CLI apps
# brew update                # update brew and cask
# brew upgrade               # upgrade all formulae
# brew upgrade --greedy      # upgrade all formulae and casks with auto_update: true
# brew autoupdate start      # start homebrew autoupdate (required interval)
# brew autoupdate status     # check status of autoupdate
# brew cu                    # upgrade mac apps using 'buo/cask-upgrade'
# brew list                  # list installed
# brew list --cask           # list installed applications
# brew list --versions       # list installed versions
# brew tap                   # list current tapped repos
# brew deps --tree <frmla>   # show dependencies
# brew outdated              # what is due for an upgrade
# brew leaves                # display unused formula to uninstall
# brew cleanup               # remove older formulae versions
# brew search <string>       # search for formulae
# mas search <string>        # use mas to search for App Store apps
# brew info <formula>        # display info on formulae
# brew install <formula>     # install formulae
# brew uninstall <formula>   # uninstall formulae
# brew pin <formula>         # pin at version (to prevent upgrades)
# brew cu pin <caskname>     # pin cask at version (to prevent upgrades)
# brew bundle list           # list deps in Brewfile
# brew bundle check -v       # check if apps from brewfile are installed
# brew bundle cleanup        # cleanup unused deps left
#
# -----------------------------------------------------------

# specify directory to install
cask_args appdir: "/Applications", require_sha: true

# install packages + some apps
# Official Homebrew Taps
tap "homebrew/autoupdate"     # [https://github.com/Homebrew/homebrew-autoupdate]
tap "homebrew/bundle"
tap "homebrew/services"

# Third-party Homebrew Taps
tap "hashicorp/tap"
tap "buo/cask-upgrade"
brew tap zackelia/formulae

### AppStore & Docker deps
brew "mas" # mac app store cli [https://github.com/mas-cli/mas]

### zsh & Terminal
brew "zsh"
brew "zsh-autosuggestions"
brew "starship"

### ansible
brew "ansible", link: :overwrite # config mgmt [https://www.ansible.com]
brew "ansible-lint", link: :overwrite # check best practices/behavior [https://ansible-lint.readthedocs.io/]

# filter tools (json/yaml/sql/binary)
brew "fx"
brew "jq"

# git
brew "gitleaks"
brew "pre-commit"

# Kubernetes
brew "kubectl"
brew "kompose"
brew "helm"
brew "derailed/k9s/k9s"
brew "stern"

# file/filesystem
brew "eza"
brew "fd"
brew "direnv"
brew "tree"
brew "grep"
brew "rsync"
brew "glow"

# misc
brew "sops"
brew "age"
brew "hashicorp/tap/packer"
brew "hashicorp/tap/terraform"
brew "bclm"
brew "httpd"
brew "1password-cli"
brew "tmux"

# Programming Languages
brew "node"


# Casks
cask "font-monaspace"
cask "font-fira-code-nerd-font"
cask "alfred"
cask "tunnelblick"
cask "kubecontext"
cask "docker"
cask "spotify"
cask "iterm2"
cask "obsidian"
cask "macdown"
cask "rectangle"
cask "brave-browser"
cask "zed"
cask "visual-studio-code"
cask "protonvpn"
cask "alt-tab"

# Mac App Store
mas "Twingate", id: 1501592214
mas "WhatsApp", id: 310633997
mas "Infuse", id: 1136220934

# VSCode Extensions
vscode "github.copilot"
vscode "github.copilot-chat"
vscode "hashicorp.hcl"
vscode "hashicorp.terraform"
vscode "ms-azuretools.vscode-docker"
vscode "ms-python.python"
vscode "ms-vscode-remote.remote-ssh"
vscode "ms-vscode-remote.remote-ssh-edit"
vscode "ms-vscode.makefile-tools"
vscode "ms-vscode.remote-explorer"
vscode "pkief.material-icon-theme"
vscode "redhat.vscode-yaml"
vscode "teabyii.ayu"
vscode "vue.volar"
