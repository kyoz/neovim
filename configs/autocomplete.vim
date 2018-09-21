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
"                ║             » NCM2 SETTINGS «            ║
"                ╚══════════════════════════════════════════╝

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c

"                ╔══════════════════════════════════════════╗
"                ║           » OMNIFUNC SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

  " augroup omnifuncs
  "   autocmd!
  "   autocmd FileType css,sass,scss setlocal omnifunc=csscomplete#CompleteCSS
  "   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  "   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  "   autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  "   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " augroup end

au User Ncm2Plugin call ncm2#register_source({
  \ 'name' : 'html',
  \ 'priority': 9,
  \ 'subscope_enable': 1,
  \ 'scope': ['html'],
  \ 'mark': 'html',
  \ 'word_pattern': '[\w\-]+',
  \ 'complete_pattern': '<',
  \ 'on_complete': ['ncm2#on_complete#omni', 'htmlcomplete#CompleteTags'],
  \ })

"                ╔══════════════════════════════════════════╗
"                ║           » SNIPPETS SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

" https://github.com/ncm2/ncm2/issues/31

let g:neosnippet#enable_completed_snippet = 1
" Not use default snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
" Use my snippets instead :D
let g:neosnippet#snippets_directory='$HOME/.config/nvim/snippets'

"                ╔══════════════════════════════════════════╗
"                ║               » SUPPER TAB «             ║
"                ╚══════════════════════════════════════════╝

" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType javascript.jsx let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType typescript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType html,css,scss,sass,json let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"                ╔══════════════════════════════════════════╗
"                ║                » MAPPINGS «              ║
"                ╚══════════════════════════════════════════╝

" Use <TAB> to select the popup menu (Forward and Backward):
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

