if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case match
syntax keyword lexcKeyword Multichar_Symbols LEXICON
syntax match lexcEOS /#/
syntax match lexcEOL /;/
syntax match lexcComment /!.*/

" TODO: Match :, highlight more stuff.

hi def link lexcComment Comment
hi def link lexcKeyword Keyword

let b:current_syntax = "lexc"
