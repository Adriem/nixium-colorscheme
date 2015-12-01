" Vim color scheme file
" Name: Autumn
" Author: Adrian Moreno (admoreno@outlook.com)
" Maintainer: Adrian Moreno (admoreno@outlook.com)
" Version: 0.10

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "autumn"

" NORMAL TEXT
" ==================================================================================================
hi Normal guifg=#dadada guibg=#262626 guisp=#dadada gui=NONE ctermfg=253 ctermbg=235 cterm=NONE

" COMMENTS
" ==================================================================================================
" hi Comment guifg=#444444 guibg=NONE guisp=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi Comment guifg=#4e4e4e guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE

" CONSTANT GROUP
" ==================================================================================================
hi Constant  guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi String    guifg=#af875f guibg=NONE guisp=NONE gui=bold ctermfg=137 ctermbg=NONE cterm=bold
hi Character guifg=#d7875f guibg=NONE guisp=NONE gui=bold ctermfg=173 ctermbg=NONE cterm=bold
" hi Number  -- INHERIT FROM NUMBER --
" hi Boolean -- INHERIT FROM CONSTANT --
" hi Float   -- INHERIT FROM NUMBER --

" IDENTIFIER GROUP
" ==================================================================================================
hi Identifier guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15  ctermbg=NONE cterm=NONE
hi Function   guifg=#bcbcbc guibg=NONE guisp=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE

" STATEMENT GROUP
" ==================================================================================================
hi Statement guifg=#d75f00 guibg=NONE guisp=NONE gui=bold ctermfg=166 ctermbg=NONE cterm=bold
" hi Conditional -- INHERIT FROM STATEMENT --
" hi Repeat      -- INHERIT FROM STATEMENT --
" hi Label       -- INHERIT FROM STATEMENT --
" hi Operator    -- INHERIT FROM STATEMENT --
" hi Keyword     -- INHERIT FROM STATEMENT --
" hi Exception   -- INHERIT FROM STATEMENT --

" PREPROC GROUP
" ==================================================================================================
hi PreProc guifg=#875f00 guibg=NONE guisp=NONE gui=bold ctermfg=94 ctermbg=NONE cterm=bold
" hi Include   -- INHERIT FROM PREPROC --
" hi Define    -- INHERIT FROM PREPROC --
" hi Macro     -- INHERIT FROM PREPROC --
" hi Exception -- INHERIT FROM PREPROC --
" hi PreCondit -- INHERIT FROM PREPROC --

" TYPE GROUP
" ==================================================================================================
hi Type guifg=#ff8700 guibg=NONE guisp=NONE gui=bold ctermfg=208 ctermbg=NONE cterm=bold
" hi StorageClass -- INHERIT FROM TYPE --
" hi Structure    -- INHERIT FROM TYPE --
" hi Typedef      -- INHERIT FROM TYPE --

" SPECIAL GROUP
" ==================================================================================================
hi Special   guifg=#767676 guibg=NONE guisp=NONE gui=bold ctermfg=243 ctermbg=NONE cterm=bold
" hi SpecialChar -- INHERIT FROM SPECIAL --
" hi Tag         -- INHERIT FROM SPECIAL --
" hi Delimiter   -- INHERIT FROM SPECIAL --
" hi SpecialComment guifg=#444444 guibg=NONE guisp=NONE gui=bold ctermfg=244 ctermbg=NONE cterm=bold
" hi Debug       -- INHERIT FROM SPECIAL --

" UNDERLINED, IGNORE, ERROR AND TODO
" ==================================================================================================
hi Underlined guifg=#5f87ff guibg=NONE guisp=NONE gui=underline ctermfg=69 ctermbg=NONE cterm=underline
" hi Ignore -- DEFAULT SETTINGS --
hi Error guifg=#ff0000 guibg=NONE guisp=#ff0000 gui=underline ctermfg=196 ctermbg=NONE cterm=underline
hi Todo guifg=NONE guibg=#af5f00 guisp=NONE gui=bold ctermfg=NONE ctermbg=130 cterm=bold

" HTML SPECIFIC
" ==================================================================================================
hi HtmlTagName guifg=#afaf00 guibg=NONE guisp=NONE gui=bold   ctermfg=142 ctermbg=NONE cterm=bold
hi HtmlString  guifg=#87875f guibg=NONE guisp=NONE gui=italic ctermfg=101 ctermbg=NONE cterm=bold
hi HtmlArg     guifg=#5f5f00 guibg=NONE guisp=NONE gui=bold   ctermfg=58  ctermbg=NONE cterm=bold
hi HtmlTag     guifg=#5f5f00 guibg=NONE guisp=NONE gui=bold   ctermfg=58  ctermbg=NONE cterm=bold
hi HtmlEndTag  guifg=#5f5f00 guibg=NONE guisp=NONE gui=bold   ctermfg=58  ctermbg=NONE cterm=bold

" JSP SPECIFIC
" ==================================================================================================
hi jspTag       guifg=#ff8700 guibg=NONE guisp=NONE gui=bold ctermfg=208 ctermbg=NONE cterm=bold
hi jspExpr      guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi jspDecl      guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi jspScriptlet guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi jspDirective guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold

" EDITOR GUI
" ==================================================================================================
hi ColorColumn  guifg=NONE    guibg=#303030 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLine   guifg=NONE    guibg=#1c1c1c guisp=NONE gui=NONE ctermfg=NONE ctermbg=234  cterm=NONE
" hi Conceal    -- DEFAULT SETTINGS --
hi Cursor       guifg=#000000 guibg=#dadada guisp=NONE gui=NONE ctermfg=0    ctermbg=253  cterm=NONE
hi CursorIM     guifg=#000000 guibg=#dadada guisp=NONE gui=NONE ctermfg=0    ctermbg=253  cterm=NONE
hi Directory    guifg=#ff8700 guibg=NONE    guisp=NONE gui=bold ctermfg=208  ctermbg=NONE cterm=bold
hi VertSplit    guifg=#444444 guibg=#444444 guisp=NONE gui=NONE ctermfg=238  ctermbg=238  cterm=NONE
hi Folded       guifg=#875f5f guibg=#303030 guisp=NONE gui=bold ctermfg=95   ctermbg=236  cterm=NONE
" hi FoldColumn -- DEFAULT SETTINGS --
" hi SignColumn -- DEFAULT SETTINGS --
hi LineNr       guifg=#4e4e4e guibg=NONE    guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
hi CursorLineNr guifg=#dadada guibg=NONE    guisp=NONE gui=bold ctermfg=253 ctermbg=NONE cterm=bold
hi MatchParen   guifg=#000000 guibg=#5fd75f guisp=NONE gui=NONE ctermfg=0   ctermbg=77   cterm=NONE
hi NonText      guifg=#606060 guibg=NONE    guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
" hi SpetialKey --DEFAULT SETTINGS --
hi StatusLine   guifg=#ffffff guibg=#444444 guisp=NONE gui=bold ctermfg=15  ctermbg=238 cterm=bold
hi StatusLineNC guifg=#262626 guibg=#444444 guisp=NONE gui=bold ctermfg=235 ctermbg=238 cterm=bold
" hi TabLine     -- DEFAULT SETTINGS --
" hi TabLineFill -- DEFAULT SETTINGS --
" hi TabLineSel  -- DEFAULT SETTINGS --
hi Title     guifg=#ffffff guibg=NONE    guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Visual    guifg=#ffffff guibg=#878787 guisp=NONE gui=bold ctermfg=15 ctermbg=102  cterm=bold
hi VisualNOS guifg=#ffffff guibg=#878787 guisp=NONE gui=bold ctermfg=15 ctermbg=102  cterm=bold

" TYPO
" ==================================================================================================
hi SpellBad guifg=NONE guibg=NONE guisp=#00875f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
" hi SpellCap   -- DEFAULT SETTINGS --
" hi SpellLocal -- DEFAULT SETTINGS --
" hi SpellRare  -- DEFAULT SETTINGS --

" SEARCH
" ==================================================================================================
hi IncSearch guifg=#303030 guibg=#d75f00 guisp=NONE gui=NONE ctermfg=236 ctermbg=166 cterm=NONE
hi Search    guifg=#303030 guibg=#d75f00 guisp=NONE gui=NONE ctermfg=236 ctermbg=166 cterm=NONE
" hi WildMenu

" DIFF
" ==================================================================================================
hi DiffAdd    guifg=#1c1c1c guibg=#5f8700 guisp=NONE gui=bold ctermfg=234 ctermbg=64  cterm=NONE
"hi DiffAdd    guifg=#1c1c1c guibg=#87af5f guisp=NONE gui=NONE ctermfg=NONE ctermbg=29  cterm=NONE
hi DiffChange guifg=#1c1c1c guibg=#444444 guisp=NONE gui=NONE ctermfg=234 ctermbg=238 cterm=NONE
hi DiffDelete guifg=#1c1c1c guibg=#5f0000 guisp=NONE gui=NONE ctermfg=234 ctermbg=52  cterm=NONE
hi DiffText   guifg=#1c1c1c guibg=#262626 guisp=NONE gui=NONE ctermfg=234 ctermbg=235 cterm=NONE

" MESSAGES
" ==================================================================================================
hi ErrorMsg   guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi ModeMsg    guifg=#00d787 guibg=NONE guisp=NONE gui=bold ctermfg=42  ctermbg=NONE cterm=bold
" hi MoreMsg  -- DEFAULT SETTINGS --
" hi Question -- DEFAULT SETTINGS --
hi WarningMsg guifg=#ffaf00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE

" PMENU
" ==================================================================================================
hi Pmenu      guifg=#d0d0d0 guibg=#303030 guisp=NONE gui=NONE ctermfg=252 ctermbg=236 cterm=NONE
hi PmenuSel   guifg=#303030 guibg=#d0d0d0 guisp=NONE gui=NONE ctermfg=236 ctermbg=252 cterm=NONE
hi PmenuSbar  guifg=#444444 guibg=#444444 guisp=NONE gui=NONE ctermfg=238 ctermbg=238 cterm=NONE
hi PmenuThumb guifg=#767676 guibg=#767676 guisp=NONE gui=NONE ctermfg=243 ctermbg=243 cterm=NONE

" GUI
" ==================================================================================================
hi Scrollbar  guifg=#3a3a3a guibg=#1a1c1f
