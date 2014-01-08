# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# crunch
# sunrise
ZSH_THEME="crunch"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gvim=mvim
# alias emacs=ec

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs "$@" &'
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

alias rts='ruby -I test'

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
plugins=(git gitfast gem rails rake bundler ruby rvm git-flow git-hubflow brew cap lein web-search zeus npm bd autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias rake='noglob rake'
alias bower='noglob bower'

PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# npm
export PATH="/usr/local/share/npm/bin:$PATH"

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

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
export PATH="/usr/local/heroku/bin:$PATH"

# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home"
# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
# export JRUBY_HOME="/Users/tony/.rvm/rubies/jruby-1.6.8"

export PGHOST=localhost
