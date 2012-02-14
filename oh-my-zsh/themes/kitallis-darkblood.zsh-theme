## Take Dark Blood. Add a blend of Molokai colors + minimal awesomeness.
## kitallis, 2011-2012

## Helpers
function check_for_rvmrc {
  if [ -e `pwd`/.rvmrc ]; then ~/.rvm/bin/rvm-prompt; fi;
}

## Prompts
PROMPT=$'%{$fg[red]%}┌[%{\e[1;33m%}%n%{$reset_color%}%{\e[31m%} at %{\e[0;35m%}%m%{$reset_color%}%{$fg[red]%}] %{$(git_prompt_info)%}%(?,,%{$fg[red]%}[%{$fg_bold[white]%}%?%{$reset_color%}%{$fg[red]%}])
%{$fg[blue]%}└[%{\e[32m%}%~%{$reset_color%}%{$fg[blue]%}] ⇒%  %{$reset_color%} '
PS2=$' %{$fg[red]%}|⇒%  %{$reset_color%} '

RPROMPT='%{$reset_color%} %{$fg[red]%}$(check_for_rvmrc)%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"