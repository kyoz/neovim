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

" Required for neovim
"---- pip install neovim " Python 2
" --- pip3 install neovim " Python 3

"  pip install --upgrade neovim
"           pip3 install --upgrade neovim
" --- npm install -g tern " Source Javascript

" Required for pluggins
"---------- Neoformat do need to install for formatter ( I do love prettier ) --
"                                                                             --
" npm install -g prettier "----------------- Can format a lot of languages :D --
" https://github.com/sbdchd/neoformat "---------------------- Other languages --
" 
" ------------------- Tern
" Goto ..plugged/tern_for_vim folder, open terminal and run 'npm install'

" Required to check syntax, autocomplete... :D
" npm install -g flow-bin " Javascript
" npm install -g tslint typescript " Javascript, Typescript
" npm install -g htmlhint " HTML
" npm install -g csslint " CSS
" npm install -g sass-lint " Both Sass, Scss
" npm install -g jsonlint " Json
" JavaScript · Flow · TypeScript · CSS · SCSS · Less · JSX · Vue · GraphQL · JSON · Markdown
" npm install -g prettier
" https://github.com/w0rp/ale#usage-linting


"                                                                             --
call plug#begin('~/.config/nvim/plugged')          
"     
" ----------------------------- Syntax, Snippets                                                                       --
Plug 'vim-scripts/SyntaxComplete' " Defautl Vim Syntax, A lots of languages
Plug 'leafgarland/typescript-vim' " Typescript Syntax
"            Syntax, Snippets for Libraries: Jquery, lodash, D3...
Plug 'othree/javascript-libraries-syntax.vim' 

" ------------------ Linting ----
Plug 'w0rp/ale' " Asynchronous Lint Engine/ Support lots of languages

"
"--------------------              Autocomplete, Snippets           ----------------------
"                                                                             --
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "-----------------
Plug 'SirVer/ultisnips' " ultimate solution for snippets in Vim
Plug 'honza/vim-snippets' " Large collection of snippets ready for you to use
" HTML
Plug 'othree/html5.vim'

" JAVASCRIPT
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] } "
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] } " JavaScript Parameter Complete
" TYPESCRIPT 
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'

" OTHER
Plug 'othree/csscomplete.vim' " CSS, CSSS, LESS
Plug 'mattn/emmet-vim' "--- Html, Markdown...----------- Html Fast Tags <C-y> , --
Plug 'Shougo/neco-syntax'
Plug 'fszymanski/deoplete-emoji' " Markdown Emoji


" Other Autocomplete supports
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet' "--------------------For Function Argument Completion --
Plug 'Shougo/neosnippet-snippets'




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
Plug 'tpope/vim-commentary' "---------------------------- Comment code faster --
Plug 'easymotion/vim-easymotion' "-------------- EastMotion to support search --
Plug 'terryma/vim-multiple-cursors' "------------------------ Multiple Cursor --
Plug 'sbdchd/neoformat' "---------------------------------------- Format Code --
Plug 'NLKNguyen/copy-cut-paste.vim' "-- Copy, Paste with Clipboard
Plug 'Yggdroot/indentLine' "-----------------------Indent code with v-line
Plug 'ap/vim-css-color' " Help colorize text color
Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plug 'bkad/CamelCaseMotion' " Help w,b,e with CamelCase Name
Plug 'Shougo/echodoc.vim' " Print Functions Document to echo area
"                                                                             --

"                                                                             --
call plug#end() "------------------------------------- End of Vim-Plug define --
