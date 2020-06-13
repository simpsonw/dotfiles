# dotfiles for @simpsonw 

## dotfiles

These are my dotfiles for configuring bash, git, and many other things.  These
are targeted for my current Linux distro of choice, Ubuntu 20.04 (using `regolith-desktop`),  
and have not been tested on other environments.  This repo started as a fork of the
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
