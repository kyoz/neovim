# KYOZ NEOVIM

![Preview on Ubuntu 18.04](./images/preview.png)

## Introduction

Introduction goes here

## Requirements

### Nodejs & Npm

There's a lot of plugins that do use external packages (Like language server protocol...). And we do need to install Nvim Node.js provider too. So Nodejs & Npm is needed.

Please [download](https://nodejs.org/en/download/) and install it or you can install it [via package manager](https://nodejs.org/en/download/package-manager/)

### Python providers

We have to install python providers (most nvim plugins do need em to work).
Python 2 is no actually required. But some plugin may need it, so just install them all :laughing:

Assume you are using linux:

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

### Nvim Node.js provider

Nvim Node.js client is also needed (for neovim to be able to communicate with plugins).

```sh
npm install -g neovim
```

### Fonts

In order to make everything look cool as it have to. We have to using patched fonts. You can [view some fonts here](https://github.com/ryanoasis/nerd-fonts).
There's a `/fonts` folder with patchec Iosevka font, which i'm using now. You can use it too.

### Others

It's hard to cover all the cases when install neovim in each machine, os...

Please run `:checkhealth` in nvim to make sure everything is ok. Follow it's constructions and fix any errors you see.

## How to install Plugins

I do use [VimPlug](https://github.com/junegunn/vim-plug) to manage plugins, just open `nvim` and use `:PlugInstall` to install all plugins and required packages...

## License

MIT © [Kyoz](mailto:banminkyoz@gmail.com)
