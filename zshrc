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

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# aliases -----------------------------------------------------
alias drm='cd ~/code/rubymonk'

# general
alias la="ls -lach"
alias lsd="ls | grep ^d"

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
alias gi="gem install"
alias ctags="/usr/local/Cellar/ctags/5.8/bin/ctags"
alias refreshctags="ctags -f tags --recurse=yes . && find . -name '*.rb' -o -name '*.java' -o -name '*.cs' -o -name '*.js' -o -name '*.haml' -o -name '*.erb' >| cscope.files && cscope -b -q"
alias r=rake
alias b=bundle
alias be='bundle exec'

export HISTFILE=~/.zhistory

# git aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git log --pretty=oneline'


# directory options
setopt auto_cd
setopt auto_pushd

# paths -------------------------------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"

alias vi=vim
alias ep="vim ~/.zshrc && source ~/.zshrc"
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
  export GIT_EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
fi
export EDITOR="vim"


# folder aliases
[[ -e ~/.zshrc-aliases ]] && source ~/.zshrc-aliases

# rbenv
eval "$(rbenv init -)"

export PATH=./bin:~/.bin:$PATH

