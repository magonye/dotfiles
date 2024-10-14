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
meetingbar
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
  arch -arm64 brew install $f
done
