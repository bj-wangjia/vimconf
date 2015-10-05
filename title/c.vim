call setline(1, "/**")

let b:line_nu = 0
call append(line(".") + b:line_nu, "")

let b:line_nu = b:line_nu + 1
call append(line("."), " * @file: ".expand("%")) 

let b:line_nu = b:line_nu + 1
call append(line(".")+ b:line_nu, " * @author: ".g:author) 

let b:line_nu = b:line_nu + 1
call append(line(".")+ b:line_nu, " * @mail: ".g:email) 

let b:line_nu = b:line_nu + 1
call append(line(".")+ b:line_nu, " * @date: ".strftime("%Y/%m/%d %T")) 

let b:line_nu = b:line_nu + 1
call append(line(".")+ b:line_nu, " **/") 

let b:line_nu = b:line_nu + 1
call append(line(".")+ b:line_nu, "")

"如果文件扩展名是h
if expand("%:e") == 'h'
    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "\#ifndef ")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "\#define ")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "namespace {")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "class ")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "{")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "};")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "}")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "")

    let b:line_nu = b:line_nu + 1
    call append(line(".")+ b:line_nu, "\#endif")
endif
