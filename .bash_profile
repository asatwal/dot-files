eval "$(rbenv init -)"
set -o vi
PATH=.:$HOME/bin:/usr/local/bin:$PATH

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff'
alias go='git checkout '
alias gl='git log --graph --format=oneline'
alias tm='tmux source-file ~/.tmux/dev.tmux.conf'
alias tn='tmux attach-session -t dev || tmux new-session -s dev -n ide'

alias be='bundle exec '
alias bs='cd ~/bigsofa'
alias bsp='cd ~/bigsofa/platform'
alias rad='cd ~/which/reviews-and-advice'
alias svc='cd ~/which/services'
alias bcg='cd ~/bcg-dv'
alias bcgs='cd ~/bcg-dv/search'
alias bcgm='cd ~/bcg-dv/metalhub'
alias bcgw='cd ~/bcg-dv/metalhub-web'
alias logs='ssh -i ~/pem/log.pem log@logserver.infra.yellow.which.co.uk'


export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'
export GREP_COLOR='1;37;41'

export CLICOLOR=ANSI
export LSCOLORS="exfxcxdxcxegedabagacad"

export EDITOR=/usr/local/bin/vim
# export VIMRUNTIME=/usr/local/share/vim/vim74
export PHANTOMJS_BIN=/usr/local/bin/phantomjs

# Git branch prompt
# Install to ~/.bash: git clone git://github.com/jimeh/git-aware-prompt.git
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Git completion
source ~/.bash/git-completion.bash
