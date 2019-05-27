"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/

call plug#begin('~/.config/nvim/plugged') "---------------------- Start vim plug

" COLORS, THEMES {{{

Plug 'joshdick/onedark.vim' "------------------------------------- Onedark theme

" }}}

" TOOLBAR {{{

Plug 'bling/vim-airline' "---------------------------------- Status bar, Tabline
Plug 'vim-airline/vim-airline-themes' "---------------------  Vim-Airline Themes
Plug 'tpope/vim-fugitive' "---------- Just use to show git status in Vim-Airline

" }}}

" FINDER {{{

Plug 'ctrlpvim/ctrlp.vim' "----------------------------------------- File finder
" Use with the silver searcher (https://github.com/ggreer/the_silver_searcher)
Plug 'mileszs/ack.vim' "-------------------------------- Search in vim with grep

" }}}

" NAVIGATE {{{

Plug 'scrooloose/nerdtree' "------------------------------------------ Nerd Tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "-------------------- Icon colors
Plug 'ryanoasis/vim-devicons' "------------------------------------------- Icons
Plug 'easymotion/vim-easymotion' "----------- Jump around the screen like a boss

" }}}

" SYNTAX HIGHTLIGHT {{{

Plug 'sheerun/vim-polyglot' "-------- Syntax for almost all languages that exist
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }"  Typescript's Syntax
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } "------- Markdown's Syntax	
" Help colorize text color
Plug 'ap/vim-css-color', {
  \ 'for': [
    \ 'html',
    \ 'css',
    \ 'scss',
    \ 'sass',
    \ 'less'
    \ ] }
Plug 'Valloric/MatchTagAlways' "------- Always highlights the XML/HTML tags that enclose your cursor location

" }}}

" FASTER CODE {{{

Plug 'tmsvg/pear-tree' "------------------------------------- Auto pair brackets
Plug 'alvan/vim-closetag' "--------------------------------- Auto close html tag
Plug 'tpope/vim-surround' "--------------------------------------- Auto surround
Plug 'tpope/vim-commentary' "------------------------------- Comment code faster
Plug 'tpope/vim-repeat' "------------------------------ dot repeat with pluggins
Plug 'Yggdroot/indentLine' "---------------------------- Indent code with v-line
Plug 'wellle/targets.vim' "--------------------- Provides additional text object
Plug 'terryma/vim-expand-region' "------------------- Expand region, Use + and -
Plug 'mg979/vim-visual-multi' "--------------------------------- Multiple Cursor
Plug 'mattn/emmet-vim' "------------------------------------------ Emmet for vim

" }}}

" BEAUTIFY CODE {{{

Plug 'FooSoft/vim-argwrap' "------ Wrap and unwrap function args, list, dicts...
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'sass',
    \ 'scss',
    \ 'json',
    \ 'markdown',
    \ 'html' ] }

" }}}

" UTILS {{{

Plug 'NLKNguyen/copy-cut-paste.vim' "---------------- Copy, Paste with Clipboard
Plug 'banminkyoz/ezbuf.vim' "------------------------- Fast and easy use buffers
Plug 'banminkyoz/npm.vim' "-------------------- Work with npm more easier in Vim
" Markdown live preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

" }}}

" AUTOCOMPLETE {{{

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" }}}

" AUTOCOMPLETE EXTENTIONS {{{

" Languages
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-vimlsp', {'do': 'yarn install --frozen-lockfile'}
Plug 'josa42/coc-sh', {'do': 'yarn install --frozen-lockfile'}

" Frameworks
Plug 'iamcco/coc-angular', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-vetur', {'do': 'yarn install --frozen-lockfile'}

" Useful
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'}
Plug 'weirongxu/coc-calc', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-svg', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
Plug 'voldikss/coc-github', {'do': 'yarn install --frozen-lockfile'}
Plug 'wix/import-cost', {'do': 'yarn install --frozen-lockfile'}

" }}}

" AUTOCOMPLETE SUPPORTERS {{{

" Plug 'Shougo/neosnippet.vim'

" }}}

call plug#end() "---------------------------------------- End of Vim-Plug define

