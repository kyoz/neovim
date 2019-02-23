"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/
"
"                ╔══════════════════════════════════════════╗
"                ║        » PLUGGINS (USE VIM-PLUG) «       ║
"                ╚══════════════════════════════════════════╝

call plug#begin('~/.config/nvim/plugged') "---------------------- Start vim plug

"                ╔══════════════════════════════════════════╗
"                ║             » COLORS, THEMES «           ║
"                ╚══════════════════════════════════════════╝

Plug 'joshdick/onedark.vim' "------------------------------------- Onedark theme

"                ╔══════════════════════════════════════════╗
"                ║                » TOOLBARS «              ║
"                ╚══════════════════════════════════════════╝

Plug 'bling/vim-airline' "---------------------------------- Status bar, Tabline
Plug 'vim-airline/vim-airline-themes' "---------------------  Vim-Airline Themes
Plug 'tpope/vim-fugitive' "---------- Just use to show git status in Vim-Airline

"                ╔══════════════════════════════════════════╗
"                ║                 » FINDER «               ║
"                ╚══════════════════════════════════════════╝

Plug 'ctrlpvim/ctrlp.vim' "----------------------------------------- File finder
" Use with the silver searcher (https://github.com/ggreer/the_silver_searcher)
Plug 'mileszs/ack.vim' "-------------------------------- Search in vim with grep

"                ╔══════════════════════════════════════════╗
"                ║               » NAVIGATES «              ║
"                ╚══════════════════════════════════════════╝

Plug 'scrooloose/nerdtree' "------------------------------------------ Nerd Tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "-------------------- Icon colors
Plug 'ryanoasis/vim-devicons' "------------------------------------------- Icons
Plug 'easymotion/vim-easymotion' "----------------- EastMotion to support search

"                ╔══════════════════════════════════════════╗
"                ║            » SYNTAX HIGHTLIGHT «         ║
"                ╚══════════════════════════════════════════╝

Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } "------- Markdown's Syntax
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }"  Typescript's Syntax
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

"                ╔══════════════════════════════════════════╗
"                ║              » FASTER CODE «             ║
"                ╚══════════════════════════════════════════╝

Plug 'tmsvg/pear-tree' "------------------------------------- Auto pair brackets
Plug 'alvan/vim-closetag' "--------------------------------- Auto close html tag
Plug 'tpope/vim-surround' "--------------------------------------- Auto surround
Plug 'tpope/vim-commentary' "------------------------------- Comment code faster
Plug 'tpope/vim-repeat' "------------------------------ dot repeat with pluggins
Plug 'Yggdroot/indentLine' "---------------------------- Indent code with v-line
Plug 'wellle/targets.vim' "--------------------- Provides additional text object
Plug 'terryma/vim-expand-region' "------------------- Expand region, Use + and -
Plug 'terryma/vim-multiple-cursors' "--------------------------- Multiple Cursor
Plug 'mattn/emmet-vim' "------------------------------------------ Emmet for vim

"                ╔══════════════════════════════════════════╗
"                ║             » BEAUTIFY CODE «            ║
"                ╚══════════════════════════════════════════╝

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

"                ╔══════════════════════════════════════════╗
"                ║                 » UTILS «                ║
"                ╚══════════════════════════════════════════╝

Plug 'NLKNguyen/copy-cut-paste.vim' "---------------- Copy, Paste with Clipboard
Plug 'banminkyoz/ezbuf.vim' "------------------------- Fast and easy use buffers

"                ╔══════════════════════════════════════════╗
"                ║              » AUTOCOMPLETE «            ║
"                ╚══════════════════════════════════════════╝

Plug 'ncm2/ncm2' "------------------------------ Slim, Fast Completion Framework
Plug 'roxma/nvim-yarp' "----------------------- Remote Plugin Framework for ncm2

"                ╔══════════════════════════════════════════╗
"                ║         » AUTOCOMPLETE SOURCES «         ║
"                ╚══════════════════════════════════════════╝

" General
Plug 'ncm2/ncm2-bufword' "----------------------------------------------- Buffer
Plug 'fgrsnau/ncm2-otherbuf' "---------------------------------------- Other Buf
Plug 'ncm2/ncm2-path' "---------------------------------------------------- Path
Plug 'ncm2/ncm2-tagprefix' "------------------------------------ Html Tag Prefix
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax' "------------- Syntax source
Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim' "--------- NeoInclude


" Languages
Plug 'ncm2/ncm2-html-subscope' "---------------------------------- Html Subscope
Plug 'ncm2/ncm2-cssomni' "-------------------------------------------------- CSS
Plug 'ncm2/ncm2-markdown-subscope' "-------------------------- Markdown Subscope
Plug 'ncm2/ncm2-tern', {'do': 'npm install'} "----------------------- Javascript
Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim' "----------------------- Vimscript
Plug 'ncm2/ncm2-vim-lsp' "----------- To connect completion between lsp and ncm2

" Language Server Protocol
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp', {
  \  'do': 'npm install -g typescript
     \ typescript-language-server
     \ vscode-css-languageserver-bin
     \ vscode-html-languageserver-bin
     \ vscode-json-languageserver-bin
     \'}
  \

"                ╔══════════════════════════════════════════╗
"                ║        » AUTOCOMPLETE SUPPORTERS «       ║
"                ╚══════════════════════════════════════════╝

Plug 'ncm2/ncm2-neosnippet'
Plug 'Shougo/neosnippet.vim'

call plug#end() "---------------------------------------- End of Vim-Plug define
