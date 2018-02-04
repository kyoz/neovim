
" 
" " ==================completion
" augroup omnifuncs
"   autocmd!
"   autocmd FileType css,scss,sass setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"   " autocmd FileType javascript,jsx setlocal omnifunc=tern#Complete
"   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"   autocmd FileType javascript.jsx setlocal omnifunc=javascriptcomplete#CompleteJS
" 
" augroup end
" 
" " deoplete & neosnippets
" 
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
let g:autocomplete_flow#insert_paren_after_function = 0






" let g:neosnippet#enable_completed_snippet = 1
"   let g:deoplete#auto_complete_delay = 0
"   let g:echodoc_enable_at_startup=1 " Print functions DOC to echo area
" let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#sources = {}
" " let g:deoplete#sources.js = ['file', 'ultisnips', 'ternjs']
" let g:deoplete#sources#ternjs#types = 1
" let g:deoplete#sources#ternjs#docs = 1
" 
" 
" "--- Tern
" if exists('g:plugs["tern_for_vim"]')
"  " Enable excellent keyboard shortcuts
"   " let g:tern_map_keys=1
"   " let g:tern#command = ['tern']
"   " let g:tern#arguments = ['--persistent']
"   " let g:tern_request_timeout = 1
"   let g:tern_show_argument_hints = 'on_hold'
"   let g:tern_show_signature_in_pum = 1
"   autocmd FileType javascript setlocal omnifunc=tern#Complete
"   autocmd FileType javascript.jsx setlocal omnifunc=tern#Complete
" endif
" 


"=============== SuperTab
" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType javascript.jsx let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType typescript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType html,css,scss,sass,json let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" let g:UltiSnipsExpandTrigger="<C-j>"
" inoremap <expr><tab> pumvisible()? "\<c-n>" : "\<tab>"
" tern
"   autocmd FileType javascript nnoremap <silent> <buffer> gd :TernDef<CR>

