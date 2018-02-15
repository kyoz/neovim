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
"                ║             » BUFFER MOTIONS «           ║
"                ╚══════════════════════════════════════════╝

nnoremap gB :bprevious <CR> "----------------------------------- Previous Buffer
nnoremap gb :bnext <CR> "------------------------------------------- Next Buffer

"                ╔══════════════════════════════════════════╗
"                ║                 » AIRWRAP «              ║
"                ╚══════════════════════════════════════════╝

nnoremap <silent> gw :ArgWrap<CR> "--------------------- Argwrap default mapping

"                ╔══════════════════════════════════════════╗
"                ║                » NERDTREE «              ║
"                ╚══════════════════════════════════════════╝

map <F2> :NERDTreeToggle <CR> "--------------------------------- NERDTree Toggle

"                ╔══════════════════════════════════════════╗
"                ║                 » CTRL-P «               ║
"                ╚══════════════════════════════════════════╝

let g:ctrlp_map = '<c-p>' "----------------------- CtrlP Default command mapping
let g:ctrlp_cmd = 'CtrlP'

"                ╔══════════════════════════════════════════╗
"                ║                 » TERNJS «               ║
"                ╚══════════════════════════════════════════╝

autocmd FileType javascript nnoremap <silent> <buffer> gd :TernDef<CR>

"                ╔══════════════════════════════════════════╗
"                ║                » SNIPPETS «              ║
"                ╚══════════════════════════════════════════╝

" let g:UltiSnipsExpandTrigger
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target="<c-j>"

" Tab to select the next field to fill in the snippets
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"                ╔══════════════════════════════════════════╗
"                ║                » DISABLED «              ║
"                ╚══════════════════════════════════════════╝

nnoremap <c-z> <nop> "------------------------------------------- Disable Ctrl-Z
