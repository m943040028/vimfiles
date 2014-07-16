map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

map <C-F11> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' -o -iname '*.s' -o -iname '*.S' > cscope.files ;<CR>
  \:!cscope -b -i cscope.files -f cscope.out<CR>
  \:cs kill -1<CR>:cs add cscope.out<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set cscopequickfix=s-,c-,d-,i-,t-,e-
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
 
