============
My dot files
============
Here are my dot files
  - bashrc
  - vimrc
    - for neovim
  - gitconfig

The setup-dot-files.sh script does a few things:
  - sets up the sym links for the dot files that live at ~
  - saves any old dot files in ~/[dot-file-name].back
  - installs neovim
  - installs the Plug plugin manager for neovim

Things to note about setup-dot-files.sh:
  - assumes this repo is at ~/workspace/dot-files
  - right now it only works with the dnf package manager
  - it only needs to be run once
