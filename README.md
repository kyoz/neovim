# KYOZ NEOVIM

![Preview on Ubuntu 18.04](./images/preview.png)

## :four_leaf_clover: Required for neovim

Must install neovim providers ( most nvim plugins do need em to work).
Python 2 is no actually required. But some plugin may need it, so just install them all :laughing:

```sh
  # Installing python 2.7 and pip for it
  sudo apt install python2.7 python-pip
  # Installing python-pip for 3.6
  sudo apt install python3-pip

  # Install neovim for python 2
  pip2 install pynvim
  # Install neovim for python 3
  pip3 install pynvim
```
Already installed python neovim ? Then upgrade it (Some plugins need latest versions)

```sh
  # Upgrade neovim for python 2
  pip2 install --upgrade pynvim
  # Upgrade neovim for python 3
  pip3 install --upgrade pynvim
```

## :four_leaf_clover: Install Plugins

I do use [VimPlug](https://github.com/junegunn/vim-plug) to manage plugins, just open `nvim` and use `:PlugInstall` to install all plugins and necessary packages...
