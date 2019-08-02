" Name:       purify.vim
" Author:     Kyoz
" Maintainer: https://github.com/kyoz/purify.vim/
" License:    The MIT License (MIT)
" Copyright:  Kyoz (banminkyoz@gmail.com)

highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

if &term == 'screen'
  set t_Co=256
endif

let g:colors_name = 'purify'

" Color Defines {{{

let s:black          = { 'gui': '#282C34', 'cterm': '235' }
let s:white          = { 'gui': '#ABB2BF', 'cterm': '145'  }
let s:red            = { 'gui': '#E06C75', 'cterm': '204'  }
let s:green          = { 'gui': '#98C379', 'cterm': '114'  }
let s:blue           = { 'gui': '#61AFEF', 'cterm': '39'   }
let s:yellow         = { 'gui': '#E5C07B', 'cterm': '180'  }
let s:pink           = { 'gui': '#FF79c6', 'cterm': '212'  }
let s:purple         = { 'gui': '#C678DD', 'cterm': '170'  }
let s:cyan           = { 'gui': '#56B6C2', 'cterm': '38'   }
let s:dark_red       = { 'gui': '#BE5046', 'cterm': '196'  }
let s:dark_yellow    = { 'gui': '#D19A66', 'cterm': '173'  }
let s:comment_grey   = { 'gui': '#5C6370', 'cterm': '59',  }
let s:visual_black   = { 'gui': 'NONE',    'cterm': 'NONE' }
let s:gutter_fg_grey = { 'gui': '#4B5263', 'cterm': '238'  }
let s:cursor_grey    = { 'gui': '#2C323C', 'cterm': '236'  }
let s:visual_grey    = { 'gui': '#3E4452', 'cterm': '237'  }
let s:menu_grey      = { 'gui': '#3E4452', 'cterm': '237'  }
let s:special_grey   = { 'gui': '#3B4048', 'cterm': '238'  }
let s:vertsplit      = { 'gui': '#181A1F', 'cterm': '59'   }
let s:none           = { 'gui': 'NONE', 'cterm': 'NONE' }

" }}}

" Styles Defines {{{

if !exists('g:purify_bold')
  let g:purify_bold = 1
endif

if !exists('g:purify_italic')
  let g:purify_italic = 1
endif

if !exists('g:purify_underline')
  let g:purify_underline = 1
endif

if !exists('g:purify_undercurl') && g:purify_underline != 0
  let g:purify_undercurl = 1
endif

if !exists('g:purify_inverse')
  let g:purify_inverse = 1
endif

let s:styles = {
      \ 'bold':      g:purify_bold == 1 ? 'bold' : 0,
      \ 'italic':    g:purify_italic == 1 ? 'italic' : 0,
      \ 'underline': g:purify_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:purify_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse':   g:purify_inverse == 1 ? 'inverse' : 0,
      \ }

" }}}

" Functions {{{

function! s:hi(group_name, fg, ...) " bg, styles, special
  let l:fg         = copy(a:fg)
  let l:bg         = get(a:, 1, ['NONE', 'NONE'])
  let l:style_list = filter((a:0 >= 2 ? a:3 : []), 'type(v:val) == 1')
  let l:styles     = len(l:style_list) > 0 ? join(l:style_list, ',') : 'NONE'
  let l:special    = a:0 >= 3 ? a:4 : s:none

  echom 'purify log'

  if l:special.gui !=# 'NONE' && l:fg.gui ==# 'NONE' && !has('gui_running')
    let l:fg = copy(l:special)
  endif

  execute 'highlight' a:group_name
        \ 'guifg=' l:fg.gui 'ctermfg=' l:fg.cterm
        \ 'guibg=' l:bg.gui 'ctermbg=' l:bg.cterm
        \ 'gui='   l:styles 'cterm='   l:styles
        \ 'guisp=' l:special.gui
endfunction

" }}}

" Syntax Groups Highlight (:h w18) {{{

call s:hi('Comment',        { 'fg': s:comment_grey, 'styles': [s:styles.italic] })
" call s:hi('Constant',       { 'fg': s:cyan })
" call s:hi('String',         { 'fg': s:green })
" call s:hi('Character',      { 'fg': s:green })
" call s:hi('Number',         { 'fg': s:dark_yellow })
" call s:hi('Boolean',        { 'fg': s:dark_yellow })
" call s:hi('Float',          { 'fg': s:dark_yellow })
" call s:hi('Identifier',     { 'fg': s:red })
" call s:hi('Function',       { 'fg': s:blue })
" call s:hi('Statement',      { 'fg': s:purple })
" call s:hi('Conditional',    { 'fg': s:purple })
" call s:hi('Repeat',         { 'fg': s:purple })
" call s:hi('Label',          { 'fg': s:purple })
" call s:hi('Operator',       { 'fg': s:purple })
" call s:hi('Keyword',        { 'fg': s:red })
" call s:hi('Exception',      { 'fg': s:purple })
" call s:hi('PreProc',        { 'fg': s:yellow })
" call s:hi('Include',        { 'fg': s:blue })
" call s:hi('Define',         { 'fg': s:purple })
" call s:hi('Macro',          { 'fg': s:purple })
" call s:hi('PreCondit',      { 'fg': s:yellow })
" call s:hi('Type',           { 'fg': s:yellow })
" call s:hi('StorageClass',   { 'fg': s:yellow })
" call s:hi('Structure',      { 'fg': s:yellow })
" call s:hi('Typedef',        { 'fg': s:yellow })
" call s:hi('Special',        { 'fg': s:blue })
" call s:hi('SpecialComment', { 'fg': s:comment_grey })
" call s:hi('Underlined',     { 'gui': 'underline', 'cterm': 'underline' })
" call s:hi('Error',          { 'fg': s:red })
" call s:hi('Todo',           { 'fg': s:purple })
" call s:hi('SpecialChar',    {})
" call s:hi('Tag',            {})
" call s:hi('Delimiter',      {})
" call s:hi('Debug',          {})
" call s:hi('Ignore',         {})

" }}}

execute 'set background=dark'
