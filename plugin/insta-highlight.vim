function! IH()
  let pattern=getreg("/")
  execute "syntax match mygroup123 /" . pattern . "/"
  hi mygroup123 ctermfg=black ctermbg=red
endfunction
