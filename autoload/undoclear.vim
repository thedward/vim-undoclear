
function! undoclear#UndoClear(...)
  if a:0 > 0
    let bs = a:000
  else
    let bs = ['%']
  endif
  let lazy = &lazyredraw
  set lazyredraw
  for b in bs
    exe 'buffer' bufnr(b)
    let old_undolevels = &undolevels
    setlocal undolevels=-1
    exe "normal a \<BS>\<Esc>"
    exe "setlocal undolevels=" . old_undolevels
    unlet old_undolevels
  endfor
  let &lazyredraw = lazy
  redraw
endfunction
