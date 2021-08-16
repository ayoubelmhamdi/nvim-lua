"   atakaa g      j  h
augroup ft_reload
  au!
  au InsertLeave,TextChanged *.dart :!kill -USR1 $(cat /tmp/flutter.pid)
  au InsertLeave,TextChanged *.dart :echo "kill on"
augroup END

