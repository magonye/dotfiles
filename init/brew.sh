#!/bin/sh
IFS='
'
# Make sure we’re using the latest Homebrew
brew update

brew tap heroku/brew

formulae="
ack
autojump
bat
gettext
git
git-recent
grep
heroku
htop
pv
rbenv
ruby-build
screen
stern
tree
vim
watch
wget
"
for f in $formulae; do
  echo ">> $f"
  brew install $f
done
