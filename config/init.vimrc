"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/
"
"===============================================================================
"=====================        PLUGINS - ( VIM-PLUG )       =====================
"===============================================================================
"
call plug#begin('~/.config/nvim/plugged') "---------------------- Start vim plug
"
"=====================             Colors, Themes          =====================
"
Plug 'joshdick/onedark.vim' "------------------------------------- Onedark theme
"
"=====================                Toolbar              =====================
"
Plug 'bling/vim-airline' "---------------------------------- Status bar, Tabline
Plug 'vim-airline/vim-airline-themes' "---------------------  Vim-Airline Themes
"
"=====================                Finder               =====================
"
Plug 'scrooloose/nerdtree' "------------------------------------------ Nerd Tree
Plug 'kien/ctrlp.vim' "--------------------------------------------- File finder

"=====================              GIT Support            =====================

Plug 'tpope/vim-fugitive' "----------------------------------------- Git Wrapper

"=====================           Syntax, Highlight         =====================

Plug 'sheerun/vim-polyglot' "----------------- Almost all code syntax these days
Plug 'othree/javascript-libraries-syntax.vim' "------------ Syntax for Libraries
Plug 'ap/vim-css-color' "------------------------------ Help colorize text color
Plug 'Valloric/MatchTagAlways' "------- Always highlights the XML/HTML tags that
"-------------------------------------------------- enclose your cursor location

"=====================     Linting, Error Detect, Fix...   =====================

Plug 'w0rp/ale' "----------- Asynchronous Lint Engine/ Support lots of languages

"=====================              Faster code            =====================

Plug 'jiangmiao/auto-pairs' "-------------------------------- Auto pair brackets
Plug 'alvan/vim-closetag' "--------------------------------- Auto close html tag
Plug 'tpope/vim-surround' "--------------------------------------- Auto surround
Plug 'tpope/vim-commentary' "------------------------------- Comment code faster
Plug 'tpope/vim-repeat' "------------------------------ dot repeat with pluggins
Plug 'Yggdroot/indentLine' "---------------------------- Indent code with v-line
Plug 'wellle/targets.vim' "--------------------- Provides additional text object
Plug 'terryma/vim-expand-region' "------------------- Expand region, Use + and -
Plug 'terryma/vim-multiple-cursors' "--------------------------- Multiple Cursor
Plug 'bkad/CamelCaseMotion' "-------------------- Help w,b,e with CamelCase Name
"
"=====================             Beautify code           =====================

Plug 'sbdchd/neoformat' "------------------------------------------- Format Code
Plug 'FooSoft/vim-argwrap' "------ Wrap and unwrap function args, list, dicts...

"=====================                 Utils               =====================

Plug 'easymotion/vim-easymotion' "----------------- EastMotion to support search
Plug 'NLKNguyen/copy-cut-paste.vim' "---------------- Copy, Paste with Clipboard
Plug 'joeytwiddle/sexy_scroller.vim' "-------------- Awesome scroll animation :D

"====================             Autocomplete            =====================

"====================       Autocomplete Supporters       =====================

Plug 'Shougo/echodoc.vim' "--------------- Print Functions Document to echo area
"
"
call plug#end() "---------------------------------------- End of Vim-Plug define
