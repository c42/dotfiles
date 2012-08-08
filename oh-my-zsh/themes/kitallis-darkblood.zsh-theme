## Take Dark Blood. Add a blend of Molokai colors + minimal awesomeness.
## kitallis, 2011-2012

## Helpers
function rvm_info {
  echo "$(~/.rvm/bin/rvm-prompt)"
}

function rbenv_info {
  echo "$(rbenv version | sed -e "s/ (set.*$//")"
}

function user_computer {
  #echo "%{$fg[red]%}[%{\e[1;33m%}%n%{$reset_color%}%{\e[31m%} at %{\e[0;35m%}%m%{$reset_color%}%{$fg[red]%}]"
  echo "%{\e[1;33m%}[%n at %m]%{$reset_color%}"
}

function git_info {
  echo "%{$(git_prompt_info)%}%(?,,%{$fg[red]%}[%{$fg_bold[white]%}%?%{$reset_color%}%{$fg[red]%}])"
}

function current_directory {
  echo "%{$fg[cyan]%}[%{\e[32m%}%~%{$reset_color%}%{$fg[cyan]%}]"
}

function prompt_char() {
  git branch >/dev/null 2>/dev/null && echo "%{$fg[green]%}±%{$reset_color%}" && return
  hg root >/dev/null 2>/dev/null && echo "%{$fg_bold[red]%}☿%{$reset_color%}" && return
  echo "%{$fg[cyan]%}λ%{$reset_color%}"
}

## Prompts
PROMPT=$'$(user_computer) $(git_info) $(current_directory) \n$(prompt_char) %{$reset_color%}'
PS2=$'%{$fg[red]%}$(prompt_char) %{$reset_color%}'

if which rvm-prompt &> /dev/null; then
  RPROMPT='%{$reset_color%} %{$fg[red]%}$(rvm_info) %{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    RPROMPT='%{$reset_color%} %{$fg[red]%}$(rbenv_info) %{$reset_color%}'
  fi
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
