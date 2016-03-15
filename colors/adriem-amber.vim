" Vim color scheme file
" Name: Adriem Amber
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
let g:colors_name = "adriem-amber"

" NORMAL TEXT
" ==================================================================================================
hi Normal guifg=#dadada guibg=#262626 gui=NONE guisp=#dadada
        \ ctermfg=253 ctermbg=235 cterm=NONE
" COMMENTS
" ==================================================================================================
hi Comment guifg=#444444 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=238 ctermbg=NONE cterm=NONE

" CONSTANT GROUP
" ==================================================================================================
hi Constant guifg=#ffaf5f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=215 ctermbg=NONE cterm=NONE
hi String guifg=#af875f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=137 ctermbg=NONE cterm=NONE
hi Character guifg=#d7875f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=173 ctermbg=NONE cterm=NONE
" hi Number    guifg=#d7875f guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
" hi Boolean -- INHERIT FROM CONSTANT --
" hi Float   -- INHERIT FROM NUMBER --

" IDENTIFIER GROUP
" ==================================================================================================
hi Identifier guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=15 ctermbg=NONE cterm=NONE
hi Function guifg=#bcbcbc guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=250 ctermbg=NONE cterm=NONE

" STATEMENT GROUP
" ==================================================================================================
hi Statement guifg=#d75f00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=166 ctermbg=NONE cterm=NONE
" hi Conditional -- INHERIT FROM STATEMENT --
" hi Repeat      -- INHERIT FROM STATEMENT --
" hi Label       -- INHERIT FROM STATEMENT --
" hi Operator    -- INHERIT FROM STATEMENT --
" hi Keyword     -- INHERIT FROM STATEMENT --
" hi Exception   -- INHERIT FROM STATEMENT --

" PREPROC GROUP
" ==================================================================================================
hi PreProc guifg=#875f00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=94 ctermbg=NONE cterm=NONE
" hi Include   -- INHERIT FROM PREPROC --
" hi Define    -- INHERIT FROM PREPROC --
" hi Macro     -- INHERIT FROM PREPROC --
" hi Exception -- INHERIT FROM PREPROC --
" hi PreCondit -- INHERIT FROM PREPROC --

" TYPE GROUP
" ==================================================================================================
hi Type guifg=#ff8700 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=208 ctermbg=NONE cterm=NONE
" hi StorageClass -- INHERIT FROM TYPE --
" hi Structure    -- INHERIT FROM TYPE --
" hi Typedef      -- INHERIT FROM TYPE --

" SPECIAL GROUP
" ==================================================================================================
hi Special guifg=#767676 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=243 ctermbg=NONE cterm=NONE
" hi SpecialChar -- INHERIT FROM SPECIAL --
" hi Tag         -- INHERIT FROM SPECIAL --
" hi Delimiter   -- INHERIT FROM SPECIAL --
" hi SpecialComment guifg=#444444 guibg=NONE guisp=NONE gui=NONE ctermfg=244 ctermbg=NONE cterm=NONE
" hi Debug       -- INHERIT FROM SPECIAL --

" UNDERLINED, IGNORE, ERROR AND TODO
" ==================================================================================================
hi Underlined guifg=#5f87ff guibg=NONE gui=underline guisp=NONE
        \ ctermfg=69 ctermbg=NONE cterm=underline
" hi Ignore -- DEFAULT SETTINGS --
hi Error guifg=#ff0000 guibg=NONE gui=underline guisp=#ff0000
        \ ctermfg=196 ctermbg=NONE cterm=underline
hi Todo guifg=NONE guibg=#af5f00 gui=NONE guisp=NONE
        \ ctermfg=NONE ctermbg=130 cterm=NONE

" HTML SPECIFIC
" ==================================================================================================
hi HtmlTagName guifg=#afaf00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=142 ctermbg=NONE cterm=NONE
hi HtmlString guifg=#87875f guibg=NONE gui=italic guisp=NONE
        \ ctermfg=101 ctermbg=NONE cterm=NONE
hi HtmlArg guifg=#5f5f00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=58 ctermbg=NONE cterm=NONE
hi HtmlTag guifg=#5f5f00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=58 ctermbg=NONE cterm=NONE
hi HtmlEndTag guifg=#5f5f00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=58 ctermbg=NONE cterm=NONE

" JSP SPECIFIC
" ==================================================================================================
hi jspTag guifg=#ff8700 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=208 ctermbg=NONE cterm=NONE
hi jspExpr guifg=#ffaf5f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=215 ctermbg=NONE cterm=NONE
hi jspDecl guifg=#ffaf5f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=215 ctermbg=NONE cterm=NONE
hi jspScriptlet guifg=#ffaf5f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=215 ctermbg=NONE cterm=NONE
hi jspDirective guifg=#ffaf5f guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=215 ctermbg=NONE cterm=NONE

" COFFEESCRIPT SPECIFIC
" ==================================================================================================
hi coffeeExtendedOp guifg=#767676 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=243 ctermbg=NONE cterm=NONE

" EDITOR GUI
" ==================================================================================================
hi ColorColumn guifg=NONE guibg=#3a3a3a gui=NONE guisp=NONE
        \ ctermfg=NONE ctermbg=237 cterm=NONE
hi CursorLine guifg=NONE guibg=#303030 gui=NONE guisp=NONE
        \ ctermfg=NONE ctermbg=236 cterm=NONE
" hi Conceal    -- DEFAULT SETTINGS --
hi Cursor guifg=#000000 guibg=#dadada gui=NONE guisp=NONE
        \ ctermfg=0 ctermbg=253 cterm=NONE
hi CursorIM guifg=#000000 guibg=#dadada gui=NONE guisp=NONE
        \ ctermfg=0 ctermbg=253 cterm=NONE
" hi Directory    guifg=#ff8700 guibg=NONE    guisp=NONE gui=NONE ctermfg=208  ctermbg=NONE cterm=NONE
hi Directory guifg=#949494 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=246 ctermbg=NONE cterm=NONE
" hi VertSplit    guifg=#121212 guibg=#121212 guisp=NONE gui=NONE ctermfg=238  ctermbg=238  cterm=NONE
hi VertSplit guifg=#1c1c1c guibg=#1c1c1c gui=NONE guisp=NONE
        \ ctermfg=234 ctermbg=234 cterm=NONE
hi Folded guifg=#875f5f guibg=#303030 gui=NONE guisp=NONE
        \ ctermfg=95 ctermbg=236 cterm=NONE
" hi FoldColumn -- DEFAULT SETTINGS --
" hi SignColumn -- DEFAULT SETTINGS --
hi LineNr guifg=#4e4e4e guibg=#303030 gui=NONE guisp=NONE
        \ ctermfg=239 ctermbg=236 cterm=NONE
hi CursorLineNr guifg=#afafaf guibg=#3a3a3a gui=NONE guisp=NONE
        \ ctermfg=249 ctermbg=237 cterm=NONE
hi MatchParen guifg=#000000 guibg=#5fd75f gui=NONE guisp=NONE
        \ ctermfg=0 ctermbg=77 cterm=NONE
hi NonText guifg=#606060 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=241 ctermbg=NONE cterm=NONE
" hi SpetialKey --DEFAULT SETTINGS --
hi StatusLine guifg=#767676 guibg=#1c1c1c gui=NONE guisp=NONE
        \ ctermfg=243 ctermbg=234 cterm=NONE
" hi StatusLine   guifg=#666666 guibg=#121212 guisp=NONE gui=NONE ctermfg=242 ctermbg=233 cterm=NONE
hi StatusLineNC guifg=#3a3a3a guibg=#1c1c1c gui=NONE guisp=NONE
        \ ctermfg=237 ctermbg=234 cterm=NONE
" hi StatusLineNC guifg=#3a3a3a guibg=#121212 guisp=NONE gui=NONE ctermfg=237 ctermbg=233 cterm=NONE
" hi TabLine     -- DEFAULT SETTINGS --
" hi TabLineFill -- DEFAULT SETTINGS --
" hi TabLineSel  -- DEFAULT SETTINGS --
hi Title guifg=#ffffff guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=15 ctermbg=NONE cterm=NONE
hi Visual guifg=#262626 guibg=#808080 gui=NONE guisp=NONE
        \ ctermfg=235 ctermbg=244 cterm=NONE
hi VisualNOS guifg=#262626 guibg=#808080 gui=NONE guisp=NONE
        \ ctermfg=235 ctermbg=244 cterm=NONE

" TYPO
" ==================================================================================================
hi SpellBad guifg=NONE guibg=NONE gui=undercurl guisp=#00875f
        \ ctermfg=NONE ctermbg=NONE cterm=underline
" hi SpellCap   -- DEFAULT SETTINGS --
" hi SpellLocal -- DEFAULT SETTINGS --
" hi SpellRare  -- DEFAULT SETTINGS --

" SEARCH
" ==================================================================================================
hi IncSearch guifg=#303030 guibg=#d75f00 gui=NONE guisp=NONE
        \ ctermfg=236 ctermbg=166 cterm=NONE
hi Search guifg=#303030 guibg=#d75f00 gui=NONE guisp=NONE
        \ ctermfg=236 ctermbg=166 cterm=NONE
" hi WildMenu

" DIFF
" ==================================================================================================
hi DiffAdd guifg=#1c1c1c guibg=#5f8700 gui=NONE guisp=NONE
        \ ctermfg=234 ctermbg=64 cterm=NONE
"hi DiffAdd    guifg=#1c1c1c guibg=#87af5f guisp=NONE gui=NONE ctermfg=NONE ctermbg=29  cterm=NONE
hi DiffChange guifg=#1c1c1c guibg=#444444 gui=NONE guisp=NONE
        \ ctermfg=234 ctermbg=238 cterm=NONE
hi DiffDelete guifg=#1c1c1c guibg=#5f0000 gui=NONE guisp=NONE
        \ ctermfg=234 ctermbg=52 cterm=NONE
hi DiffText guifg=#1c1c1c guibg=#262626 gui=NONE guisp=NONE
        \ ctermfg=234 ctermbg=235 cterm=NONE

" MESSAGES
" ==================================================================================================
hi ErrorMsg guifg=#ff0000 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=196 ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#00d787 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=42 ctermbg=NONE cterm=NONE
" hi MoreMsg  -- DEFAULT SETTINGS --
" hi Question -- DEFAULT SETTINGS --
hi WarningMsg guifg=#ffaf00 guibg=NONE gui=NONE guisp=NONE
        \ ctermfg=214 ctermbg=NONE cterm=NONE

" PMENU
" ==================================================================================================
hi Pmenu guifg=#d0d0d0 guibg=#303030 gui=NONE guisp=NONE
        \ ctermfg=252 ctermbg=236 cterm=NONE
hi PmenuSel guifg=#303030 guibg=#d0d0d0 gui=NONE guisp=NONE
        \ ctermfg=236 ctermbg=252 cterm=NONE
hi PmenuSbar guifg=#444444 guibg=#444444 gui=NONE guisp=NONE
        \ ctermfg=238 ctermbg=238 cterm=NONE
hi PmenuThumb guifg=#767676 guibg=#767676 gui=NONE guisp=NONE
        \ ctermfg=243 ctermbg=243 cterm=NONE

" GUI
" ==================================================================================================
hi Scrollbar  guifg=#3a3a3a guibg=#1a1c1f
