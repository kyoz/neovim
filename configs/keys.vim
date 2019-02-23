"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/

"                ╔══════════════════════════════════════════╗
"                ║                » GENERAL «               ║
"                ╚══════════════════════════════════════════╝

let mapleader = "\<Space>" 

"                ╔══════════════════════════════════════════╗
"                ║             » BUFFER MOTIONS «           ║
"                ╚══════════════════════════════════════════╝

nnoremap gB :bprevious <CR> 
nnoremap gb :bnext <CR>

"                ╔══════════════════════════════════════════╗
"                ║                » DISABLED «              ║
"                ╚══════════════════════════════════════════╝

" Disable Ctrl-Z
nnoremap <c-z> <nop>

"                ╔══════════════════════════════════════════╗
"                ║             » WINDOW RESIZE «            ║
"                ╚══════════════════════════════════════════╝

if bufwinnr(1)
  noremap <silent> <C-H> :vertical resize -4<CR>
  noremap <silent> <C-L> :vertical resize +4><CR>
  noremap <silent> <C-J> :resize -4<CR>
  noremap <silent> <C-K> :resize +4<CR>
endif

