# What are dotfiles?

Taking their name from the so-called hidden files or "dot files" on Linux/Mac that are preceded with a '.', e.g. `.bash_profile`, "dotfiles" is a loose methodology for storing the things that are important to you about your computer's setup, with the goal of making it easy to get set up and running the way you are used to when/if you have to change/upgrade/replace your computer (or change jobs, or want to clone your work setup to your private machine, etc).

Many words and repositories have been written and created which will provide a better high-level intro than I can. Here are two:

[Getting started with dotfiles, Dries Vints](https://driesvints.com/blog/getting-started-with-dotfiles)  
[Getting started with dotfiles (Medium), Lars Kappert](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789)  

Hat tip to Eric Baer, wherever he is, for introducing me to the concept. This repo is forked from [Dries Vints's dotfiles](https://github.com/driesvints/dotfiles).

Everyone's dotfiles are different. I'm a luddite, so mine are pretty simple. For me, the dotfiles almost serve more as a reminder of what I like to use on my system, as they do for explicitly auto-configuring a new machine. But a little auto-setup can't hurt, right?

## Code Editor

A lot of my steps assume you use Visual Studio Code as your IDE (integrated development environment), for example for your default Git editor and viewing your shell dotfiles (`.zshrc` or `.bash_profile`). If you don't, you can search these dotfiles for occurrences of `code` or `VS Code` and substitute your own IDE shorthand as needed.

### Setting up your Mac

Presuming your new Mac is basically up to date and ready to go, start here. If you want to start from scratch (wipe your hard drive, etc), [consider these steps first](https://github.com/driesvints/dotfiles#a-fresh-macos-setup).

1. Install any available updates to macOS from the App Store
1. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/cjseattle/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

1. Update your Github.com account and any Enterprise Github accounts [with your new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account). 

1. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone git@github.com:cjseattle/dotfiles.git ~/.dotfiles
    ```

1. Run the installation with:

    ```zsh
    ~/.dotfiles/fresh.sh
    ```

1. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
1. Restart your computer to finalize the process

Your Mac is now ready to use!

> 💡 You can use a different location than `~/.dotfiles` if you want. Make sure you also update the reference in the [`.zshrc`](./.zshrc#L2) file.

## Your Own Dotfiles

**Please note that the instructions below assume you already have set up Oh My Zsh so make sure to first [install Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started) before you continue.**

If you want to start with your own dotfiles from this setup, it's pretty easy to do so. First of all you'll need to fork this repo. After that you can tweak it the way you want.

Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find many more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).

Check out the [`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.

Check out the [`aliases.zsh`](./aliases.zsh) file and add your own aliases. If you need to tweak your `$PATH` check out the [`path.zsh`](./path.zsh) file. These files get loaded in because the `$ZSH_CUSTOM` setting points to the `.dotfiles` directory. You can adjust the [`.zshrc`](./.zshrc) file to your liking to tweak your Oh My Zsh setup. More info about how to customize Oh My Zsh can be found [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization).

When installing these dotfiles for the first time you'll need to backup all of your settings with Mackup. Install Mackup and backup your settings with the commands below. Your settings will be synced to iCloud so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you want to save your settings to a different directory or different storage than iCloud, [checkout the documentation](https://github.com/lra/mackup/blob/master/doc/README.md#storage). Also make sure your `.zshrc` file is symlinked from your dotfiles repo to your home directory. 

```zsh
brew install mackup
mackup backup
```

You can tweak the shell theme, the Oh My Zsh settings and much more. Go through the files in this repo and tweak everything to your liking.

Enjoy your own Dotfiles!

## Thanks To...

I first got the idea for starting this project by visiting the [GitHub does dotfiles](https://dotfiles.github.io/) project. Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration. [Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable. Thanks to [@subnixr](https://github.com/subnixr) for [his awesome Zsh theme](https://github.com/subnixr/minimal)! Thanks to [Caneco](https://twitter.com/caneco) for the header in this readme. And lastly, I'd like to thank [Emma Fabre](https://twitter.com/anahkiasen) for [her excellent presentation on Homebrew](https://speakerdeck.com/anahkiasen/a-storm-homebrewin) which made me migrate a lot to a [`Brewfile`](./Brewfile) and [Mackup](https://github.com/lra/mackup).

In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community.
