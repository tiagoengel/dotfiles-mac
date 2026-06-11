# dotfiles

Minimal macOS dev setup: plain zsh (no framework) + [Starship](https://starship.rs) prompt + modern CLI tools.

## New Mac setup

```bash
# 1. Install Homebrew (also installs the Xcode Command Line Tools)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# 2. Clone and install
git clone git@github.com:tiagoengel/dotfiles-mac.git ~/dotfiles-mac
cd ~/dotfiles-mac
brew bundle          # install everything in the Brewfile
./bootstrap.sh       # copy dotfiles into ~
./macos.sh           # sane macOS defaults (optional)

# 3. Restart the terminal
```

## Runtimes

Node, Java, Ruby etc. are managed by [mise](https://mise.jdx.dev) (replaces nvm/rvm/sdkman):

```bash
mise use -g node@lts
mise use -g java@17
```

## Private / machine-specific config

`~/.extra` is sourced by `.zshrc` but never committed. Put work aliases,
tokens and anything machine-specific there.
