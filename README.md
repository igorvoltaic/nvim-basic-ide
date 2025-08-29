#

```shell
┓┏  ┓ ┓┏•   
┃┃┏┓┃╋┃┃┓┏┳┓
┗┛┗┛┗┗┗┛┗┛┗┗
```

This config will provide a starting point for anyone looking to use
Neovim as their IDE. It is meant to be simple, easy to understand and extend.
Use it as a base for your own config or just take individual pieces.

## Install Neovim 0.11

You can install Neovim with your package manager e.g. brew, apt, pacman etc..
but remember that when you update your packages Neovim may be upgraded to a newer
version.

To make sure Neovim only updates when you want its recommended
installing it from source:
[instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)

## Installing this config

Make sure to backup your current `nvim` directory

```shell
mv ~/.config/nvim ~/.config/nvim_backup
git clone git@github.com:igorvoltaic/nvim-basic-ide.git ~/.config/nvim
```

I prefer using this alias to start `nvim`

```shell
alias v=nvim
```

## Optional installs

### If you don't have support for copy/paste on Ubuntu

```shell
sudo apt install xsel # for X11
sudo apt install wl-clipboard # for wayland
```

### If you need Python and Node support

```shell
pip install pynvim
npm i -g neovim
```

### `ripgrep`  is required for Telescope

```shell
sudo apt install ripgrep  # Ubuntu
brew install ripgrep  # macosx
```

## Fonts

[Nerd Font](https://github.com/ronniedroid/getnf) is recommended with this configurations

## Included plugins

All included and installed plugins can be found in [lazy-lock.json](./lazy-lock.json)

## Useful links

[Lanch.nvim](https://github.com/LunarVim/Launch.nvim)
: Modular starting point for Neovim IDE

[Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
: Guide for your own Neovim configuration

[radleylewis/nvim](https://github.com/radleylewis/nvim)
: NeoVim for software development setup guide

[radleylewis/nvim-lite](https://github.com/radleylewis/nvim-lite)
: Featureful Neovim config without plugins
