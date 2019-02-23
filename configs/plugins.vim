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
"                ║                » NERDTREE «              ║
"                ╚══════════════════════════════════════════╝

let g:NERDTreeWinSize=30 "-------------------------------------- Default columns

" autocmd vimenter * silent! NERDTree "----------- Auto open NERDTree on starts up

" Automatically open NERDTree on starts up if no files were specifed
autocmd StdinReadPre * let s:std_in=1 "
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | silent! NERDTree | endif

highlight! link NERDTreeFlags NERDTreeDir

" Mappings
map <C-b> :NERDTreeToggle <CR> "--------------------------------- NERDTree Toggle

"                ╔══════════════════════════════════════════╗
"                ║               » DEVICIONS «              ║
"                ╚══════════════════════════════════════════╝

" Fix folders and files weird align
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"                ╔══════════════════════════════════════════╗
"                ║            » COLORS SOLARIZED «          ║
"                ╚══════════════════════════════════════════╝

" let g:onedark_terminal_italics = 1 "---------------------- Italic comment's code
let g:onedark_termcolors=256
:silent! colorscheme onedark "-------------------------------- Set onedark theme
hi Normal guibg=NONE ctermbg=NONE "---------------- Transparent background color


"                ╔══════════════════════════════════════════╗
"                ║                 » AIRLINE «              ║
"                ╚══════════════════════════════════════════╝

let g:airline_section_c = '%t' "--filename "-------------- Only show file's name
let g:airline#extensions#tabline#enabled = 1 "------------------- Enable tabline
let g:airline#extensions#tabline#fnamemod = ':t' "--- Just show file name in tab
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' "- Hide format type

let g:airline_theme='onedark' "-------------------------- Set status bar's theme
let g:airline_powerline_fonts = 1 "----------- Just work with patched NERD fonts

let g:airline#extensions#tabline#enabled=1 "--------- Buffers at the top as tabs
let g:airline#extensions#tabline#show_tab_type=1 "---------- Don't show tab type

"                ╔══════════════════════════════════════════╗
"                ║             » AIRLINE SYMBOLS «          ║
"                ╚══════════════════════════════════════════╝

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = ''

let g:airline#extensions#quickfix#quickfix_text = 'QF'
let g:airline#extensions#quickfix#location_text = 'LL'

" Disable unused extensions (Improve Performance)
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

set noshowmode "----------------- Don't show mode (Normal, Insert...) in airline

"                ╔══════════════════════════════════════════╗
"                ║                 » CTRL-P «               ║
"                ╚══════════════════════════════════════════╝

let g:ctrlp_working_path_mode = 'ra' "--------------- Set local working diretory

set wildignore+=*/tmp/*,*.so,*.swp,*.zip "---------- Ignore file on MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe "------------- Ignore file on Window
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' " ----- Ignore file, folders
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links' }

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\'

" Mappings
let g:ctrlp_map = '<C-p>' "----------------------- CtrlP Default command mapping
let g:ctrlp_cmd = 'CtrlP'

"                ╔══════════════════════════════════════════╗
"                ║             » INDENT LINE «              ║
"                ╚══════════════════════════════════════════╝
"
let g:indentLine_char = '┆'

"                ╔══════════════════════════════════════════╗
"                ║                » EMMET «                 ║
"                ╚══════════════════════════════════════════╝

" Enable just for html, css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_leader_key=',' " Trigger emmet with ,,

autocmd FileType html,css,scss,sass,less,typescript EmmetInstall " Support files

"                ╔══════════════════════════════════════════╗
"                ║             » EASY MOTION «              ║
"                ╚══════════════════════════════════════════╝

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap S <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" Mappings
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>s <Plug>(easymotion-overwin-f)
map <Leader>S <Plug>(easymotion-overwin-f2)

"                ╔══════════════════════════════════════════╗
"                ║               » ACK.VIM «                ║
"                ╚══════════════════════════════════════════╝

" Note: Replace Ack with Ack! to prevent replace NERDTRee when open
cnoreabbrev Ack Ack!
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column' "-------------- Use Ag instead
endif
nnoremap <Leader>a :Ack!<Space>

"                ╔══════════════════════════════════════════╗
"                ║             » TREE PAIRS «               ║
"                ╚══════════════════════════════════════════╝

let g:pear_tree_pairs = {
  \ '(':    {'closer': ')'},
  \ '[':    {'closer': ']'},
  \ '{':    {'closer': '}'},
  \ "'":    {'closer': "'"},
  \ '"':    {'closer': '"'},
  \ '/*':   {'closer': '*/'},
  \ '<!--': {'closer': '-->'}
  \ }

let g:pear_tree_repeatable_expand = 0

"                ╔══════════════════════════════════════════╗
"                ║                 » AIRWRAP «              ║
"                ╚══════════════════════════════════════════╝

nnoremap <silent> gw :ArgWrap<CR>

"                ╔══════════════════════════════════════════╗
"                ║            » MARKDOWN SYNTAX «           ║
"                ╚══════════════════════════════════════════╝

autocmd FileType markdown let g:indentLine_enabled=0 " Prevent markdown side effect
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['coffee', 'css', 'js=javascript', 'ruby', 'sass', 'xml', 'html']

"                ╔══════════════════════════════════════════╗
"                ║           » LIBRARIES SYNTAX «           ║
"                ╚══════════════════════════════════════════╝

let g:used_javascript_libs = 'jquery,underscore,angularui,angularuirouter,jasmine,d3'

"                ╔══════════════════════════════════════════╗
"                ║                » PRETTIER «              ║
"                ╚══════════════════════════════════════════╝

let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'

