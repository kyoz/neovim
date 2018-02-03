"===============================================================================
"====================               MAPPINGS              ======================
"===============================================================================
"     
" camelCase motion settings
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
"                                                                        --
" map <F3> :tabprevious <CR> 
" map <F4> :tabnext <CR>
nnoremap  gB :bprevious <CR> " Preview Buffer
nnoremap  gb :bnext <CR> " Next Buffer

"=============== FUNCTION KEYS

map <F2> :NERDTreeToggle <CR> "-------------------- NERDTree Toggle Shortcut  --

let g:ctrlp_map = '<c-p>' "-------------------------- CtrlP Default command mapping --
let g:ctrlp_cmd = 'CtrlP' "--------------------------  --