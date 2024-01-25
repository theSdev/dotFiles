# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/thesdev/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="bakke"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: 
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

alias v="nvim"
alias ns="npm start"
alias ni="npm i"
alias nt="npm test"
alias nd="npm run dev"
alias nb="npm run build"
alias nc="npm run codegen"
alias nq="npm run graphql"
alias ne="npm run test:e2e"
alias gp="git pull --autostash"
alias ga="git add ."
alias gan="git add -N ."
alias gap="git add -p"
alias gas="git add src"
alias gl="git log"
alias gd="git diff"
alias gds="git diff --staged"
alias gs="git status"
alias gc="git commit"
alias gca="git commit --amend"
alias gcb="git checkout -"
alias gcm="git checkout main"
alias gf="git show --first-parent"
alias grm="git rebase main"
alias grc="git rebase --continue"
alias gsh="git show HEAD"
alias gsp="git stash pop"
alias gsu="git stash -u"
alias gbp="git branch --merged main | grep -v '^[ *]*main$' | xargs git branch -d && git remote update origin --prune"
alias p="cd /home/thesdev/Projects"
alias fr="set-title 'Roam FM' && cd /home/thesdev/Projects/fleet-manager-roam"
alias fra="set-title 'Roam API' &&cd /home/thesdev/Projects/fleet-manager-api-roam"
alias rdb="set-title 'Roam DB' && cd /home/thesdev/Projects/db-roam"
alias fe="set-title 'EVX FM' && cd /home/thesdev/Projects/fleet-manager-frontend-evx"
alias fea="set-title 'EVX API' && cd /home/thesdev/Projects/fleet-manager-api-evx"
alias edb="set-title 'EVX DB' && cd /home/thesdev/Projects/evx-db"
alias fd="set-title 'Rand FM' && cd /home/thesdev/Projects/fleet-manager-frontend-rand"
alias fda="set-title 'Rand API' && cd /home/thesdev/Projects/fleet-manager-api-rand"
alias ddb="set-title 'Rand DB' && cd /home/thesdev/Projects/rand-db"
alias fc="set-title 'Clean Motion FM' && cd /home/thesdev/Projects/fleet-manager-frontend-clean-motion"
alias fca="set-title 'Clean Motion API' && cd /home/thesdev/Projects/fleet-manager-api-clean-motion"
alias cdb="set-title 'Clean Motion DB' && cd /home/thesdev/Projects/clean-motion-db"
alias fl="set-title 'Elevate Cloud FM' && cd /home/thesdev/Projects/fleet-manager-frontend-elevate-cloud"
alias fla="set-title 'Elevate Cloud API' && cd /home/thesdev/Projects/fleet-manager-api-elevate-cloud"
alias ldb="set-title 'Elevate Cloud DB' && cd /home/thesdev/Projects/elevate-cloud-db"
alias te="set-title 'THETC Email' && cd /home/thesdev/Projects/thetc-email"
alias ta="set-title 'THETC Auth' && cd /home/thesdev/Projects/thetc-auth"
alias cr="cargo run"
alias crr="cargo run run"
alias cb="cargo build"
alias cc="cargo check"
alias cu="cargo update"
alias ct="cargo test"
alias spr="cargo sqlx prepare -- --all-targets --all-features"
alias t="tsc --project tsconfig.json && npm run check-format && npm run lint && vitest run"
alias tpush="t && git push"
alias dw="cd /home/thesdev/Projects/discovery_web && source .envrc && source bin/activate"
alias dwb="cd /home/thesdev/Projects/discovery_web && source .envrc && source bin/activate && ./run_backend.sh"
alias dwp="cd /home/thesdev/Projects/discovery_web && source .envrc && source bin/activate && cd ./discovery_web"
alias dwr="cd /home/thesdev/Projects/discovery_web && source .envrc && source bin/activate && cd ./discovery_web/react_frontend"
alias ys="yarn start"
alias sb="npm run storybook"
alias gt="gio trash"
alias da="direnv allow ."
alias de="direnv edit ."
alias esp="set-title 'EVX Stream Processing' && cd /home/thesdev/Projects/evx-stream-processing"
alias esu="set-title 'EVX Usher' && cd /home/thesdev/Projects/evx-stream-processing && cargo run --bin usher"
alias esv="set-title 'EVX Vehicle Persistor' && cd /home/thesdev/Projects/evx-stream-processing && cargo run --bin evx_vehicle_persistor_elasticsearch"
alias esc="set-title 'EVX Scheduler' && cd /home/thesdev/Projects/evx-scheduler"
alias epu="set-title 'EVX Pulsar' && cd /home/thesdev/Projects/evx-pulsar"
alias rsp="set-title 'Roam Stream Processing' && cd /home/thesdev/Projects/roam-stream-processing"
alias rsu="set-title 'Roam Usher' && cd /home/thesdev/Projects/roam-stream-processing && cargo run --bin usher"
alias rsv="set-title 'Roam Vehicle Persistor' && cd /home/thesdev/Projects/roam-stream-processing && cargo run --bin vehicle_persistor_elasticsearch"
alias rss="set-title 'Roam SIM Data Volume Persistor' && cd /home/thesdev/Projects/roam-stream-processing && cargo run --bin sim_data_volume_persistor"
alias rsc="set-title 'Roam Scheduler' && cd /home/thesdev/Projects/roam-scheduler"
alias rpu="set-title 'Roam Pulsar' && cd /home/thesdev/Projects/roam-pulsar"
alias dsp="set-title 'Rand Stream Processing' && cd /home/thesdev/Projects/rand-stream-processing"
alias dsu="set-title 'Rand Usher' && cd /home/thesdev/Projects/rand-stream-processing && cargo run --bin usher"
alias dsv="set-title 'Rand Boat Persistor' && cd /home/thesdev/Projects/rand-stream-processing && cargo run --bin boat_persistor_elasticsearch"
alias dsc="set-title 'Rand Scheduler' && cd /home/thesdev/Projects/rand-scheduler"
alias dpu="set-title 'Rand Pulsar' && cd /home/thesdev/Projects/rand-pulsar"
alias csp="set-title 'Clean Motion Stream Processing' && cd /home/thesdev/Projects/clean-motion-stream-processing"
alias csu="set-title 'Clean Motion Usher' && cd /home/thesdev/Projects/clean-motion-stream-processing && cargo run --bin usher"
alias csv="set-title 'Clean Motion Vehicle Persistor' && cd /home/thesdev/Projects/clean-motion-stream-processing && cargo run --bin vehicle_persistor_elasticsearch"
alias csc="set-title 'Clean Motion Scheduler' && cd /home/thesdev/Projects/clean-motion-scheduler"
alias cpu="set-title 'Clean Motion Pulsar' && cd /home/thesdev/Projects/clean-motion-pulsar"
alias lsp="set-title 'Elevate Cloud Stream Processing' && cd /home/thesdev/Projects/elevate-cloud-stream-processing"
alias lsu="set-title 'Elevate Cloud Usher' && cd /home/thesdev/Projects/elevate-cloud-stream-processing && cargo run --bin usher"
alias lsv="set-title 'Elevate Cloud Vehicle Persistor' && cd /home/thesdev/Projects/elevate-cloud-stream-processing && cargo run --bin vehicle_persistor_elasticsearch"
alias lss="set-title 'Elevate Cloud SIM Data Volume Persistor' && cd /home/thesdev/Projects/elevate-cloud-stream-processing && cargo run --bin sim_data_volume_persistor"
alias lsc="set-title 'Elevate Cloud Scheduler' && cd /home/thesdev/Projects/elevate-cloud-scheduler"
alias rpu="set-title 'Roam Pulsar' && cd /home/thesdev/Projects/roam-pulsar"
alias sr="set-title 'Elevate SDK' && cd /home/thesdev/Projects/sdk-rust"
alias wcd="set-title 'Wireless Car Dashboard' && cd /home/thesdev/Projects/wireless-car-dashboard"
alias dos="docker start pulsar-elevate-dev es-elevate redis-elevate-dev"

function dost() {
  docker start pulsar-elevate-dev es-elevate pg-$1-dev redis-elevate-dev
}

function set-title() {
  printf "\e]2;$1\a"
}

function gtr() {
  gio trash --restore trash:///"$1"
}

function rstdb() {
PGPASSWORD=postgres dropdb -U postgres -h localhost -p $DB_PORT $DB_NAME
PGPASSWORD=postgres createdb -U postgres -h localhost -p $DB_PORT $DB_NAME

PGPASSWORD=postgres psql -U postgres -h localhost -p $DB_PORT $DB_NAME <<MYEOF
CREATE EXTENSION postgis;
CREATE EXTENSION "uuid-ossp";
GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
GRANT USAGE, CREATE ON SCHEMA public TO $DB_USER;
MYEOF

cargo sqlx migrate run
}

eval "$(direnv hook bash)"

export GITLAB_NPM_TOKEN="ttcgl-h8V7dQDaDWqczwmNswiT"
export VISUAL=nvim
export EDITOR="$VISUAL"
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"

export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/home/thesdev/.local/bin


# Load Angular CLI autocompletion.
source <(ng completion script)
