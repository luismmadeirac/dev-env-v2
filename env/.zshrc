
# path to zsh
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

source ~/.zsh_profile
source ~/.zshrc_alias
source ~/.zshrc_alias_scripts

GOPATH=$HOME/go  PATH=$PATH:/usr/local/go/bin:$GOPATH/bin


export PNPM_HOME="$HOME/.local/shared/pnpm"
export PATH="$PNPM_HOME:$PATH"
