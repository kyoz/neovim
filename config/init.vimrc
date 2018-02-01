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

" Need
" --- Python 3
" --- npm install -g tern " Source Javascript
" ---  npm install -g prettier " Format code for a lot of languages

"                                                                             --
call plug#begin('~/.local/share/nvim/plugged')          
"                                                                             --
"--------------------              Autocomplete           ----------------------
"                                                                             --
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "-----------------
"----------------------------------------- Async Autocomplete (Need Python 3) --
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet' "-------------------- Function Argument Completion --
Plug 'Shougo/neosnippet-snippets'

" Plug 'mhartington/nvim-typescript'
Plug 'Shougo/neco-syntax'
" Plug 'Quramy/tsuquyomi' "-------------- 
Plug 'vim-scripts/SyntaxComplete' " Defautl Vim Syntax, A lots of languages
Plug 'othree/csscomplete.vim' " CSS, CSSS, LESS
Plug 'mattn/emmet-vim' "--- Html, Markdown...----------- Html Fast Tags <C-y> , --
Plug 'leafgarland/typescript-vim'
Plug 'zchee/deoplete-jedi'
" Suport auto popup omnifunc
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } "



"            Syntax, snippets
Plug 'othree/javascript-libraries-syntax.vim' " Libraries syntax for js,ts...


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
"Plug 'vim-airline/vim-airline-themes' "------------------- Vim-Airline Themes --
"                                                                             --
"--------------------              GIT Support            ----------------------
"                                                                             --
Plug 'tpope/vim-fugitive' "-------------------------------------- Git Wrapper --
"                                                                             --
"--------------------           Languages Support (Syntax, Hightlight...)----------------------
"                                                                             --
Plug 'sheerun/vim-polyglot' "------------ Support almost all code syntax these days
" Plug 'leafgarland/typescript-vim' "------------ Typescript Syntax/ Hightlight --
"                                                                             --
" 
"                                                                             --
"--------------------                 Utils               ----------------------
"                                                                             --
Plug 'jiangmiao/auto-pairs' "-------------------------- Auto pair brackets... --
Plug 'alvan/vim-closetag' "------------------------------ Auto close html tag --
Plug 'tpope/vim-commentary' "---------------------------- Comment code faster --
Plug 'easymotion/vim-easymotion' "-------------- EastMotion to support search --
Plug 'terryma/vim-multiple-cursors' "------------------------ Multiple Cursor --
Plug 'sbdchd/neoformat' "---------------------------------------- Format Code --
Plug 'NLKNguyen/copy-cut-paste.vim' "-- Copy, Paste with Clipboard
Plug 'Yggdroot/indentLine' "-----------------------Indent code with v-line
Plug 'lilydjwg/colorizer' " Help colorize text color
"                                                                             --
"---------- Neoformat do need to install for formatter ( I do love prettier ) --
"                                                                             --
" npm install -g prettier "----------------- Can format a lot of languages :D --
" https://github.com/sbdchd/neoformat "---------------------- Other languages --
"                                                                             --
call plug#end() "------------------------------------- End of Vim-Plug define --
