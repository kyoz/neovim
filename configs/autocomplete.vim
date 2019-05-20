"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/

" NCM2 SETTINGS {{{

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
set shortmess+=c

" }}}

" OMNIFUNC SETTINGS {{{

set pumheight=10 "--------------------------------- Limit autocomple candidates

" Html source
au User Ncm2Plugin call ncm2#register_source({
  \ 'name' : 'html',
  \ 'priority': 9,
  \ 'subscope_enable': 1,
  \ 'scope': ['html'],
  \ 'mark': 'html',
  \ 'complete_pattern': ['\<'],
  \ 'word_pattern': '[\w-]+',
  \ 'on_complete': [ 'ncm2#on_complete#omni',
                   \ 'htmlcomplete#CompleteTags'],
  \ })

" }}}

" SNIPPETS SETTINGS {{{

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

" }}}

" MAPPINGS {{{

" Use <TAB> to select the popup menu (Forward and Backward):
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" }}}

" NCM2 FLOAT PREVIEW {{{

let g:float_preview#docked = 0

" }}}

