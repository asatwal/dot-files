eval "$(rbenv init -)"
set -o vi
PATH=.:$HOME/bin:/usr/local/bin:$PATH

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias tm='tmux source-file ~/.tmux/dev.tmux.conf'
alias tn='tmux attach-session -t dev || tmux new-session -s dev -n ide'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'
export GREP_COLOR='1;37;41'

export CLICOLOR=ANSI
export LSCOLORS="exfxcxdxcxegedabagacad"

export EDITOR=/usr/local/bin/vim


