PROMPT='%{$fg[cyan]%}%~%{$fg[green]%}$(git_prompt_info)%{$reset_color%}%{$fg[cyan]%}$ %{$reset_color%}'
RPROMPT='%{$fg[yellow]%}%p $(current_ruby)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" *"
ZSH_THEME_GIT_PROMPT_CLEAN=""

export LSCOLORS="DxGxcxdxCxegedabagacad"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"