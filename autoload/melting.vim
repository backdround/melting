"clear highlight function autoloads
augroup SetHighlightFunctionGroup
  autocmd!
augroup END


function! melting#highlight(name, hl)
  let l:mode = get(a:hl, 'mode', 'none')
  let l:fg = get(a:hl, 'fg', 'none')
  let l:bg = get(a:hl, 'bg', 'none')
  execute "highlight ".a:name." gui=".l:mode." guifg=".l:fg." guibg=".l:bg
  augroup SetHighlightFunctionGroup
    execute "autocmd ColorScheme * highlight ".a:name." gui=".l:mode." guifg=".l:fg." guibg=".l:bg
  augroup END
endfunction
