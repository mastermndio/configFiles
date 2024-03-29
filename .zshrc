################
# WSL Settings #
################

# Disable directory highlighting
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

###########
# Aliases #
###########
alias ls='ls --color=auto'
alias ll='ls -alF'
alias vim='nvim'

####################
#Language Runtimes #
####################

# Add Go to PATH
export PATH=$PATH:/usr/local/go/bin

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#########################
# Google Cloud Platform #
#########################
export GOOGLE_APPLICATION_CREDENTIALS="/home/abrooks/.config/gcloud/cerebro-dev-358301.json"

########################
#       Exercism       #
########################
export PATH=~/bin:$PATH

########################
# Load Starship Prompt #
########################
eval "$(starship init zsh)"
SPACESHIP_RUBY_SHOW=false


# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
