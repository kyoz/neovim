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
"                ║           » DEFAULTS SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

set nocompatible

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"                ╔══════════════════════════════════════════╗
"                ║           » OMNIFUNC SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

"                ╔══════════════════════════════════════════╗
"                ║           » LIBRARIES SYNTAX «           ║
"                ╚══════════════════════════════════════════╝

" let g:used_javascript_libs = 'jquery,underscore,angularui,angularuirouter,d3'

"                ╔══════════════════════════════════════════╗
"                ║               » JAVASCRIPT «             ║
"                ╚══════════════════════════════════════════╝

" if exists('g:plugs["tern_for_vim"]')
"  let g:tern_show_argument_hints = 'on_hold'
"  let g:tern_show_signature_in_pum = 1
"  autocmd FileType javascript setlocal omnifunc=tern#Complete
" endif

" if exists('g:plugs["deoplete-ternjs"]')

" let g:tern#command = ["tern"]
" let g:tern#arguments = ["--persistent"]

" let g:deoplete#sources#ternjs#docs = 1

" Add extra filetypes
" let g:deoplete#sources#ternjs#filetypes = [
"                \ 'jsx',
"                 \ 'javascript.jsx',
"                \ 'vue'
"                \ ]
" endif


"                ╔══════════════════════════════════════════╗
"                ║               » TYPESCRIPT «             ║
"                ╚══════════════════════════════════════════╝

" let g:nvim_typescript#javascript_support = 1

"==================================[ CSS ]======================================

" if exists('g:plugs["csscomplete.vim"]')
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
" endif

"                ╔══════════════════════════════════════════╗
"                ║           » DEOPLETE SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

" Have to set those at last
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0

" Disable Preview Winndow
set completeopt-=preview

" Set source
" let g:deoplete#sources = {}
" let g:deoplete#sources.javascript = ['buffer', 'tern']
" let g:deoplete#sources.ts = ['buffer', 'nvim-typescript', 'tern']

"                ╔══════════════════════════════════════════╗
"                ║           » SNIPPETS SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

" Not use default snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
" Use my snippets instead :D
let g:neosnippet#snippets_directory='$HOME/.config/nvim/snippets'

"                ╔══════════════════════════════════════════╗
"                ║               » SUPPER TAB «             ║
"                ╚══════════════════════════════════════════╝

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType javascript.jsx let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType typescript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType html,css,scss,sass,json let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"                ╔══════════════════════════════════════════╗
"                ║                » MAPPINGS «              ║
"                ╚══════════════════════════════════════════╝

" Tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" Tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

