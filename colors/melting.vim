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

let s:n_black    = "#1B1E25"
let s:n_red      = "#BF5C80"
let s:n_green    = "#6AA28C"
let s:n_yellow   = "#C2BC85"
let s:n_blue     = "#84A0C6"
let s:n_magenta  = "#A093C7"
let s:n_cyan     = "#89B8C2"
let s:n_white    = "#C6C8D1"

let s:d_gray     = "#22252F"
let s:n_gray     = "#3D4252"
let s:b_gray     = "#6B7089"

let s:b_black    = "#1F222A"
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
call melting#highlight('Cursor',       { 'fg': s:b_black,    'bg': s:b_white    })
call melting#highlight('CursorLine',   { 'bg': s:b_black                        })
call melting#highlight("ColorColumn",  { 'bg': s:b_black                        })
call melting#highlight('CursorColumn', { 'bg': s:b_black                        })

call melting#highlight('Normal',       { 'fg': s:foreground, 'bg': s:background })
call melting#highlight('Comment',      { 'fg': s:b_gray,     'mode': 'italic'   })
call melting#highlight('Statement',    { 'fg': s:n_magenta                      })
call melting#highlight('Function',     { 'fg': s:n_magenta                      })
call melting#highlight('Identifier',   { 'fg': s:b_blue                         })
call melting#highlight('EndOfBuffer',  { 'fg': s:d_gray                         })

call melting#highlight('Type',         { 'fg': s:b_cyan                         })
call melting#highlight('Constant',     { 'fg': s:b_yellow                       })
call melting#highlight('String',       { 'fg': s:b_yellow                       })
call melting#highlight('Operator',     { 'fg': s:b_yellow                       })

call melting#highlight('PreProc',      { 'fg': s:n_red                          })
call melting#highlight('Include',      { 'fg': s:n_red                          })

call melting#highlight('Delimiter',    { 'fg': s:n_green                        })
call melting#highlight('Title',        { 'fg': s:n_cyan                         })
call melting#highlight('Underlined',   { 'fg': s:b_red                          })
call melting#highlight('NonText',      { 'fg': s:n_magenta                      })
call melting#highlight('Ignore',       { 'fg': s:n_white                        })
call melting#highlight('Todo',         { 'fg': s:b_cyan,     'bg': s:b_gray     })

call melting#highlight('Search',       { 'fg': s:n_black,    'bg': s:b_cyan     })
call melting#highlight('IncSearch',    { 'fg': s:n_black,    'bg': s:b_yellow   })

call melting#highlight('Special',      { 'fg': s:n_yellow                       })
call melting#highlight('Visual',       { 'fg': s:b_white,    'bg': s:n_gray     })
call melting#highlight('MatchParen',   { 'fg': s:b_cyan,     'bg': s:b_gray     })

call melting#highlight('FoldColumn',   { 'fg': s:b_magenta,  'bg': s:n_black    })
call melting#highlight('Folded',       { 'fg': s:b_magenta,  'bg': s:b_gray     })

call melting#highlight('Pmenu',        { 'fg': s:n_white,    'bg': s:d_gray     })
call melting#highlight('PmenuSel',     { 'fg': s:b_white,    'bg': s:n_gray     })
call melting#highlight('PmenuSbar',    { 'bg': s:n_black                        })
call melting#highlight('PmenuThumb',   { 'bg': s:b_gray                         })

call melting#highlight('SignColumn',   { 'bg': s:n_black                        })

call melting#highlight('LineNr',       { 'fg': s:b_gray,     'bg': s:n_black    })
call melting#highlight('CursorLineNr', { 'fg': s:n_white,    'bg': s:n_black    })
call melting#highlight('VertSplit',    { 'bg': "#2C2E3A"                        })

call melting#highlight('Directory',    { 'fg': s:b_blue                         })

call melting#highlight('Error',        { 'fg': s:n_red                          })
call melting#highlight('ErrorMsg',     { 'fg': s:n_red                          })
call melting#highlight('WarningMsg',   { 'fg': s:n_yellow                       })
call melting#highlight('Whitespace',   { 'fg': s:n_magenta                      })

call melting#highlight("DiffAdd",      { 'fg': s:n_green,    'bg': s:n_black    })
call melting#highlight("DiffChange",   { 'fg': s:n_yellow,   'bg': s:n_black    })
call melting#highlight("DiffDelete",   { 'fg': s:n_red,      'bg': s:n_black    })
call melting#highlight("DiffText",     { 'fg': s:n_blue,     'bg': s:n_black    })


" Filetypes

" Shell scripts
call melting#highlight('zshDeref',           { 'fg': s:n_red     })
call melting#highlight('zshSubst',           { 'fg': s:n_green   })
call melting#highlight('zshSubstDelim',      { 'fg': s:n_magenta })
call melting#highlight('zshVariableDef',     { 'fg': s:n_cyan    })

" Man
call melting#highlight('manReference     ',  { 'fg': s:b_red     })
call melting#highlight('manUnderline     ',  { 'fg': s:b_red     })

call melting#highlight('manTitle         ',  { 'fg': s:n_yellow  })
call melting#highlight('manBold          ',  { 'fg': s:b_cyan    })

call melting#highlight('manOptionDesc    ',  { 'fg': s:n_magenta })
call melting#highlight('manSectionHeading',  { 'fg': s:n_magenta })
call melting#highlight('manSubHeading    ',  { 'fg': s:n_magenta })

" Vim help
call melting#highlight('helpHyperTextEntry', { 'fg': s:b_red     })
call melting#highlight('helpSectionDelim',   { 'fg': s:n_magenta })

" Vim
call melting#highlight('vimFunction',        { 'fg': s:n_green   })


" Plugins

" DevIcons - NERDTree
call melting#highlight('NERDTreeFlags', {'fg': s:n_green})

" Coc
call melting#highlight('ErrorColor',   {'fg': s:b_red    , 'bg': s:n_black})
call melting#highlight('WarningColor', {'fg': s:b_yellow , 'bg': s:n_black})
call melting#highlight('InfoColor',    {'fg': s:b_green  , 'bg': s:n_black})
call melting#highlight('HintColor',    {'fg': s:b_magenta, 'bg': s:n_black})

hi! link CocErrorHighlight   ErrorColor
hi! link CocWarningHighlight WarningColor
hi! link CocInfoHighlight    InfoColor
hi! link CocHintHighlight    HintColor

hi! link CocErrorSign        ErrorColor
hi! link CocWarningSign      WarningColor
hi! link CocInfoSign         InfoColor
hi! link CocHintSign         HintColor

call melting#highlight('CocErrorLine',          {'bg': s:n_black})
call melting#highlight('CocWarningLine',        {'bg': s:n_black})
call melting#highlight('CocInfoLine',           {'bg': s:n_black})
call melting#highlight('CocHintLine',           {'bg': s:n_black})

call melting#highlight('CocCodeLens',           {'fg': s:b_gray                 })
call melting#highlight('CocFloating',           {'fg': s:b_white, 'bg': s:d_gray})
call melting#highlight('CocHighlightText' ,     {'fg': s:n_cyan,  'bg': s:n_gray})

" Coc highlighted yank
call melting#highlight('HighlightedyankRegion', {'fg': s:b_white, 'bg': s:n_gray})

" Coc explorer
call melting#highlight('CocExplorerNormalFloatBorder	', {'fg': s:b_green })
call melting#highlight('CocExplorerNormalFloat	', {})

call melting#highlight('CocExplorerFileSize', {'fg': s:b_magenta})
call melting#highlight('CocExplorerFileDirectory', {'fg': s:n_magenta})
call melting#highlight('CocExplorerFileRootName', {'fg': s:b_cyan})

" Signature
let g:SignatureMarkTextHL   = 'ThemeSignatureMarkText'
let g:SignatureMarkerTextHL = 'ThemeSignatureMarkerText'
call melting#highlight('ThemeSignatureMarkerText', {'fg': s:b_red,     'bg': s:n_black})
call melting#highlight('ThemeSignatureMarkText',   {'fg': s:n_magenta, 'bg': s:n_black})

" Fzf
let g:fzf_colors =
      \ { 'fg'         : ['fg', 'Fzf'        ] ,
      \   'bg'         : ['bg', 'Fzf'        ] ,
      \   'fg+'        : ['fg', 'FzfS'       ] ,
      \   'bg+'        : ['bg', 'FzfS'       ] ,
      \   'hl'         : ['fg', 'FzfHl'      ] ,
      \   'hl+'        : ['bg', 'FzfHl'      ] ,
      \   'preview-fg' : ['fg', 'FzfPreview' ] ,
      \   'preview-bg' : ['bg', 'FzfPreview' ] ,
      \   'border'     : ['fg', 'FzfBorder'  ] ,
      \   'gutter'     : ['fg', 'FzfGutter'  ] }

call melting#highlight('Fzf',        {'fg': s:foreground, 'bg': s:background})
call melting#highlight('FzfS',       {'fg': s:b_white,    'bg': s:n_gray    })
call melting#highlight('FzfHl',      {'fg': s:n_red,      'bg': s:n_red     })
call melting#highlight('FzfPreview', {'fg': s:n_white,    'bg': s:n_black   })
call melting#highlight('FzfBorder',  {'fg': s:b_green                       })
call melting#highlight('FzfGutter',  {'fg': s:background                    })

" Easymotion
call melting#highlight('EasyMotionTarget',        {'fg': s:n_red,  'bg': s:background, 'mode': 'bold'})
call melting#highlight('EasyMotionShade',         {'fg': s:n_gray, 'bg': s:background, 'mode': 'bold'})

call melting#highlight('EasyMotionTarget2First',  {'fg': s:b_red,  'bg': s:d_gray,     'mode': 'bold'})
call melting#highlight('EasyMotionTarget2Second', {'fg': s:b_gray, 'bg': s:d_gray,     'mode': 'bold'})

call melting#highlight('EasyMotionIncSearch',     {'fg': s:b_cyan                                    })
call melting#highlight('EasyMotionMoveHL',        {'fg': s:b_yellow                                  })

" Floaterm
call melting#highlight('FloatermBorder', {'fg': s:b_green })
