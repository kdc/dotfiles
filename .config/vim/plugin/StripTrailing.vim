function! StripTrailing()
    " Strip whitespace but do not report failure.
    try
  :%s/\s\+$//g
    catch
    endtry
endfunction
