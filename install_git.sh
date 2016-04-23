#!/bin/bash

mkdir -p ~/.bash

cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.bash/git-completion.bash

