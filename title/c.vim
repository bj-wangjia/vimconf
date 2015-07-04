call setline(1, "/**")
call append(line("."), " * @file: ".expand("%")) 
call append(line(".")+1, " * @author: ".g:author) 
call append(line(".")+2, " * @mail: ".g:email) 
call append(line(".")+3, " * @date: ".strftime("%Y/%m/%d %T")) 
call append(line(".")+4, " **/") 
call append(line(".")+5, "")

"如果文件扩展名是h
if expand("%:e") == 'h'
    call append(line(".")+6, "namespace {")
    call append(line(".")+7, "")
    call append(line(".")+8, "class ")
    call append(line(".")+9, "{")
    call append(line(".")+10, "")
    call append(line(".")+11, "};")
    call append(line(".")+12, "")
    call append(line(".")+10, "}")
endif
