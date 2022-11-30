# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(docker git z)
source $ZSH/oh-my-zsh.sh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/miguelangelgonzalezyepes/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source <(kubectl completion zsh)

eval "$(rbenv init -)"
export KUBECONFIG="$HOME/.kube/config":"$HOME/.kube/developer-mlan.kubeconfig":"$HOME/.kube/developer-ulan.kubeconfig":"$HOME/.kube/developer-d4.kubeconfig":"$HOME/.kube/developer-d3.kubeconfig"

alias k="kubectl"
alias kns="kubens"
alias kconfig="k config view"
alias kcontext="k config use-context"
alias pods="k get pods"
alias docker-kill-all="docker ps -aq | xargs docker stop | xargs docker rm"

complete -F __start_kubectl k

export ANDROID_SDK=~/Library/Android/sdk
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/cmdline-tools/latest/bin/$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/miguelangelgonzalezyepes/.sdkman"
[[ -s "/Users/miguelangelgonzalezyepes/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/miguelangelgonzalezyepes/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
