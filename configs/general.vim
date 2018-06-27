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
"                ║             » DEFAULT FOLDER «           ║
"                ╚══════════════════════════════════════════╝

" cd $HOME/Desktop "-------------------------------- Set Default folder as Desktop

"                ╔══════════════════════════════════════════╗
"                ║            » PYTHON PROVIDERS «          ║
"                ╚══════════════════════════════════════════╝

if has('macunix')
  " OSX
  let g:python3_host_prog = '/usr/local/bin/python3' "---------- Set python 3 provider
  let g:python_host_prog = '/usr/local/bin/python2' "-------------- Set python 2 provider
elseif has('unix')
  " Ubuntu
  let g:python3_host_prog = '/usr/bin/python3' "---------- Set python 3 provider
  let g:python_host_prog = '/usr/bin/python' "-------------- Set python 2 provider
elseif has('win32') || has('win64')
  " Window
endif



"                ╔══════════════════════════════════════════╗
"                ║                » INTERFACE «             ║
"                ╚══════════════════════════════════════════╝

:set guioptions-=m "-------------------------------------------- Remove menu bar
:set guioptions-=T "--------------------------------------------- Remove toolbar
:set guioptions-=r "------------------------------- Remove right-hand scroll bar
:set guioptions-=L "-------------------------------- Remove left-hand scroll bar

"                ╔══════════════════════════════════════════╗
"                ║                 » DISPLAY «              ║
"                ╚══════════════════════════════════════════╝

set number "--------------------------------------------------- Show line number
set ruler "------------ Line number, column's number, virtual column's number...
set nowrap "---------------------------------- do not automatically wrap on load
set colorcolumn=80 "---------------------------------------- 80 line column show
set nospell "-------------------------------------------------- Disable spelling
set formatoptions-=t "--------------- Do not automatically wrap text when typing
set relativenumber "--------------------------------------- Show relative number
set cursorline "---------------------- Highlight the current line for the cursor
set listchars=tab:\|\ ,trail:▫
set formatoptions=tcqronj "-------------------- Set vims text formatting options
set title "-------------------------------------- Let vim set the terminal title
set updatetime=100 "-------------------------------- Redraw the status bar often
set list "--------------------------------------------- Show trailing whitespace
set listchars=tab:•\ ,trail:•,extends:»,precedes:« "-- Unprintable chars mapping
set showcmd	"--------------------------------------- Display incomplete commands
set termencoding=utf-8 "------------------------------------------- Always utf-8
set fileencoding=utf-8
set hid "---------------------------------- Buffer becomes hidden when abandoned
set shortmess+=c
set cmdheight=1 "--------------------------- Just need one line for command line
set laststatus=2 "-------------------------------------- Always show status line
set showtabline=2 "----------------------------------------- Always show tabline
set noshowmode "--------------------------- Hide default mode text (e.g. INSERT)
set display+=lastline "--------------------- As must as possible of the lastline
"------------------------------------------------- in a window will be displayed

"                ╔══════════════════════════════════════════╗
"                ║                 » SYNTAX «               ║
"                ╚══════════════════════════════════════════╝

syntax on "---------------------------------------------- Enable Syntax for Code
syntax enable

"                ╔══════════════════════════════════════════╗
"                ║             » COLOR SOLARIZE «           ║
"                ╚══════════════════════════════════════════╝

set termguicolors "--------------------------------------- True color for neovim

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"                ╔══════════════════════════════════════════╗
"                ║          » FILE, FILE'S TYPES «          ║
"                ╚══════════════════════════════════════════╝

set autoread "---------------------------------------- Auto reloaded Edited File
set noswapfile "------------------------------------------ Dont create wrap file
set nobackup "------------------------------------------------- Dont save backup
filetype plugin on "--------------------------------------------- Turn on plugin
let g:jsx_ext_required = 1 "------------------------- Dont detect js file as jsx

"                ╔══════════════════════════════════════════╗
"                ║                 » TYPINGS «              ║
"                ╚══════════════════════════════════════════╝

set backspace=indent,eol,start "----------------- Allow backspace in insert mode

"                ╔══════════════════════════════════════════╗
"                ║               » TAB, INDENT «            ║
"                ╚══════════════════════════════════════════╝

set tabstop=2 "---------------------------------------------- 2 spaces for 1 tab
set softtabstop=2
set shiftwidth=2
set expandtab "------------------------------------------ Add tab in insert mode
set smarttab
filetype indent off "------------------------------------ Turn of default indent
set autoindent
set smartindent

"                ╔══════════════════════════════════════════╗
"                ║                 » SEARCH «               ║
"                ╚══════════════════════════════════════════╝

set hlsearch "------------------------------------------ Highlight search result
set incsearch "------------------------------------------ Allow Insert higtlight

"                ╔══════════════════════════════════════════╗
"                ║                 » FORMAT «               ║
"                ╚══════════════════════════════════════════╝

set nrformats-=octal "----------------------------------- Format number as octal

"                ╔══════════════════════════════════════════╗
"                ║                  » UNDO «                ║
"                ╚══════════════════════════════════════════╝

set undolevels=100 "------------------------------- Default is 1000 -> Too large
set undoreload=1000 "----------------------------- Default is 10000 -> Too large
set undodir=~/.config/nvim/undodir "--------------- Default folder for undo step

"                ╔══════════════════════════════════════════╗
"                ║              » ENABLE MOUSE «            ║
"                ╚══════════════════════════════════════════╝

if has('mouse')
    set mouse=a "----------------------------- Allow use mouse, possible in nvim
endif

"                ╔══════════════════════════════════════════╗
"                ║                 » OTHERS «               ║
"                ╚══════════════════════════════════════════╝

if has("autocmd")

  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=108

    " Trim whitespace onsave
    autocmd BufWritePre * %s/\s\+$//e

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

  augroup END

endif " has("autocmd")

