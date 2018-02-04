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
" ----------------------------- Syntax, Snippets                                                                       --
Plug 'vim-scripts/SyntaxComplete' " Defautl Vim Syntax, A lots of languages
Plug 'leafgarland/typescript-vim' " Typescript Syntax
"            Syntax, Snippets for Libraries: Jquery, lodash, D3...
Plug 'othree/javascript-libraries-syntax.vim' 

" ------------------ Linting, Error Detect, Fix... ----
Plug 'w0rp/ale' " Asynchronous Lint Engine/ Support lots of languages

"
"--------------------              Autocomplete, Snippets           ----------------------
"                                                                             --
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "-----------------
Plug 'roxma/nvim-yarp' " Need for deoplete
  " For func argument completion

" JavaScript
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'othree/jspc.vim' " JavaScript Parameter Complete

" Typescript
Plug 'mhartington/nvim-typescript'

" HTML
Plug 'othree/html5.vim' "HTML5 omnicomplete and syntax

" \\\\\\
Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab


"====================== Snippets
  Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/context_filetype.vim'



" Plug 'SirVer/ultisnips' " ultimate solution for snippets in Vim
" Plug 'honza/vim-snippets' " Large collection of snippets ready for you to use
" " HTML
" Plug 'othree/html5.vim'
" 
" " JAVASCRIPT
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] } "
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] } " JavaScript Parameter Complete
" " TYPESCRIPT 
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript'
" 
" " OTHER
" Plug 'othree/csscomplete.vim' " CSS, CSSS, LESS
" Plug 'mattn/emmet-vim' "--- Html, Markdown...----------- Html Fast Tags <C-y> , --
" Plug 'Shougo/neco-syntax'
" Plug 'fszymanski/deoplete-emoji' " Markdown Emoji
" 
" 
" " Other Autocomplete supports
" Plug 'wokalski/autocomplete-flow'
" Plug 'Shougo/neosnippet' "--------------------For Function Argument Completion --
" Plug 'Shougo/neosnippet-snippets'




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
"                                                                           --
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
