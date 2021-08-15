    
let g:time_total = readfile("/opt/time-spend1",'',1)[0]
let g:time_step  = 0
let g:time_total_string=""
augroup counter | au!
    au InsertEnter * let g:time_step = localtime()
    au InsertLeave * let g:time_total += localtime() - g:time_step
    " au InsertLeave * let time_total_string = time_total .. "s"
    au InsertLeave * let g:time_total_string = Time_ago(time_total)
    au InsertLeave * :call writefile([g:time_total], "/opt/time-spend1", "b")
    "  au InsertLeave * :echo g:time_total
augroup END

function! Time_ago(agel)
  let l:age = a:agel
  let l:hours = l:age / 60 / 60 % 24
  let l:minutes = l:age / 60 % 60
  let l:seconds = l:age % 60
  " echo l:seconds
  let l:time= l:hours .. ":" .. l:minutes .. ":" .. l:seconds
  return l:time
endfunction
" call Time_ago(200)
