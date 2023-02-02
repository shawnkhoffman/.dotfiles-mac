# .dotfiles (macOS)

The term "dotfiles" refers to a user's personal configurations to various programs they have running on their system. These configurations respectively are my macOS configs.

## Table of Contents

- [.dotfiles (macOS)](#dotfiles--macOS-)
  - [Start Here](#start-here)
  - [Initial Setup](#initial-setup)
    - [Automatic](#automatic)
    - [Manual](#manual)
  - [Installing/Uninstalling dotfiles](#installing-uninstalling-dotfiles)
  - [Installing Packages](#installing-packages)

---

## Start Here

This installation method intelligently makes use of [GNU Stow](https://www.gnu.org/software/stow/), which is required for installation. If you do not already have this package, install it.

> **Note:** If you're not already familiar with stow, I highly recommend learning how to make use of it on Unix-like systems whether you're a professional or a power user.

```bash
brew install stow
```

You will also need Git.

```bash
brew install git
```

Clone this repo into your `$HOME` directory using SSH and `cd` into it.

```bash
git clone git@github.com:shawnkhoffman/.dotfiles-mac.git
cd .dotfiles-mac
```

## Initial Setup

### Automatic

Simply run the [setup.sh](/setup.sh) script and follow the instructions at the prompt.

You will first be asked if you want to initialize the submodules for this repo. This is a prerequisite for installing most of the dotfiles.

You will then have the option to download the [4K wallpapers](https://github.com/shawnkhoffman/wallpapers-4k) which will then be added to your dotfiles if you install them for the home directory in the next step.

Once the initial setup is complete, it will give you the option of automatically starting the installer script ([installer.sh](/installer.sh)).

### Manual

Initialize the git submodules from within the root of the repo.

```bash
git submodule update --init --recursive
```

If you want the [4K wallpapers](https://github.com/shawnkhoffman/wallpapers-4k), add it as a submodule from within the root of the repo.

```bash
git submodule add git@github.com:shawnkhoffman/wallpapers-4k.git home/wallpapers-4k
```

## Installing/Uninstalling dotfiles

After the initial setup is complete, installing/uninstalling is a very straightforward process; simply execute the [installer.sh](/installer.sh) script and follow the instructions at the prompt.

---

## Installing Packages

The [/packages](/packages) directory contains the `Brewfile` with all of the packages and casks that I use on macOS.

This assumes you use brew for package management. Install packages from the `Brewfile`:

```bash
cd packages/
brew bundle
```

To create a `Brewfile` of your own, run the following command:

```bash
brew bundle dump
```
