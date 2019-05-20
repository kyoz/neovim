"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/

" ERROR SIGN {{{

let g:lsp_signs_enabled = 1           " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

let g:lsp_signs_error = {'text': 'x'}
let g:lsp_signs_warning = {'text': '!'}
let g:lsp_signs_hint = {'text': '.'}

" }}}

" MAPPINGS {{{

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
  \ 'json',
  \ 'sh'
  \ ]

for item in registerList
  call LSP_Register(item)
endfor

" }}}

" TYPESCRIPT {{{

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-ts',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
    \ 'whitelist': ['typescript', 'typescript.tsx'],
    \ })
endif

" }}} 

" JAVASCRIPT {{{

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-js',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
    \ 'whitelist': ['javascript', 'javascript.jsx'],
    \ })
endif

" }}}

" HTML {{{

if executable('html-languageserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-html',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
    \ 'whitelist': ['html'],
    \ })
endif

" }}}

" CSS, SCSS, SASS, LESS {{{

if executable('css-languageserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-css',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
    \ 'whitelist': ['css', 'scss', 'less', 'sass']
    \ })
endif

" }}}

" VIM {{

if executable('vim-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-vim',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'vim-language-server --stdio']},
    \ 'whitelist': ['vim']
    \ })
endif

" }}}

" PYTHON {{{

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'lsp-py',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

" }}}

" DOCKER {{{

if executable('docker-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'lsp-docker',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'docker-langserver --stdio']},
        \ 'whitelist': ['dockerfile'],
        \ })
endif

" }}}

" JSON {{{

if executable('json-languageserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-json',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'json-languageserver --stdio']},
    \ 'whitelist': ['json'],
    \ })
endif

" }}}

" BASH {{{

if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'lsp-bash',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
    \ 'whitelist': ['sh'],
    \ })
endif

" }}}

" WORKAROUND {{{

" Fix duplicate in typescript lsp
call ncm2#override_source('lsp-js', {'filter': [{'name': 'set_dup', 'value': 0}]}) 
call ncm2#override_source('lsp-ts', {'filter': [{'name': 'set_dup', 'value': 0}]}) 

" }}}

