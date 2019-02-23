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

set pumheight=10 "--------------------------------- Limit autocomple candidates

au User Ncm2Plugin call ncm2#register_source({
  \ 'name' : 'html',
  \ 'priority': 9,
  \ 'subscope_enable': 1,
  \ 'scope': ['html'],
  \ 'mark': 'html',
  \ 'complete_pattern': ['\<'],
  \ 'word_pattern': '[\w-]+',
  \ 'on_complete': ['ncm2#on_complete#omni', 'htmlcomplete#CompleteTags'],
  \ })

"                ╔══════════════════════════════════════════╗
"                ║        » LANGUAGE SERVER PROTOCOL «      ║
"                ╚══════════════════════════════════════════╝

" Sign
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

let g:lsp_signs_error = {'text': 'x'}
let g:lsp_signs_warning = {'text': '!'}
let g:lsp_signs_hint = {'text': '.'}

" Mapping
function! LSP_Register(fileType)
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> gd :LspDefinition<CR>'
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> gD :LspDocumentDiagnostics<CR>'
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> gh :LspHover<CR>'
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> gr :LspRename<CR>'
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> ge :LspNextError<CR>'
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> gE :LspPreviousError<CR>'
  " Use Prettier to format instead of lsp format
  exec 'au FileType '. a:fileType .' nnoremap <buffer><silent> gf :Prettier<CR>'
endfunction

let registerList = [
  \ 'html',
  \ 'css',
  \ 'scss',
  \ 'less',
  \ 'sass',
  \ 'typescript',
  \ 'javascript',
  \ 'json'
  \ ]

for item in registerList
  call LSP_Register(item)
endfor


" Typescript
if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-ts',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
    \ 'whitelist': ['typescript', 'typescript.tsx'],
    \ })
endif

" Javascript
if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-js',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
    \ 'whitelist': ['javascript', 'javascript.jsx'],
    \ })
endif

" Html
" if executable('html-languageserver')
  " au User lsp_setup call lsp#register_server({
  "   \ 'name': 'lsp-html',
  "   \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
  "   \ 'whitelist': ['html'],
  "   \ })
" endif

" CSS, SASS, LESS
if executable('css-languageserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-css',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
    \ 'whitelist': ['css', 'scss', 'less', 'sass'],
    \ })
endif

"JSON
if executable('json-languageserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-json',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'json-languageserver --stdio']},
    \ 'whitelist': ['json'],
    \ })
endif

" Workaround
call ncm2#override_source('lsp-ts', {'filter': [{'name': 'set_dup', 'value': 0}]}) 

"                ╔══════════════════════════════════════════╗
"                ║           » SNIPPETS SETTINGS «          ║
"                ╚══════════════════════════════════════════╝

let g:neosnippet#enable_completed_snippet = 1
" Not use default snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }

" Use my snippets instead :D
let g:neosnippet#snippets_directory='$HOME/.config/nvim/snippets'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-j> <Plug>(neosnippet_expand_or_jump)
smap <C-j> <Plug>(neosnippet_expand_or_jump)
xmap <C-j> <Plug>(neosnippet_expand_target)

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Press enter to trigger snippet expansion
inoremap <silent> <expr> <CR> ncm2_neosnippet#expand_or("\<CR>", 'n')

"                ╔══════════════════════════════════════════╗
"                ║                » MAPPINGS «              ║
"                ╚══════════════════════════════════════════╝

" Use <TAB> to select the popup menu (Forward and Backward):
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

