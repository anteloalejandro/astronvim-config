# AstroNvim v5 configuration

Contains configuration files for [AstroNvim](https://astronvim.com), based on [AstroNvim/template](https://github.com/AstroNvim/template).

## Installation

### Install dependencies

- neovim (duh!)
- gcc (or other C compiler)
- nodejs and npm
- python3 and python3-venv

### Make a backup of your current nvim and shared directories

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Clone this repo into the nvim directory

```shell
git clone https://github.com/anteloalejandro/astronvim-config ~/.config/nvim
```

### Start Neovim

```shell
nvim
```
