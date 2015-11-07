call setline(1, "\#! /bin/bash")

let b:line_nu = 0

call append(line(".") + b:line_nu, "")

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "\########################################")

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "\# @file ".expand("%"))

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "\# @author ".g:author)

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "\# @email ".g:email)

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "\# @date ".strftime("%Y/%m/%d %T"))

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "\########################################")

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "")

let b:line_nu = b:line_nu + 1
call append(line(".") + b:line_nu, "")

