#!bash

# brew install tmux
# brew install macvim --override-system-vim
# brew install reattach-to-user-namespace
# brew install tmux

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim-rails
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-rails.git
git clone git://github.com/tpope/vim-bundler.git

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
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# Fugitive
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git

# Ruby
cd ~/.vim/bundle
git clone git://github.com/vim-ruby/vim-ruby.git

# Endwise
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-endwise.git

# Supertab
cd ~/.vim/bundle
git clone git://github.com/ervandew/supertab.git

# Syntastic
cd ~/.vim/bundle
git clone git://github.com/scrooloose/syntastic.git

# CTRLP.VIM
cd ~/.vim/bundle
git clone  git://github.com/kien/ctrlp.vim.git

# Vim-airline
cd ~/.vim/bundle
git clone git://github.com/bling/vim-airline.git

# vim-colors-solarized
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

# NERD Commenter
cd ~/.vim/bundle
git clone git://github.com/scrooloose/nerdcommenter.git

# Tag bar
cd ~/.vim/bundle
git clone git://github.com/majutsushi/tagbar.git

# Rails
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-rails.git

# Easy motion
cd ~/.vim/bundle
git clone  git://github.com/Lokaltog/vim-easymotion.git

# Tabular
cd ~/.vim/bundle
git clone git://github.com/godlygeek/tabular.git

# VIM Git gutter
cd ~/.vim/bundle
git clone git://github.com/airblade/vim-gitgutter.git

# vim repeat
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-repeat.git

# You Complete Me
cd ~/.vim/bundle
git clone git://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
./install.sh

# Unite
cd ~/.vim/bundle
git clone git://github.com/Shougo/unite.vim.git

# Monakai color scheme
cd ~/.vim/bundle
git clone git://github.com/sickill/vim-monokai.git

mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-monokai/colors/monokai.vim ~/.vim/colors

cd ~/.vim/bundle
git clone git://github.com/rking/ag.vim

cd ~/.vim/bundle
git clone git://github.com/bling/vim-bufferline

# Provide Bdelete command in vim
cd ~/.vim/bundle
git clone git://github.com/moll/vim-bbye.git

# Vim cucumber
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-cucumber.git

# Vim rspec
cd ~/.vim/bundle
git clone git://github.com/thoughtbot/vim-rspec

# Vim dispatch
cd ~/.vim/bundle
git clone git://github.com/jgdavey/tslime.vim/

