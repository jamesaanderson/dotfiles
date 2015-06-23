# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias git=hub
alias cl=clear

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

stty start undef
stty stop undef

c() { cd ~/Code/$1; }
h() { cd ~/; }

now() {
  echo $(date "+%Y-%m-%d %H:%M:%S") - "$@" >> $HOME/.now
}

# Customize to your needs...
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=~/pebble-dev/PebbleSDK-2.0-BETA7/bin:$PATH
export PATH=/Users/jamesanderson/.octocatsay/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

export EDITOR=vim

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/jamesanderson/.travis/travis.sh ] && source /Users/jamesanderson/.travis/travis.sh

# curl -s https://api.github.com/zen | octocatsay

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
ctags=/usr/local/bin/ctags
