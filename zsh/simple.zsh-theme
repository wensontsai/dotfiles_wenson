# PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$fg_bold[purple]%}$(git_prompt_info)%{$reset_color%} '

PROMPT='☕ %F{red}(☝ ՞ਊ ՞)☝ $(kube_ps1) %(!.%{$fg[red]%}.%{$fg_bold[cyan]%}) %~%{$fg_bold[yellow]%} $(git_prompt_info)%{$reset_color%} '

# RPROMPT='$(kube_ps1)%{$reset_color%} '
RPROMPT=''


ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"