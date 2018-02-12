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
"===============================[ KEYS MAPPINGS ]===============================
"===============================================================================

"=========================[ camelCase motion settings ]=========================

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"===============================[ Buffer motions ]==============================

nnoremap gB :bprevious <CR> "----------------------------------- Previous Buffer
nnoremap gb :bnext <CR> "------------------------------------------- Next Buffer

"==================================[ Airwrap ]==================================

nnoremap <silent> gw :ArgWrap<CR> "--------------------- Argwrap default mapping

"==================================[ NERDTree ]=================================

map <F2> :NERDTreeToggle <CR> "--------------------------------- NERDTree Toggle

"===================================[ CtrlP ]===================================

let g:ctrlp_map = '<c-p>' "----------------------- CtrlP Default command mapping
let g:ctrlp_cmd = 'CtrlP'

"==================================[ Disable ]==================================

nnoremap <c-z> <nop> "------------------------------------------- Disable Ctrl-Z
