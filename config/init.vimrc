"                                                                              "
"                     _/    _/                                                 "
"                    _/  _/    _/    _/    _/_/    _/_/_/_/                    "
"                   _/_/      _/    _/  _/    _/      _/                       "
"                  _/  _/    _/    _/  _/    _/    _/                          "
"                 _/    _/    _/_/_/    _/_/    _/_/_/_/                       "
"                                _/                                            "
"                            _/_/                                              "
"                                                                              "
"===============================================================================
"====================      VIM PLUGINS - ( VIM-PLUG )     ======================
"===============================================================================


"                                                                             --
call plug#begin('~/.config/nvim/plugged')          
"     
" ----------------------------- Syntax, Highlight --
Plug 'sheerun/vim-polyglot' "------------ Support almost all code syntax these days
"            Syntax, Snippets for Libraries: Jquery, lodash, D3...
Plug 'othree/javascript-libraries-syntax.vim' 

" ------------------ Linting, Error Detect, Fix... ----
Plug 'w0rp/ale' " Asynchronous Lint Engine/ Support lots of languages

"
"--------------------              Autocomplete, Snippets           ----------------------
"                                                                             --
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "-----------------
Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'
 

"                                                                             --
"--------------------                 Finder              ----------------------
"                                                                             --
Plug 'scrooloose/nerdtree' "--------------------------------------- Nerd Tree --
Plug 'kien/ctrlp.vim' "------------------------------------------ File finder --
"                                                                             --
"--------------------             Colors, Themes          ----------------------
"                                                                             --
Plug 'joshdick/onedark.vim'
" Plug 'rakr/vim-one' "----------------------------------- Colorscheme for code --
"                                                                             --
"--------------------                Toolbar              ----------------------
"Plug 'itchyny/lightline.vim' "---- Very light toolbar
"                                                                             --
Plug 'bling/vim-airline' "------------------------------- Status bar, Tabline --
Plug 'vim-airline/vim-airline-themes' "------------------- Vim-Airline Themes --
"                                                                             --
"--------------------              GIT Support            ----------------------
"                                                                             --
Plug 'tpope/vim-fugitive' "-------------------------------------- Git Wrapper --
"                                                                             --                                                                      --
"--------------------                 Utils               ----------------------
"                                                                             --
Plug 'jiangmiao/auto-pairs' "-------------------------- Auto pair brackets... --
Plug 'alvan/vim-closetag' "------------------------------ Auto close html tag --
Plug 'tpope/vim-surround' "------------------------------- Auto surround --
Plug 'tpope/vim-commentary' "---------------------------- Comment code faster --
Plug 'tpope/vim-repeat' "--------------------------- dot repeat with pluggins--
Plug 'wellle/targets.vim' "----------- Provides additional text object 
Plug 'terryma/vim-expand-region' "-------- Expand region, Use + and -
Plug 'easymotion/vim-easymotion' "-------------- EastMotion to support search --
Plug 'terryma/vim-multiple-cursors' "------------------------ Multiple Cursor --
Plug 'sbdchd/neoformat' "---------------------------------------- Format Code --
Plug 'NLKNguyen/copy-cut-paste.vim' "-- Copy, Paste with Clipboard
Plug 'Yggdroot/indentLine' "-----------------------Indent code with v-line
Plug 'ap/vim-css-color' " Help colorize text color
Plug 'bkad/CamelCaseMotion' " Help w,b,e with CamelCase Name
Plug 'Shougo/echodoc.vim' " Print Functions Document to echo area
Plug 'joeytwiddle/sexy_scroller.vim' " Awesome scroll animation :D
Plug 'Valloric/MatchTagAlways' " Always highlights the XML/HTML tags that enclose your cursor location
Plug 'FooSoft/vim-argwrap'
"                                                                             --

"                                                                             --
call plug#end() "------------------------------------- End of Vim-Plug define --
