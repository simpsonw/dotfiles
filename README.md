# dotfiles for @simpsonw 

## dotfiles

These are my dotfiles for configuring bash, git, and many other things.  These
are targeted for my current Linux distro of choice, Linux Mint 18.3 and have not
been tested on other environments.  This repo started as a fork of the
[dotfiles](https://github.com/holman/dotfiles) repo from @holman.

I decided to "unfork" from the main holman repo since I tend to use Bash rather than
ZSH and I don't use macOS.

## install

Run this:

```sh
git clone https://github.com/simpsonw/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

```sh
script/install
```

Will install dependencies, some of which are coming from apt and others of which
are coming from other sources like Github.

I currently use the [Spacesmacs](https://github.com/syl20bnr/spacemacs)
distribution of [GNU Emacs](https://www.gnu.org/software/emacs/) as my main text
editor.  Spacemacs recommends that you use Emacs version 24.4+ to get the best
experience.  Unfortunately, the default repos for Linux Mint only contain older
versions of Emacs.  I have included a simple script to build Emacs 24.5.1 from
source and install it.  Before you run it, make sure you check the "Enable
source code repositores" box under "Software Sources."  Then you can run:

```sh
spacemacs/emacs-install.sh
```

to build and install.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME` with the exception of files in the nvim directory, which are symlinked
  to ~/.config/nvim/. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
