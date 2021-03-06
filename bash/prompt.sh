# http://blog.bitfluent.com/post/27983389/git-utilities-you-cant-live-without
# http://superuser.com/questions/31744/how-to-get-git-completion-bash-to-work-on-mac-os-x
# http://tammersaleh.com/posts/a-better-rvm-bash-prompt
# https://rvm.beginrescueend.com/workflow/prompt/

# git bash completion.
# Required for the prompt. Also provides autocompletion of git commands and branch names.
. ~/.dotfiles/bash/lib/git-completion.bash

function __rvm_prompt {
  rvm-prompt i v g s
}

function __git_prompt {
  GIT_PS1_SHOWDIRTYSTATE=1
  __git_ps1 "%s" | sed 's/ \([+*]\{1,\}\)$/\1/'
}

bash_prompt() {

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  local BK="\[\033[1;30m\]"
  local BR="\[\033[1;31m\]"
  local BG="\[\033[1;32m\]"
  local BY="\[\033[1;33m\]"
  local BB="\[\033[1;34m\]"
  local BM="\[\033[1;35m\]"
  local BC="\[\033[1;36m\]"
  local BW="\[\033[1;37m\]"

  # reset
  local RESET="\[\033[0;37m\]"

  #PS1="$BY\u@\h $Y\w$G[\$(__git_prompt)]$RESET$ "
PS1="$BY\u $Y\w$G[\$(__git_prompt)]$RESET$ "
}

bash_prompt
unset bash_prompt
