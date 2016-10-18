# Path to your oh-my-zsh installation.
export ZSH=/home/joey/.oh-my-zsh

ZSH_THEME="minimal"

plugins=(git)

export PATH="/usr/local/heroku/bin:/home/joey/.node/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/joey/.composer/vendor/bin"
export NODE_PATH=$NODE_PATH:/home/joey/.node/lib/node_modules

source $ZSH/oh-my-zsh.sh

source $HOME/.aliases

export EDITOR=usr/bin/vim

export NVM_DIR="/home/joey/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"
