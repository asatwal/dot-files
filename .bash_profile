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

alias be='bundle exec '
alias rad='cd ~/which/reviews-and-advice'
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

# Node
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
