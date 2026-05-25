# My .files configuration

My personal dotfiles configuration for Unix machines.

Most Unix command-line programs can be set up by a list of plain-text
hidden files, usually referred to as dotfiles. Since I usually use Linux, I created this project
to include my own configuration.

## Features

- Bash and ZSH support
- Custom aliases, exports, and functions
- Neofetch and termite support
- Hyper shell configuration
- VSC general settings

## Installation

```
git clone https://github.com/losedavidpb/bash-dotfiles
cd bash-dotfiles

sudo apt update
./install.sh

rm -rf bash-dotfiles
source ~/<RC_FILE>
```

## Requirements

The `install.sh` script automatically installs the following packages if a
supported package manager is available on the current system. Otherwise, the following must be installed manually.

- [Neofetch](https://github.com/dylanaraps/neofetch)
- [Termite](https://github.com/thestinger/termite)
- [ZSH](https://github.com/zsh-users/zsh)
- [ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [ZSH History Substring Search](https://github.com/zsh-users/zsh-history-substring-search)
- [ZSH Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

## Dependencies

Some dependencies may vary depending on the Unix distribution being used. Therefore, the `install.sh` script only installs the most common packages, so additional
dependencies may need to be installed manually.

## Structure

```text
~/.config/shell
├── bash/                  # Bash configuration files
├── hyper/                 # Hyper terminal configuration
├── neofetch/              # Neofetch configuration
├── termite/               # Termite terminal configuration
├── vscode/                # VSC general settings
├── zsh/                   # ZSH configuration files
├── aliases                # Shell aliases
├── exports                # Environment variables
├── functions              # Utility shell functions
├── install.sh             # Automatic installation script
└── old_dotfiles.tar       # Backup created during installation
```