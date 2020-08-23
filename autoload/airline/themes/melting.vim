let s:save_cpo = &cpoptions
set cpoptions&vim

let s:n_black    = "#1B1E25"
let s:n_red      = "#BF5C80"
let s:n_green    = "#6AA28C"
let s:n_yellow   = "#C2BC85"
let s:n_blue     = "#84A0C6"
let s:n_magenta  = "#A093C7"
let s:n_cyan     = "#89B8C2"
let s:n_white    = "#C6C8D1"

let s:d_gray     = "#3D4252"
let s:n_gray     = "#515870"
let s:b_gray     = "#6B7089"

let s:b_black    = "#1F222A"
let s:b_red      = "#F2779B"
let s:b_green    = "#88CEA2"
let s:b_yellow   = "#DCDE92"
let s:b_blue     = "#A9BBD5"
let s:b_magenta  = "#C6B9DB"
let s:b_cyan     = "#9BE1D0"
let s:b_white    = "#E1E2E8"

function! s:build_palette() abort
  let l:base       = [s:n_white, s:d_gray,    1, 7]
  let l:transition = [s:b_white, s:n_gray,    1, 7]

  let l:inactive   = [s:b_gray,  s:b_black,   1, 7]
  let l:normal     = [s:b_black, s:n_cyan,    1, 7]
  let l:insert     = [s:b_black, s:n_green,   1, 7]
  let l:replace    = [s:b_black, s:b_red,     1, 7]
  let l:visual     = [s:n_black, s:n_magenta, 1, 7]

  let l:error      = [s:n_black, s:b_red,     1, 7]
  let l:warning    = [s:n_black, s:b_yellow,  1, 7]

  let l:p = {}
  let l:p.inactive = airline#themes#generate_color_map(
        \ l:inactive,
        \ l:inactive,
        \ l:inactive)
  let l:p.normal = airline#themes#generate_color_map(
        \ l:normal,
        \ l:transition,
        \ l:base)
  let l:p.insert = airline#themes#generate_color_map(
        \ l:insert,
        \ l:transition,
        \ l:base)
  let l:p.replace = airline#themes#generate_color_map(
        \ l:replace,
        \ l:transition,
        \ l:base)
  let l:p.visual = airline#themes#generate_color_map(
        \ l:visual,
        \ l:transition,
        \ l:base)

  " Error
  let l:p.inactive.airline_error   = l:error
  let l:p.insert.airline_error     = l:error
  let l:p.normal.airline_error     = l:error
  let l:p.replace.airline_error    = l:error
  let l:p.visual.airline_error     = l:error

  " Warning
  let l:p.inactive.airline_warning = l:warning
  let l:p.insert.airline_warning   = l:warning
  let l:p.normal.airline_warning   = l:warning
  let l:p.replace.airline_warning  = l:warning
  let l:p.visual.airline_warning   = l:warning

  return l:p
endfunction

let g:airline#themes#melting#palette = s:build_palette()

let &cpo = s:save_cpo
unlet s:save_cpo
