dotfiles
========

A combination of Antigen, Homesick and some private repos at Bitbucket dotfiles setup. 

Some inspiration: [technicalpickles/homesick](http://www.github.com/technicalpickles/homesick), [mathiasbynens/dotfiles](http://www.github.com/mathiasbynens/dotfiles)

# Installation 

## Homebrew

Installing Homebrew first we will get Command Line Tools (required) and an old git version for free that would do the trick to use homesick

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Ruby

Due to newer ruby versions in macOS, gem needs sudo (wrong) to run. Better install ruby ourselves before installing homesick.

    brew install rbenv
    init/ruby.zsh
    eval "$(rbenv init -)"

## Homesick

Install Homesick first

    gem install homesick

Time to set up my ssh config

    homesick clone https://magonye@...
    homesick link ssh-home

Fix file permissions

    sudo chmod 600 ~/.ssh/id_rsa
    sudo chmod 600 ~/.ssh/id_rsa.pub

Now it's time to clone this `dotfiles` as a Castle

    homesick clone git@github.com:magonye/dotfiles.git
    homesick link dotfiles

This `dotfiles` at the same time is an antigen plugin.

## Optional plugins per laptop

If you want to load more antigen plugins, but depending on the laptop (eg: work), create a file `~/.antigenextra` to load more bundles.

    vim ~/.antigenextra
    antigen bundle $HOME/.homesick/repos/home-bumble --no-local-clone

## More Homes

For example, private scripts or configs with licences

    homesick clone git@github.com:magonye/private-dotfiles.git
    homesick link private-dotfiles

## Upgrade zsh

Follow steps at https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/

Fix `compdef` errors:

    sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions
    chmod u+w /usr/local/share/zsh /usr/local/share/zsh/site-functions

# One time scripts

All of them located in `init` folder:

    init/brew.sh
    init/cash.sk
    init/macos.zsh
    init/sdkman.zsh

## Manytricks settings

If they're not picked up, run:

    killall cfprefsd

Some Moom hotkeys inspired in [Rectangle](https://github.com/rxhanson/Rectangle)

# Inspiration

* https://github.com/jordi9/dotfiles
* https://github.com/maximbaz/dotfiles
* https://github.com/paulirish/dotfiles
* https://github.com/sharat87/lawn/blob/master/shell/zsh
