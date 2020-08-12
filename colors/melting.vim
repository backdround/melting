if !has('gui_running') && &t_Co < 256
  finish
endif

let s:n_black   = "#1d1e26"
let s:n_red     = "#bf5c80"
let s:n_green   = "#6aa28c"
let s:n_yellow  = "#c2bc85"
let s:n_blue    = "#84a0c6"
let s:n_magenta = "#a093c7"
let s:n_cyan    = "#89b8c2"
let s:n_white   = "#c6c8d1"

let s:b_black   = "#6b7089"
let s:b_red     = "#f2779b"
let s:b_green   = "#88cea2"
let s:b_yellow  = "#dcde92"
let s:b_blue    = "#a9bbd5"
let s:b_magenta = "#c6b9db"
let s:b_cyan    = "#9be1d0"
let s:b_white   = "#e1e2e8"

let s:search    = "#92E7D3"



"Terminal colors
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
