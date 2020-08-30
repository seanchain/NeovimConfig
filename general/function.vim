
noremap <A-r> :call SpringBootRun()<CR>
func! SpringBootRun()
    set splitbelow
    :sp
    :term mvn spring-boot:run
    :resize 10
endfunc
