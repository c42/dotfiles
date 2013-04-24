# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kitallis-darkblood"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# aliases -----------------------------------------------------
alias drm='cd ~/code/rubymonk'

# general
alias la="ls -lach"
alias lsd="ls | grep ^d"
which ack >> /dev/null || alias ack=ack-grep

# global aliases
alias -g H='| head'
alias -g T='| tail'
alias -g G='| ack'
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias ll="ls -l"
if which brew &> /dev/null; then
  alias i="brew install"
  alias up="brew upgrade"
else if which apt-get &> /dev/null; then
    alias i="sudo apt-get install"
    alias up="sudo apt-get upgrade"
  fi fi
alias gi="gem install"
alias ctags="/usr/local/Cellar/ctags/5.8/bin/ctags"
alias refreshctags="ctags -f tags --recurse=yes . && find . -name '*.rb' -o -name '*.java' -o -name '*.cs' -o -name '*.js' -o -name '*.haml' -o -name '*.erb' >| cscope.files && cscope -b -q"
alias sp=spork
alias r=rake
alias b=bundle
alias be='bundle exec'

export HISTFILE=~/.zhistory

# git aliases
alias gst='git st'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git lg'

# directory options
setopt auto_cd
setopt auto_pushd

# paths -------------------------------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="./bin:$PATH"

alias vi=vim
alias ep="vim ~/.zshrc && source ~/.zshrc"
alias eplocal="vim ~/.zshrc.local && source ~/.zshrc.local"
export EDITOR="vim"
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
  export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
  export GIT_EDITOR=$EDITOR
fi

export LESS='-RM' # -R: print ANSI color escapes directly to the screen
                  # -M: use very verbose prompt, with pos/%

# folder aliases
[[ -e ~/.zshrc.local ]] && source ~/.zshrc.local

# quick access to directories
# softlinks (e.g. rspec) created in the directory ~/.soft_links will
# be accessible as ~rspec from anywhere
if [ -d ~/.soft_links ]; then
  for i in $HOME/.soft_links/*; do
    soft_link=`basename $i`;
    hash -d $soft_link="$i"
  done
fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=./bin:~/.bin:$PATH

export JRUBY_OPTS=--1.9
