function! IH(...)
  let pattern=getreg("/")
  let groupname = "insta" . trim(system("echo '" . pattern . "' | md5sum - | cut -c1-10"))
  execute "syntax match " . groupname . " /" . pattern . "/"
  execute "hi " . groupname . " ctermfg=black ctermbg=" . get(a:, 1, "red")
endfunction


