# KYOZ NEOVIM

## :four_leaf_clover: Required for neovim

Must install neovim provider so that neovim pluggin will work property.
Python 2 is no actually required. But just install them all, for use work :laughing:

```sh
  # Install neovim for python 2
  pip install neovim
  # Install neovim for python 3
  pip3 install neovim
```
Already installed python neovim ? Just upgrade it (To make sure everything work properly):

```sh
  # Upgrade neovim for python 2
  pip install --upgrade neovim
  # Upgrade neovim for python 3
  pip3 install --upgrade neovim
```

Then you have to install those required pip modules

```sh
  # jedi for python completion
  # psutil (optional)
  # setproctitle (optional)
  pip3 install --user neovim jedi psutil setproctitle
```

## :four_leaf_clover: Required for pluggins

Prettier to format code with Neoformat ( Can format a lots of languages :smile: )

```sh
  # Install Prettier globally
  npm install -g prettier
```
:rocket: Other supported languages of Neofomat: [Supported Filetyles](https://github.com/sbdchd/neoformat#supported-filetypes)

## :four_leaf_clover: Required for syntax checking

I'm a web developer so i usually use those

```sh
  # For javascript
  npm install -g eslint
  # For typescript
  npm install -g tslint typescript
  # For html
  npm install -g htmlhint
  # For css
  npm install -g csslint
  # For scss, scss
  npm install -g sass-lint
  # For json
  npm install -g jsonlint
```

### :warning: **Notes:**

To support js, jsx, ts file, you must have eslint, tslint installed locally.
First let make a package.js file

```sh
  # Init package.json config for local project
  npm init 
```

Then:
To support js, jsx file, must install local eslint

```sh
  # Init eslint config for local project
  eslint --init
```

To support ts (typescript) file, must install local tslint

```sh
  # Init eslint config for local project
  eslint --init
```

:rocket: For other support languages: [Ale supported languages](https://github.com/w0rp/ale#1-supported-languages-and-tools)



" --- npm install -g tern " Source Javascript
