"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/

augroup languages_indent
    autocmd!
    autocmd FileType vim    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
augroup END
