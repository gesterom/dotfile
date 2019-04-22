

if [[ $UID -eq 0 ]]; then
	local user='%{$fg[red]%}%n%{$reset_color%}'
else
	local user='%{$fg[blue]%}%n%{$reset_color%}'
fi

local user='%{$fg[blue]%}%n%{$reset_color%}'
local hovercraft='%{$terminfo[bold]$fg[magenta]%}%M%{$reset_color%}'
local dir='%{$fg[yellow]%}%~%{$reset_color%}'

PROMPT=" [ %* ] $user in $hovercraft 
 $dir > "

RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
