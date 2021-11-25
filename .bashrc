# Path to your oh-my-bash installation.
export OSH=/home/thesdev/.oh-my-bash

OSH_THEME="bakke"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh

alias v="nvim"
alias ns="npm start"
alias gp="git pull"
alias ga="git add ."
alias gap="git add -p"
alias gl="git log"
alias gs="git status"
alias gc="git commit"
alias gcb="git checkout -"
alias gcm="git checkout main"
alias grm="git rebase main"
alias grc="git rebase --continue"
alias gsp="git stash pop"
alias gsu="git stash -u"
alias gbp="git branch --merged main | grep -v '^[ *]*main$' | xargs git branch -d"

export VISUAL=nvim
export EDITOR="$VISUAL"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
