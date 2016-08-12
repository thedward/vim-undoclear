if ! exists(':UndoClear')
  command! -nargs=* UndoClear call undoclear#UndoClear(<f-args>)
endif
