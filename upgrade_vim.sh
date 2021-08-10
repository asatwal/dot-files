#!/bin/bash

# brew install tmux
# brew install macvim --override-system-vim
# brew install reattach-to-user-namespace
# brew install tmux

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim-rails
cd ~/.vim/bundle/vim-rails
git pull

cd ~/.vim/bundle/vim-bundler
git pull

# To generate help tags
#:helptags ~/.vim/bundle/nerdtree/doc
#:helptags ~/.vim/bundle/vim-fugitive/doc
#:helptags ~/.vim/bundle/vim-ruby/doc
#:helptags ~/.vim/bundle/vim-endwise/doc
#:helptags ~/.vim/bundle/supertab/doc
#:helptags ~/.vim/bundle/surround.vim/doc

#:helptags ~/.vim/bundle/syntastic/doc
#:helptags ~/.vim/bundle/ctrlp.vim/doc
#:helptags ~/.vim/bundle/vim-airline/doc
#:helptags ~/.vim/bundle/vim-colors-solarized/doc
#:helptags ~/.vim/bundle/nerdcommenter/doc
#:helptags ~/.vim/bundle/vim-rails/doc
#:helptags ~/.vim/bundle/vim-easymotion/doc
#:helptags ~/.vim/bundle/tabular/doc
#:helptags ~/.vim/bundle/git-gutter/doc
#:helptags ~/.vim/bundle/tagbar.git/doc
#:helptags ~/.vim/bundle/tabular.git/doc
#:helptags ~/.vim/bundle/vim-repeat.git/doc
#:helptags ~/.vim/bundle/YouCompleteMe.git/doc
#:helptags ~/.vim/bundle/unite.vim.git/doc


# NERDTree
cd ~/.vim/bundle/nerdtree
git pull

# Fugitive
cd ~/.vim/bundle/vim-fugitive
git pull

# Ruby
cd ~/.vim/bundle/vim-ruby
git pull

# Endwise
cd ~/.vim/bundle/vim-endwise
git pull

# Supertab
cd ~/.vim/bundle/supertab
git pull

# Syntastic
cd ~/.vim/bundle/syntastic
git pull

# CTRLP.VIM
cd ~/.vim/bundle/ctrlp.vim
git pull

# Vim-airline
cd ~/.vim/bundle/vim-airline
git pull

# vim-colors-solarized
cd ~/.vim/bundle/vim-colors-solarized
git pull

# NERD Commenter
cd ~/.vim/bundle/nerdcommenter
git pull

# Tag bar
cd ~/.vim/bundle/tagbar
git pull

# Rails
cd ~/.vim/bundle/vim-rails
git pull

# Easy motion
cd ~/.vim/bundle/vim-easymotion
git pull

# Tabular
cd ~/.vim/bundle/tabular
git pull

# VIM Git gutter
cd ~/.vim/bundle/vim-gitgutter
git pull

# vim repeat
cd ~/.vim/bundle/vim-repeat
git pull

# You Complete Me
cd ~/.vim/bundle/YouCompleteMe
git pull
cd ~/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
./install.py

# Unite
cd ~/.vim/bundle/unite.vim
git pull

# Monakai color scheme
cd ~/.vim/bundle/vim-monokai
git pull

mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-monokai/colors/monokai.vim ~/.vim/colors

cd ~/.vim/bundle/ag.vim
git pull

cd ~/.vim/bundle/vim-bufferline
git pull

# Provide Bdelete command in vim
cd ~/.vim/bundle/vim-bbye
git pull

# Vim cucumber
cd ~/.vim/bundle/vim-cucumber
git pull

# Vim rspec
cd ~/.vim/bundle/vim-rspec
git pull

# Vim dispatch
cd ~/.vim/bundle/tslime.vim
git pull

# Vim emmet
cd ~/.vim/bundle/emmet-vim
git pull

# Bracketed paste
cd ~/.vim/bundle/vim-bracketed-paste
git pull

