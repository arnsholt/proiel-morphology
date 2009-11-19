if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    au! BufRead,BufNewFile *-lexc.txt   setfiletype lexc
    au! BufRead,BufNewFile *-twolc.txt  setfiletype twolc
augroup END
