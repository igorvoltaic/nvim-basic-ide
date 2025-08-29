#

```shell
┓┏  ┓ ┓┏•   
┃┃┏┓┃╋┃┃┓┏┳┓
┗┛┗┛┗┗┗┛┗┛┗┗
```

This config will provide a starting point for anyone looking to use
Neovim as their IDE. It is meant to be simple and easy to understand and extend.
Use it as a base for your own config or just take individual pieces.

## Install Neovim 0.11

You can install Neovim with your package manager e.g. brew, apt, pacman etc..
but remember that when you update your packages Neovim may be upgraded to a newer
version.

If you would like to make sure Neovim only updates when you want it to than its recommended
installing from source:
[instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)

## Install the config

Make sure to remove or backup your current `nvim` directory

```shell
git clone git@github.com:igorvoltaic/nvim-basic-ide.git ~/.config/nvim
```

I prefer using this alias:

```shell
alias v=nvim
```

Run `nvim` and wait for the plugins to be installed

## Optional installs

Open `nvim` and enter the following:

```vim
:checkhealth
```

### If you don't have support for copy/paste

- On Ubuntu

```shell
sudo apt install xsel # for X11
sudo apt install wl-clipboard # for wayland
```

### If you need Python and Node support

Neovim python support

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

[Nerd Font](https://github.com/ronniedroid/getnf) is recommended
