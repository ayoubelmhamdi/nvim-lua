
augroup ft_reload
  au!
  au InsertLeave,TextChanged *.dart :call SomeCheck() 
augroup END

function! SomeCheck()
   if filereadable("/tmp/flutter.p")
       !kill -USR1 $(cat /tmp/flutter.pid)
   endif
endfunction
