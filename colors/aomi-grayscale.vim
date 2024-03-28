hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "aomi-grayscale"

" TODO: cterm colors

" Colors abbrev
let s:vmode     = "gui"
let s:none      = "NONE"
let s:black     = "#0d1117"
let s:deep      = "#171a1f"
let s:dull      = "#40444a"
let s:gray      = "#78808a"
let s:semiwhite = "#aeb9c2"
let s:white     = "#e4ecf3"

if &background == 'light'
	let s:black     = "#ffffff"
	let s:deep      = "#e9eff5"
	let s:dull      = "#c7cfd6"
	let s:gray      = "#9097a3"
	let s:semiwhite = "#6e7781"
	let s:white     = "#06070a"
endif

let s:bg_none      = " " .s:vmode ."bg=" .s:none
let s:bg_black     = " " .s:vmode ."bg=" .s:black
let s:bg_deep      = " " .s:vmode ."bg=" .s:deep
let s:bg_dull      = " " .s:vmode ."bg=" .s:dull
let s:bg_gray      = " " .s:vmode ."bg=" .s:gray
let s:bg_semiwhite = " " .s:vmode ."bg=" .s:semiwhite
let s:bg_white     = " " .s:vmode ."bg=" .s:white

let s:fg_none      = " " .s:vmode ."fg=" .s:none
let s:fg_black     = " " .s:vmode ."fg=" .s:black
let s:fg_deep      = " " .s:vmode ."fg=" .s:deep
let s:fg_dull      = " " .s:vmode ."fg=" .s:dull
let s:fg_gray      = " " .s:vmode ."fg=" .s:gray
let s:fg_semiwhite = " " .s:vmode ."fg=" .s:semiwhite
let s:fg_white     = " " .s:vmode ."fg=" .s:white

" Format abbrev
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

let s:vmode = "cterm"
let s:fmt_none = " " .s:vmode."=NONE".          " term=NONE"
let s:fmt_bold = " " .s:vmode."=NONE".s:b.      " term=NONE".s:b
let s:fmt_bldi = " " .s:vmode."=NONE".s:b.      " term=NONE".s:b
let s:fmt_undr = " " .s:vmode."=NONE".s:u.      " term=NONE".s:u
let s:fmt_undb = " " .s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b
let s:fmt_undi = " " .s:vmode."=NONE".s:u.      " term=NONE".s:u
let s:fmt_curl = " " .s:vmode."=NONE".s:c.      " term=NONE".s:c
let s:fmt_ital = " " .s:vmode."=NONE".s:i.      " term=NONE".s:i
let s:fmt_stnd = " " .s:vmode."=NONE".s:s.      " term=NONE".s:s
let s:fmt_revr = " " .s:vmode."=NONE".s:r.      " term=NONE".s:r
let s:fmt_revb = " " .s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b

" Main colors
let s:normal    = s:fmt_none .s:fg_white     .s:bg_black
let s:keyword   = s:fmt_none .s:fg_semiwhite .s:bg_none
let s:comment   = s:fmt_none .s:fg_gray      .s:bg_none
let s:attention = s:fmt_undr .s:fg_white     .s:bg_none

" Basic highlights
exe "hi Normal"      .s:normal
exe "hi Comment"     .s:comment
exe "hi Constant"    .s:normal
exe "hi String"      .s:keyword
exe "hi Character"   .s:keyword
exe "hi Identifier"  .s:normal
exe "hi Statement"   .s:keyword
exe "hi PreProc"     .s:keyword
exe "hi Type"        .s:normal
exe "hi Special"     .s:normal
exe "hi Underlined"  .s:fmt_undr .s:fg_white     .s:bg_none
exe "hi Ignore"      .s:fmt_none .s:fg_none      .s:bg_none
exe "hi Error"       .s:attention
exe "hi Todo"        .s:fmt_bold .s:fg_white     .s:bg_deep

exe "hi SpecialKey"    .s:fmt_none .s:fg_dull      .s:bg_none
exe "hi NonText"       .s:fmt_none .s:fg_dull      .s:bg_none
exe "hi StatusLine"    .s:fmt_none .s:fg_white     .s:bg_dull
exe "hi StatusLineNC"  .s:fmt_none .s:fg_gray      .s:bg_deep
exe "hi Visual"        .s:fmt_none .s:fg_none      .s:bg_dull
exe "hi Directory"     .s:keyword
exe "hi ErrorMsg"      .s:attention
exe "hi IncSearch"     .s:fmt_revr .s:fg_gray     .s:bg_black
exe "hi Search"        .s:fmt_revr .s:fg_white    .s:bg_black
exe "hi MoreMsg"       .s:normal
exe "hi ModeMsg"       .s:normal
exe "hi LineNr"        .s:fmt_none .s:fg_dull      .s:bg_none
exe "hi CursorLineNr"  .s:fmt_none .s:fg_white     .s:bg_none
exe "hi Question"      .s:attention
exe "hi VertSplit"     .s:fmt_none .s:fg_deep      .s:bg_none
exe "hi Title"         .s:normal
exe "hi VisualNOS"     .s:fmt_none .s:fg_none      .s:bg_dull
exe "hi WarningMsg"    .s:attention
exe "hi WildMenu"      .s:fmt_none .s:fg_white     .s:bg_dull
exe "hi Folded"        .s:fmt_none .s:fg_gray      .s:bg_deep
exe "hi FoldColumn"    .s:fmt_none .s:fg_white     .s:bg_deep
" TODO: Diff
exe "hi SignColumn"    .s:normal
exe "hi Conceal"       .s:fmt_none
exe "hi SpellBad"      .s:fmt_undr
exe "hi SpellCap"      .s:fmt_undr
exe "hi SpellRare"     .s:fmt_undr
exe "hi SpellLocal"    .s:fmt_undr
exe "hi PMenu"         .s:fmt_none .s:fg_white     .s:bg_deep
exe "hi PMenuSel"      .s:fmt_none .s:fg_white     .s:bg_dull
exe "hi PMenuSbar"     .s:fmt_none .s:fg_gray      .s:bg_deep
exe "hi PMenuThumb"    .s:fmt_none .s:fg_gray      .s:bg_gray
exe "hi TabLine"       .s:fmt_undr .s:fg_gray      .s:bg_deep
exe "hi TabLineFill"   .s:fmt_undr .s:fg_gray      .s:bg_deep
exe "hi TabLineSel"    .s:fmt_undr .s:fg_semiwhite .s:bg_deep
exe "hi CursorLine"    .s:fmt_none .s:fg_none      .s:bg_deep
exe "hi CursorColumn"  .s:fmt_none .s:fg_none      .s:bg_deep
exe "hi Cursor"        .s:fmt_none .s:fg_none      .s:bg_dull
exe "hi MatchParen"    .s:fmt_none .s:fg_none      .s:bg_dull

" Links
hi link CtrlPMatch Visual

hi link LspErrorVirtualText Comment

if &background == 'light'
	exe "hi Visual"        .s:fmt_none .s:fg_none      .s:bg_deep
endif
