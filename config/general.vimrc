"===============================================================================
"======================         GENERAL SETTING          =======================
"===============================================================================
"                                                                             --
"                                                                             --
" Always utf8
set termencoding=utf-8
set fileencoding=utf-8
" set encoding=utf8 "------------------------------------------------ Set UTF-8 --


"                                                                             --
"===============================================================================
	

syntax on "--------------------------------------- Enable Syntax for Code --
syntax enable "------------------------------

set hlsearch
set incsearch "--------------------------------------- Allow Insert higtlight --


set magic " for regular expressions

set autoread " Autoloaded Edited File



"                                                                             --
:set guioptions-=m "----------------------------------------- Remove menu bar --
:set guioptions-=T "------------------------------------------ Remove toolbar --
:set guioptions-=r "---------------------------- Remove right-hand scroll bar --
:set guioptions-=L "----------------------------- Remove left-hand scroll bar --
nnoremap <c-z> <nop> "---------------------------------------- Disable Ctrl-Z --
set nowrap "------------------------------- do not automatically wrap on load --
set formatoptions-=t "------------ do not automatically wrap text when typing --
set colorcolumn=80 "--------------------------------------80 line column show --
set number "------------------------------------------------ Show line number --
set relativenumber "------------------------------------ Show relative number --

set termguicolors "------------------------------------ True color for neovim --


" ------------------- Tab settings
set tabstop=2 
set softtabstop=2 
set expandtab
set smarttab
set shiftwidth=2 
set autoindent
set smartindent

" Number format 
set nrformats-=octal

" Timeout
set ttimeout
set ttimeoutlen=100


filetype plugin on "------------- Turn on Detection, Plugin and Intent --
filetype indent off
" set nohlsearch "-------------------------------------- No highlight on search --
set noswapfile "--------------------------------------- Dont create wrap file --
set nobackup "---------------------------------------------- Dont save backup --
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set cursorline                    " highlight the current line for the cursor
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
"
set undolevels=100
set undoreload=1000
set undodir=~/.config/nvim/undodir
set undofile

set showcmd		" display incomplete commands

" buffer settings
set hid " buffer becomes hidden when abandoned

" Complete Optiono
set completeopt=longest,menuone,preview


"===============================================================================
"====================            NEOVIM SETTING           ======================
"===============================================================================
"                                                                             --
                                                           
set termguicolors "------------------------------------ True color for neovim --
let g:loaded_python_provider = 1 " Disabled python 2
let g:python3_host_prog = '/usr/lib/python3.5' " Set python 3 provider

"                                                                              --
"===============================================================================



" Enable mouse if possible
if has('mouse')
    set mouse=a
endif

" ----------------------------

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