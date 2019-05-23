# KYOZ NEOVIM
> Cool & Modularized vim configurations to work like an IDE

![Preview on Ubuntu 18.04](./images/preview.png)

## Table of contents

---
  * [Introduction](#introduction)
  * [Requirements](#requirements)
    * [System](#system)
    * [Neovim](#neovim)
    * [Nodejs](#nodejs)
    * [Providers](#providers)
  * [Installation](#installation)
    * [Download](#download)
    * [Install Plugin](#install-plugins)
    * [Fonts](#fonts)
    * [Others](#others)
  * [Features](#features)
    * [Support Languages](#support-languages)
    * [Plugins](#plugins)
  * [Customize](#customize)
    * [Structural](#structural)
    * [Mappings](#mappings)
  * [License](#license)
---

## Introduction

I'v falled in love with Vim in the first time i'v tried it. I love the way i can coding, writing without using mouse or trackpad to move the cursor arround...

In the past, i just use VSCode as my main editor. If Vim doesn't exist in my life, i think VSCode definitely is the best (with me).

There are times i'v quit using Vim cause it's so hard to customize and using, mostly because i can't integrate autocomplete for it. So i give up and back to using VSCode.

But then i'v figure out that i can't life without Vim. I have to install [VSCodeVim](https://github.com/VSCodeVim/Vim) (An extension provide some Vim feature in VSCode). Although it work, but it lack a lot of Vim's features.

Then i'm back with vim, this time i pay a lots of time to learn, to customize my vimrc. And now, i'm really happy that i can use Vim (Nvim) as my main editor with those configurations. :blush:

## Requirements

### System

Those configurations is only for **Neovim**, although most plugins work with **Vim** too, but i'v built this only for **Neovim**.

For **Vim**, i just have some minimal configurations in [my dotfiles](https://github.com/banminkyoz/dotfiles).

Those configurations work well on almost all OS i'v ever used (OSX, Linux, Window...).

But as it scale, i haven't have times to check it all, for now i just use OSX at home and Linux at work. So i can only make sure it work well on OSX and Linux. If you have any problem with Window please open an issue.

### Neovim

In order to have all the coolest features. You should install [lastest release](https://github.com/neovim/neovim/releases/tag/nightly) (>= 0.4.0) Nvim. Which support some new great features like float window...

### Nodejs

There's a lot of plugins that use external packages (Like language server protocol...). And we do need to install Nvim Node.js provider too. So Nodejs & Npm is needed.

Please [download](https://nodejs.org/en/download/) and install it or you can install it [via package manager](https://nodejs.org/en/download/package-manager/)

### Providers

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

Nvim Node.js client is also needed (for neovim to be able to communicate with plugins). Let install it too:

```sh
npm install -g neovim
```

## Installation

Before starting with this step, you must make sure that you'v read and install everything required in above steps.

And make sure there's no ERROR showing when running `:checkhealth` in nvim.

### Download

Download everything in this repo and put em in the `.nvim` folder of yours. Or clone it with git:

```
git clone git@github.com:banminkyoz/neovim.git ~/path_to_your_nvim_folder

" Example
git clone git@github.com:banminkyoz/neovim.git ~/.config/nvim
```

### Install Plugins

Open nvim and use `:PlugInstall` or `:PlugI` to install all plugins (There will be some error showing when you first running this, just enter to pass them all, and install the plugins).

Quit and re-open nvim and now you have nvim with a lots of feature which can be your main IDE.

### Fonts

In order to make everything look cool as it have to (with vim-arline, nerd-tree icons...), we have to using patched fonts. You can [view some pathced fonts here](https://github.com/ryanoasis/nerd-fonts).

There's a [/fonts](https://github.com/banminkyoz/neovim/tree/master/fonts/Iosevka) folder with patched Iosevka font, which i'm using now. You can use it too.

I'v tried a lots of fonts, but this Iosevka font seem suitable for me, it's easy to read and doesn't make me lose focus when coding.

### Others

It's hard to cover all the cases when install neovim in each machine, os...

Please run `:checkhealth` in nvim to make sure everything is ok. Follow it's constructions and fix any errors you see.

If there's still error, please open and issue and let me know, i'm happy to help.

## Features

### Support Languages

### Plugins

## Customize

### Structural

There's no configurations suitable for everyone. Each one have different tastes.

So, in order to easily customize those configuration. You must understand the structural of configuration files.

```
/home/kyoz/.config/nvim
├── autoload/
├── colors/
├── configs/
│   ├── init.vim
│   ├── general.vim
│   ├── indent.vim
│   ├── keys.vim
│   ├── plugins.vim
│   ├── autocomplete.vim
│   └── lsp.vim
├── fonts/
├── plugged/
├── snippets/
├── init.vim
└── ginit.vim
```

### Mappings

## License

MIT © [Kyoz](mailto:banminkyoz@gmail.com)
