if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case match
syntax keyword twolcKeyword Multichar_Symbols Alphabet Sets Definitions Rules where matched mixed
syntax keyword twolcTodo TODO XXX BUG FIXME contained
syntax match twolcOperator /<=>\|<=\|=>\|\/<=/
syntax match twolcComment /!.*/ contains=twolcTodo
syntax match twolcRuleName /"\([^"]\|\\.\)*"/

hi def link twolcComment Comment
hi def link twolcKeyword Keyword
hi def link twolcOperator Special
hi def link twolcRuleName String
hi def link twolcTodo Todo

let b:current_syntax = "twolc"
