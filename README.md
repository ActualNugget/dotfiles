# Dotfiles
An awesome way to manage and store all my dotfiles using a git bare repository, inspired by [this blogpost](https://www.atlassian.com/git/tutorials/dotfiles) by Nicola Paolucci.

## Features
- The `config` alias replaces `git` to easily stage and commit any changes from anywhere in the home directory:

```
config status
config add .gitconfig
config commit -m "add: git"
config push
```

- Configs borrowed from other repos like [NvChad](https://github.com/NvChad/NvChad) are forked and added as submodules, with upstream changes regularly merged using GitHub Workflows


## Setup
After having spun up fresh CTF boxes and Raspberry Pis one too many times, I needed a shortcut to set them up the way I like. The venerable `curl` helps quickly make any of these clean installs feel just like home, with a single command:

    curl -Lks https://raw.githubusercontent.com/ActualNugget/dotfiles/main/.dots/install.sh | /bin/bash


If this is being installed on a system where I've set up GitHub SSH, this script is used instead:

    curl -Lks https://raw.githubusercontent.com/ActualNugget/dotfiles/main/.dots/install-ssh.sh | /bin/bash

## Further Steps
### Neovim
1. Install `python3-venv`, `npm`
2. In nvim, run `:MasonInstallAll`

