```
__/\\\________/\\\________________/\\\\\\___________________/\\\________/\\\___________________________        
 _\/\\\_______\/\\\_______________\////\\\__________________\/\\\_______\/\\\___________________________       
  _\//\\\______/\\\___________________\/\\\________/\\\______\//\\\______/\\\___/\\\_____________________      
   __\//\\\____/\\\_______/\\\\\_______\/\\\_____/\\\\\\\\\\\__\//\\\____/\\\___\///_____/\\\\\__/\\\\\___     
    ___\//\\\__/\\\______/\\\///\\\_____\/\\\____\////\\\////____\//\\\__/\\\_____/\\\__/\\\///\\\\\///\\\_    
     ____\//\\\/\\\______/\\\__\//\\\____\/\\\_______\/\\\_________\//\\\/\\\_____\/\\\_\/\\\_\//\\\__\/\\\_   
      _____\//\\\\\______\//\\\__/\\\_____\/\\\_______\/\\\_/\\______\//\\\\\______\/\\\_\/\\\__\/\\\__\/\\\_  
       ______\//\\\________\///\\\\\/____/\\\\\\\\\____\//\\\\\________\//\\\_______\/\\\_\/\\\__\/\\\__\/\\\_ 
        _______\///___________\/////_____\/////////______\/////__________\///________\///__\///___\///___\///__

```

This config will provide a modular starting point for anyone looking to use Neovim as their IDE. It is meant to be simple and easy to understand and extend. Use it as a base for your own config or just take individual pieces.

## Install Neovim 0.10

You can install Neovim with your package manager e.g. brew, apt, pacman etc.. bus remember that when you update your packages Neovim may be upgraded to a newer version.

If you would like to make sure Neovim only updates when you want it to than I recommend installing from source: [instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)

## Install the config

Make sure to remove or backup your current `nvim` directory

```sh
git clone git@github.com:igorvoltaic/nvim-basic-ide.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

## Fonts

Fonts that support icons is required. I recommend using [this "Nerd Font" repo](https://github.com/ronniedroid/getnf).


---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.

\- Edsger W. Dijkstra
