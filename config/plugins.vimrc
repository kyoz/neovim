"===============================================================================
"====================          PLUGGINS SETTING           ======================
"===============================================================================
"                                                                             --
"--------------------              NERDTree               ----------------------
"                                                                             --
let g:NERDTreeWinSize=50 "----------------------------------- Default columns --
autocmd vimenter * NERDTree "------- Automatically open NERDTree on starts up --
" Automatically open NERDTree on starts up if no files were specifed          --
autocmd StdinReadPre * let s:std_in=1 "                                       --
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " --
"                                                                             --
" Automatically open NERDTREE on starts up on opening a directory             --
autocmd StdinReadPre * let s:std_in=1 "                                       --
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) "                 --
 \ && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif --
"                                                                             --
"                                                                             --
cd ./Desktop "----------------------------------- Set NERDTree Default folder --
map <F2> :NERDTreeToggle <CR> "-------------------- NERDTree Toggle Shortcut  --
"                                                                             -- 
"                                                                             --
"--------------------           Colors Solarized          ----------------------
"                                                                             --
if (empty($TMUX)) "                                                           --
  if (has("nvim")) "                                                          --
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "                                         --
  endif "                                                                     --
  if (has("termguicolors")) "                                                 --
    set termguicolors "                                                       --
  endif "                                                                     --
endif "                                                                       --
"                                                                             --

let g:onedark_terminal_italics = 1
colorscheme onedark

"                                                                             --
"--------------------               Airline               ----------------------
"                                                                             --
let g:airline_section_c = '%t' "--filename
let g:airline#extensions#tabline#enabled = 1 "                                --
let g:airline#extensions#tabline#fnamemod = ':t' "-- Just show file name --
let g:airline#extensions#tabline#formatter = 'unique_tail' "                  --
" let g:airline_inactive_collapse = 1  "-- Not show inactive buffer
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " Hide format type --

let g:airline_theme='onedark' "--------------------------------- Set Theme --
let g:airline_powerline_fonts = 1 "-------- Just work with patched NERD fonts --

let g:airline#extensions#tabline#enabled=1  " buffers at the top as tabs
" let g:airline#extensions#tabline#show_tabs=0
let g:airline#extensions#tabline#show_tab_type=0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = ''

let g:airline#extensions#quickfix#quickfix_text = 'QF'
let g:airline#extensions#quickfix#location_text = 'LL'

" disable unused extensions (performance)
let g:airline#extensions#ctrlp#color_template = 'insert'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#capslock#enabled   = 0
let g:airline#extensions#csv#enabled        = 0
let g:airline#extensions#ctrlspace#enabled  = 0
let g:airline#extensions#eclim#enabled      = 1
let g:airline#extensions#hunks#enabled      = 0
let g:airline#extensions#nrrwrgn#enabled    = 0
let g:airline#extensions#promptline#enabled = 0
let g:airline#extensions#syntastic#enabled  = 0
let g:airline#extensions#taboo#enabled      = 0
let g:airline#extensions#tagbar#enabled     = 0
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

"         
  "                                                                          --
"--------------------             Multicursor             ----------------------
"                                                                             --
set backspace=indent,eol,start "-------------- Allow backspace in insert mode --
"                                                                             --
"--------------------            Typescript-VIM           ----------------------
"                                                                             --
"let g:typescript_indent_disable = 1 "----------------- Disable default indent --
"setlocal indentkeys+=0 "-------------------------- Auto indent chained method --

"                                                                             --
"--------------------                Ctrl-P               ----------------------
"                                                                             --
let g:ctrlp_map = '<c-p>' "-------------------------- Default command mapping --
let g:ctrlp_cmd = 'CtrlP' "-------------------------- Default command mapping --
let g:ctrlp_working_path_mode = 'ra' "------------ Set local working diretory --
"                                                                             --
set wildignore+=*/tmp/*,*.so,*.swp,*.zip "------- Ignore file on MacOSX/Linux --
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe "---------- Ignore file on Window --
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot

"                                                                             --
"-------------------------------------------------------- Ignore file, folder --
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' "                         --
let g:ctrlp_custom_ignore = { "                                               --
  \ 'dir':  '\v[\/]\.(git|hg|svn)$', "                           --
  \ 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links' } "        --
"                                                                             --
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


"------------------------ Indent line -------------------

let g:indentLine_char = '⎸'

"=========================== Libraries Syntax
let g:used_javascript_libs = 'jquery,underscore,react,flux, angularui, angularuirouter, d3'


" ==================completion
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:deoplete#omni#functions = {}
  let g:deoplete#omni#functions.javascript = [
    \ 'tern#Complete',
    \ 'jspc#omni'
  \]
endif

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout = 1
let g:SuperTabClosePreviewOnPopupClose = 1


" VIM Default Syntax (Support a lot languages)
" set omnifunc=syntaxcomplete#Complete
" if has("autocmd") && exists("+omnifunc")
" 	autocmd Filetype *
" 		    \	if &omnifunc == "" |
" 		    \		setlocal omnifunc=syntaxcomplete#Complete |
" 		    \	endif
"   au FileType javascript setl omnifunc=tern#Complete
"   au FileType css,sass,scss,stylus,less setl omnifunc=csscomplete#CompleteCSS
"   au FileType html,htmldjango,jinja,markdown setl omnifunc=emmet#completeTag

"     endif

"========== Colorize
" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1

" ============== emmet-vim settings
" let g:user_emmet_settings = { "html": { "quote_char": "'"} }