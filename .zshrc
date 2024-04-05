# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# git plugin WIKI: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
plugins=(bundler git)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# mysql (Prefer mysql@5.7)
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ruby-build
# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.

# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your shell profile e.g. ~/.profile or ~/.zshrc:
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# vim
# alias vim='/usr/local/Cellar/vim'
export PATH="/usr/local/Cellar/vim:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

# ruby
# NOTE: Ignore Ruby 2.7 deprecation and experimental warnings
export RUBYOPT='-W:no-deprecated -W:no-experimental'

# flutter
export PATH="$PATH:~/Code/flutter/bin"
