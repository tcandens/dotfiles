# Path to your oh-my-zsh installation.
export ZSH=/home/joey/.oh-my-zsh

ZSH_THEME="minimal"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

export PATH="/usr/local/heroku/bin:/home/joey/.node/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/joey/.composer/vendor/bin"
export NODE_PATH=$NODE_PATH:/home/joey/.node/lib/node_modules
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

source $HOME/.aliases

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=usr/bin/vim

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


export NVM_DIR="/home/joey/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
