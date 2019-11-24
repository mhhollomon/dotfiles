"
" Neutron colorscheme
"
" 
set background=light
highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="neutron"


" 
" Blindly assume true color cterm support
"
function! s:h(group, fg, bg, attr)
  if a:fg != ""
    exec "hi " . a:group . " guifg=" . a:fg 
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if a:bg != ""
    exec "hi " . a:group . " guibg=" . a:bg 
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun

let s:gray_20 = "#202020"
let s:gray_40 = "#404040"
let s:gray_60 = "#606060"
let s:gray_70 = "#707070"
let s:gray_80 = "#808080"
let s:gray_90 = "#909090"
let s:gray_a0 = "#a0a0a0"
let s:gray_b0 = "#b0b0b0"
let s:gray_d0 = "#d0d0d0"
let s:gray_e0 = "#e0e0e0"

" The 'normal' colors.
let s:bg      = "#f3f2ed"
let s:fg      = "#303030"

" Vim functional group {{{1
"        group           fg         bg         attr
call s:h("Cursor",       s:gray_a0, s:gray_40, "")
call s:h("CursorColumn", s:gray_20, s:gray_e0, "")
call s:h("CursorLine",   s:gray_20, s:gray_e0, "")

call s:h("NonText",      s:gray_60, s:gray_d0, "")
call s:h("Visual",       s:fg,      "#fffac8", "") 
call s:h("Folded",       s:gray_60, "#e8e5d0", "")
call s:h("TabLineFill",  s:gray_60, s:gray_d0, "")
call s:h("SpecialKey",   s:gray_a0, "#e8e8e8", "")
call s:h("Search",       "#ffffff", s:gray_80, "")
call s:h("ModeMsg",      "#304050", s:bg,      "")
call s:h("MoreMsg",      "#304050", s:bg,      "")
" Make status line reversed
call s:h("StatusLine",   s:bg,      s:gray_80, "bold")
call s:h("StatusLineNC", s:gray_d0, s:gray_70, "")
call s:h("VertSplit",    s:gray_90, s:gray_70, "")
call s:h("LineNr",       s:gray_80, "#e8e5d0", "")

call s:h("DiffAdd",      "#ffcc7f", "#a67429", "")
call s:h("DiffDelete",   "#ff7f50", "#a62910", "")
call s:h("DiffChange",   "#7fbdff", "#425c78", "")
call s:h("DiffText",     "#8ae234", "#4e9a06", "")

" Special, so can't use our function
hi SpellBad     gui=undercurl guisp=#f02020

" Semantic Groups {{{1
call s:h("Title",        s:gray_20, s:bg, "underline")
call s:h("Normal",       s:fg,      s:bg, "")

call s:h("Comment",      s:gray_b0, s:bg, "italic")

call s:h("Constant",     "#957301", s:bg, "")
call s:h("String",       "#a07060", s:bg, "")
call s:h("Character",    "#bb6245", s:bg, "")
call s:h("Number",       "#ba7222", s:bg, "")
call s:h("Boolean",      "#d4552c", s:bg, "")
call s:h("Float",        "#e87a00", s:bg, "")

call s:h("Identifier",   "#546c48", s:bg, "")
call s:h("Function",     "#6d7181", s:bg, "")

call s:h("Statement",    s:gray_60, s:bg, "")
call s:h("Conditional",  "#81ac3a", s:bg, "")
call s:h("Repeat",       "#aab844", s:bg, "")
call s:h("Label",        "#969664", s:bg, "underline")
call s:h("Operator",     "#a79a39", s:bg, "")
call s:h("Keyword",      "#408077", s:bg, "")
call s:h("Exception",    "#a03020", s:bg, "")

hi PreProc        guibg=#f3f2ed guifg=#7d64af gui=none
hi Include        guibg=#f3f2ed guifg=#c5a2d8 gui=none
hi Define         guibg=#f3f2ed guifg=#605080 gui=none
hi Macro          guibg=#f3f2ed guifg=#79519d gui=none
hi PreCondit      guibg=#f3f2ed guifg=#75698c gui=none

hi Type           guibg=#f3f2ed guifg=#7d95ad gui=none
hi StorageClass   guibg=#f3f2ed guifg=#678b5b gui=none
hi Structure      guibg=#f3f2ed guifg=#5d6da3 gui=none
hi Typedef        guibg=#f3f2ed guifg=#5080b0 gui=none

hi Special        guibg=#f3f2ed guifg=#408077 gui=none
hi SpecialChar    guibg=#f3f2ed guifg=#603020 gui=none
hi Tag            guibg=#f3f2ed guifg=#a6a679 gui=underline
hi Delimiter      guibg=#f3f2ed guifg=#808080 gui=none
hi SpecialComment guibg=#f3f2ed guifg=#caacac gui=none
hi Debug          guibg=#f3f2ed guifg=#908080 gui=none

hi Underlined     guibg=#f3f2ed guifg=#202020 gui=underline

hi Error          guibg=#faf5cd guifg=#c83c28 gui=none

hi ToDo           guibg=#f3f2ed guifg=#404040 gui=none
