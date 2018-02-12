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
"==============================[ GENERAL SETTINGS ]=============================
"===============================================================================

"===============================[ Default folder ]==============================

cd $HOME/Desktop "-------------------------------- Set Default folder as Desktop

"==============================[ Python Provider ]==============================

let g:python3_host_prog = '/usr/bin/python3.5' "---------- Set python 3 provider
let g:python_host_prog = '/usr/bin/python' "-------------- Set python 2 provider

"================================[ Interface ]==================================

:set guioptions-=m "-------------------------------------------- Remove menu bar
:set guioptions-=T "--------------------------------------------- Remove toolbar
:set guioptions-=r "------------------------------- Remove right-hand scroll bar
:set guioptions-=L "-------------------------------- Remove left-hand scroll bar

"=================================[ Display ]===================================

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

"==================================[ Syntax ]===================================

syntax on "---------------------------------------------- Enable Syntax for Code
syntax enable

"=============================[ Colors Solarized ]==============================

set termguicolors "--------------------------------------- True color for neovim

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"============================[ Files, file types ]==============================

set autoread "---------------------------------------- Auto reloaded Edited File
set noswapfile "------------------------------------------ Dont create wrap file
set nobackup "------------------------------------------------- Dont save backup
filetype plugin on "--------------------------------------------- Turn on plugin
let g:jsx_ext_required = 1 "------------------------- Dont detect js file as jsx

"==================================[ Typing ]===================================

set backspace=indent,eol,start "----------------- Allow backspace in insert mode

"===============================[ Tabs, Indent ]================================

set tabstop=2 "---------------------------------------------- 2 spaces for 1 tab
set softtabstop=2
set shiftwidth=2
set expandtab "------------------------------------------ Add tab in insert mode
set smarttab
filetype indent off "------------------------------------ Turn of default indent
set autoindent
set smartindent

"==================================[ Search ]===================================

set hlsearch "------------------------------------------ Highlight search result
set incsearch "------------------------------------------ Allow Insert higtlight

"===================================[ Format ]==================================

set nrformats-=octal "----------------------------------- Format number as octal

"====================================[ Undo ]===================================

set undolevels=100 "------------------------------- Default is 1000 -> Too large
set undoreload=1000 "----------------------------- Default is 10000 -> Too large
set undodir=~/.config/nvim/undodir "--------------- Default folder for undo step

"================================[ Enable Mouse ]===============================

if has('mouse')
    set mouse=a "----------------------------- Allow use mouse, possible in nvim
endif

"===================================[ Others ]==================================

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

" Change the behavior of the <Enter> key when the popup menu is visible.
" The Enter key will simply select the highlighted menu item, just as <C-Y> does
" :inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" The first will make <C-N> work the way it normally does;
" however, when the menu appears, the <Down> key will be simulated.
" What this accomplishes is it keeps a menu item always highlighted.
" This way you can keep typing characters to narrow the matches,
" and the nearest match will be selected so that you can hit Enter
" at any time to insert it. In the above mappings,
" the second one is a little more exotic: it simulates <C-X><C-O>
" to bring up the omni completion menu,
" then it simulates <C-N><C-P> to remove the longest common text,
" and finally it simulates <Down> again to keep a match highlighted.
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
