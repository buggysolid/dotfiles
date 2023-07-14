# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=10000

export PATH="$PATH:$HOME/.rvm/bin"
source $HOME/.rvm/scripts/rvm
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/Android/Sdk/emulator
export PATH=$PATH:$HOME/Android/Sdk/platform-tools
eval `keychain --eval --agents ssh --inherit any id_rsa`

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=/usr/local/lib/jdk/jdk-17.0.7+7

alias pbcopy='xsel --clipboard --input'
