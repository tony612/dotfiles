# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# crunch
# sunrise
ZSH_THEME="crunch"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem rails rake bundler ruby rvm git-flow brew cap lein web-search zeus npm bd autojump node npm mix)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gvim=mvim
# alias emacs=ec
# alias git=hub
alias gm='git merge --no-ff'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

alias rts='ruby -I test'
alias rmt='ruby -rminitest/pride'

alias git-delete-branches-merged-into-current='git branch --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'
alias rake='noglob rake'
alias bower='noglob bower'

# npm
PATH=/usr/local/share/npm/bin:$PATH

export EDITOR="mvim -f"

#export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

# golang
# export PATH=$PATH:/usr/local/Cellar/go/1.0.3/bin

# SML NJ
# export PATH="$PATH:/usr/local/smlnj-110.75/bin"

### Added by the Heroku Toolbelt
PATH=/usr/local/heroku/bin:$PATH

# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home"
# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
# export JRUBY_HOME="/Users/tony/.rvm/rubies/jruby-1.6.8"

export PGHOST=localhost

# node
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

# nvm use default

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/Users/tony/repo/php/phabricator/arcanist/bin"

arc alias hand -- land --hold

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/tony/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

alias gpl="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

source /usr/local/share/zsh/site-functions/_aws

ulimit -n 10240

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias fuck='$(thefuck $(fc -ln -1))'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -f $HOME/.zshrc.secret ]] && source $HOME/.zshrc.secret

ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" $HOME/bin/diff-highlight
