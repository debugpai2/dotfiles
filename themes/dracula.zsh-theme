# Dracula Theme v1.2.5
#
# https://github.com/dracula/dracula-theme
#
# Copyright 2016, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author Zeno Rocha <hi@zenorocha.com>

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

if [ -f "/etc/bookings/SERVER_ROLE" ]; then
  PROMPT='${ret_status}%{$fg_bold[green]%}%m %{$fg_bold[blue]%}%c $(git_prompt_info)% %{$reset_color%}'
else
  PROMPT='${ret_status}%{$fg_bold[green]%}local %{$fg_bold[blue]%}%c $(git_prompt_info)% %{$reset_color%}'
fi

ZSH_THEME_GIT_PROMPT_CLEAN=") %{$fg_bold[green]%}✔ "
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg_bold[yellow]%}✗ "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
