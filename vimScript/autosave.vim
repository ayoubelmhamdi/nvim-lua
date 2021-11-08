
let g:auto_save = 0
augroup ft_dart
  au!
  au FileType dart,javascript let b:auto_save = 1 
augroup END
