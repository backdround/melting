if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'melting'


" Colors
let s:background = "#14171E"
let s:foreground = "#C6C8D1"

let s:n_black    = "#1D1E26"
let s:n_red      = "#BF5C80"
let s:n_green    = "#6AA28C"
let s:n_yellow   = "#C2BC85"
let s:n_blue     = "#84A0C6"
let s:n_magenta  = "#A093C7"
let s:n_cyan     = "#89B8C2"
let s:n_white    = "#C6C8D1"

let s:b_black    = "#6B7089"
let s:b_red      = "#F2779B"
let s:b_green    = "#88CEA2"
let s:b_yellow   = "#DCDE92"
let s:b_blue     = "#A9BBD5"
let s:b_magenta  = "#C6B9DB"
let s:b_cyan     = "#9BE1D0"
let s:b_white    = "#E1E2E8"


" Terminal colors
if has('nvim')
  let g:terminal_color_0  = s:n_black
  let g:terminal_color_1  = s:n_red
  let g:terminal_color_2  = s:n_green
  let g:terminal_color_3  = s:n_yellow
  let g:terminal_color_4  = s:n_blue
  let g:terminal_color_5  = s:n_magenta
  let g:terminal_color_6  = s:n_cyan
  let g:terminal_color_7  = s:n_white

  let g:terminal_color_8  = s:b_black
  let g:terminal_color_9  = s:b_red
  let g:terminal_color_10 = s:b_green
  let g:terminal_color_11 = s:b_yellow
  let g:terminal_color_12 = s:b_blue
  let g:terminal_color_13 = s:b_magenta
  let g:terminal_color_14 = s:b_cyan
  let g:terminal_color_15 = s:b_white
else
  let g:terminal_ansi_colors = [
        \ s:n_black, s:n_red, s:n_green, s:n_yellow, s:n_blue, s:n_magenta, s:n_cyan, s:n_white,
        \ s:b_black, s:b_red, s:b_green, s:b_yellow, s:b_blue, s:b_magenta, s:b_cyan, s:b_white,
        \ ]
endif


" Highlights
call melting#highlight('Cursor',             { 'fg': s:n_black, 'bg': s:b_white })
call melting#highlight('CursorLine',         { 'bg': s:n_black                  })
call melting#highlight("ColorColumn",        { 'bg': s:n_black                  })
call melting#highlight('CursorColumn',       { 'bg': s:n_black                  })

call melting#highlight('Normal',             { 'fg': s:foreground, 'bg': s:background})
call melting#highlight('Comment',            { 'fg': s:b_black, 'mode': 'italic'})
call melting#highlight('Statement',          { 'fg': s:n_magenta} )
call melting#highlight('Function',           { 'fg': s:n_magenta} )
call melting#highlight('Identifier',         { 'fg': s:b_blue} )

call melting#highlight('Type',               { 'fg': s:b_cyan} )
call melting#highlight('Constant',           { 'fg': s:b_yellow} )
call melting#highlight('String',             { 'fg': s:b_yellow} )
call melting#highlight('Operator',           { 'fg': s:b_yellow} )

call melting#highlight('PreProc',            { 'fg': s:n_red} )
call melting#highlight('Include',            { 'fg': s:n_red} )

call melting#highlight('Delimiter',          { 'fg': s:n_green} )
call melting#highlight('Title',              { 'fg': s:n_cyan} )
call melting#highlight('Underlined',         { 'fg': s:b_red} )
call melting#highlight('NonText',            { 'fg': s:n_magenta} )
call melting#highlight('Ignore',             { 'fg': s:n_white} )
call melting#highlight('Todo',               { 'fg': s:b_cyan, 'bg': s:b_black} )

call melting#highlight('Search',             { 'fg': s:n_black, 'bg': s:b_cyan } )
call melting#highlight('IncSearch',          { 'fg': s:n_black, 'bg': s:b_yellow } )

call melting#highlight('Special',            { 'fg': s:n_yellow} )
call melting#highlight('Visual',             { 'fg': s:b_white,    'bg': "#3D4252"    } )
call melting#highlight('MatchParen',         { 'fg': s:b_cyan,    'bg': s:b_black    } )

call melting#highlight('Folded',             { 'fg': s:b_magenta,   'bg': s:b_black       } )

call melting#highlight('Pmenu',              { 'fg': s:b_white,    'bg': "#212831"      } )
call melting#highlight('PmenuSel',           { 'fg': s:n_black,    'bg': s:b_blue       } )
call melting#highlight('PmenuSbar',          { 'bg': s:n_black       } )
call melting#highlight('PmenuThumb',         { 'bg': s:b_blue      } )

call melting#highlight('SignColumn',         { 'bg': s:n_black      } )

call melting#highlight('LineNr',             { 'fg': s:b_black, 'bg': s:n_black} )
call melting#highlight('CursorLineNr',       { 'fg': s:n_white, 'bg': s:n_black} )
call melting#highlight('VertSplit',          { 'bg': "#2C2E3A"} )

call melting#highlight('Directory',          { 'fg': s:b_blue} )

call melting#highlight('Error',              { 'fg': s:n_red})
call melting#highlight('ErrorMsg',           { 'fg': s:n_red})
call melting#highlight('WarningMsg',         { 'fg': s:n_yellow})
call melting#highlight('Whitespace',         { 'fg': s:n_magenta})

call melting#highlight("DiffAdd",            { 'fg': s:n_green , 'bg': s:n_black})
call melting#highlight("DiffChange",         { 'fg': s:n_yellow, 'bg': s:n_black})
call melting#highlight("DiffDelete",         { 'fg': s:n_red   , 'bg': s:n_black})
call melting#highlight("DiffText",           { 'fg': s:n_blue  , 'bg': s:n_black})


" Filetypes

" Shell scripts
call melting#highlight('zshDeref',           { 'fg': s:n_red   })
call melting#highlight('zshSubst',           { 'fg': s:n_green   })
call melting#highlight('zshSubstDelim',      { 'fg': s:n_magenta})
call melting#highlight('zshVariableDef',     { 'fg': s:n_cyan   })

" Man
call melting#highlight('manReference     ',   { 'fg': s:b_red} )
call melting#highlight('manUnderline     ',   { 'fg': s:b_red} )

call melting#highlight('manTitle         ',   { 'fg': s:n_yellow} )
call melting#highlight('manBold          ',   { 'fg': s:b_cyan} )

call melting#highlight('manOptionDesc    ',   { 'fg': s:n_magenta} )
call melting#highlight('manSectionHeading',   { 'fg': s:n_magenta} )
call melting#highlight('manSubHeading    ',   { 'fg': s:n_magenta} )

" For Vim help
call melting#highlight('helpHyperTextEntry', { 'fg': s:b_red} )
call melting#highlight('helpSectionDelim',   { 'fg': s:n_magenta} )
