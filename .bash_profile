PATH=.:$HOME/bin:/usr/local/bin:$PATH

eval "$(rbenv init -)"

# Gcloud
source "$(brew --prefix)/share/google-cloud-sdk/path.bash.inc"

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff'
alias go='git checkout '
alias gl='git log --graph --format=oneline'
alias tm='tmux start-server \; source-file ~/.tmux/dev.tmux.conf'
alias tn='tmux new-session -A -s dev -n ide'
alias be='bundle exec '
alias bo='cd ~/Documents/Python/bounce'

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'
export GREP_COLOR='1;37;41'

export CLICOLOR=ANSI
export LSCOLORS="exfxcxdxcxegedabagacad"

# VIM
export EDITOR=/usr/local/bin/vim
set -o vi

export PHANTOMJS_BIN=/usr/local/bin/phantomjs

# Git branch prompt
# Install to ~/.bash: git clone git://github.com/jimeh/git-aware-prompt.git
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Git completion
source ~/.bash/git-completion.bash

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave.3.6
PATH="/usr/local/opt/python@3.8/bin:${PATH}"
export PATH
export LDFLAGS="-L/usr/local/opt/python@3.8/lib"
export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig:${PKG_CONFIG_PATH}"

export NVM_DIR="$HOME/.nvm"
. $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Anything that shouldn't be commited to github
source ~/.secrets
