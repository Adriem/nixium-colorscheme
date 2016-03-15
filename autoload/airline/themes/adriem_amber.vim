" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
let g:airline#themes#adriem_amber#palette = {}

" Extract some colors from theme
let s:normal_colors = airline#themes#get_highlight('Normal')
let s:statusline_colors = airline#themes#get_highlight('StatusLine')
let s:statuslinenc_colors = airline#themes#get_highlight('StatusLineNC')
let s:visual_colors = airline#themes#get_highlight('Visual')

" Theme colors
let s:status_bg   = { 'gui': s:statusline_colors[1], 'cterm': s:statusline_colors[3] }
let s:statusnc_bg = { 'gui': s:statuslinenc_colors[1], 'cterm': s:statuslinenc_colors[3] }
let s:statusnc_fg = { 'gui': s:statuslinenc_colors[0], 'cterm': s:statuslinenc_colors[2] }
" Saturated
" let s:normal_fg   = { 'gui': '#888888', 'cterm': 240 }
" let s:insert_fg   = { 'gui': '#87af5f', 'cterm': 241 }
" let s:replace_fg  = { 'gui': '#d75f5f', 'cterm': 241 }
" let s:visual_fg   = { 'gui': '#5f87af', 'cterm': 241 }
" Desaturated
let s:normal_fg   = { 'gui': '#4e4e4e', 'cterm': 240 }
let s:insert_fg   = { 'gui': '#87875f', 'cterm': 241 }
let s:replace_fg  = { 'gui': '#af5f5f', 'cterm': 241 }
let s:visual_fg   = { 'gui': visual_colors[1], 'cterm': visual_colors[3] }


function! InverseColors(colors)
    return [a:colors[1], a:colors[0], a:colors[3], a:colors[2], a:colors[4]]
endfunction

function! GenerateColors(fg, bg, attrs)
    return [a:fg.gui, a:bg.gui, a:fg.cterm, a:bg.cterm, a:attrs]
endfunction


" Normal mode
let s:N1 = GenerateColors(s:status_bg, s:normal_fg, 'none')
let s:N2 = GenerateColors(s:normal_fg, s:status_bg, 'none')
let s:N3 = s:N1
let g:airline#themes#adriem_amber#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#adriem_amber#palette.normal_modified = { 'airline_c': [ '', '', '', '', 'bold' ] }

" Insert mode
let s:I1 = GenerateColors(s:status_bg, s:insert_fg, 'none')
let s:I2 = GenerateColors(s:insert_fg, s:status_bg, 'none')
let s:I3 = s:I1
let g:airline#themes#adriem_amber#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#adriem_amber#palette.insert_modified = { 'airline_c': [ '', '', '', '', 'bold' ] }
" let g:airline#themes#adriem_amber#palette.insert_paste = {
      " \ 'airline_a': [ s:I1[0], '#d78700', s:I1[2], 172, '' ],
      " \ }

" Replace mode
let s:R1 = GenerateColors(s:status_bg, s:replace_fg, 'none')
let s:R2 = GenerateColors(s:replace_fg, s:status_bg, 'none')
let s:R3 = s:R1
let g:airline#themes#adriem_amber#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#adriem_amber#palette.replace_modified = { 'airline_c': [ '', '', '', '', 'bold' ] }

" Visual mode
let s:V1 = GenerateColors(s:status_bg, s:visual_fg, 'none')
let s:V2 = GenerateColors(s:visual_fg, s:status_bg, 'none')
let s:V3 = s:V1
let g:airline#themes#adriem_amber#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#adriem_amber#palette.visual_modified = { 'airline_c': [ '', '', '', '', 'bold' ] }

" Inactive window
let s:IA1 = GenerateColors(s:statusnc_fg, s:statusnc_bg, 'none')
let s:IA2 = s:IA1
let s:IA3 = s:IA1
let g:airline#themes#adriem_amber#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#adriem_amber#palette.inactive_modified = { 'airline_c': [ '', '', '', '', 'bold' ] }


" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#adriem_amber#palette.accents = {
      \ 'red': [ '#5f0000', '', 88, '', 'bold' ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#adriem_amber#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])

