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
"============================[ AUTOCOMPLETES SETUP ]============================
"===============================================================================

"==================================[ Default ]==================================

set nocompatible

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"=============================[ Omnifunc settings ]=============================

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

"================================[ Libraries]===================================

let g:used_javascript_libs = 'jquery,underscore,angularui,angularuirouter,d3'

"===============================[ Javascript ]==================================

if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

if exists('g:plugs["deoplete-ternjs"]')

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

let g:deoplete#sources#ternjs#docs = 1

" Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue'
                \ ]
endif


"===============================[ Typescript]===================================

" let g:nvim_typescript#javascript_support = 1

"==================================[ CSS ]======================================

if exists('g:plugs["csscomplete.vim"]')
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
endif

"============================[ Deoplete Setting]================================

" Have to set those at last
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0

" Set source
let g:deoplete#sources = {}
let g:deoplete#sources.javascript = ['buffer', 'tern']
let g:deoplete#sources.ts = ['buffer', 'nvim-typescript', 'tern']

"==============================[ SuperTab ]=====================================

" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType javascript.jsx let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType typescript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType html,css,scss,sass,json let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"==============================[ Mappings ]=====================================

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:UltiSnipsExpandTrigger="<C-j>"
autocmd FileType javascript nnoremap <silent> <buffer> gd :TernDef<CR>

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
