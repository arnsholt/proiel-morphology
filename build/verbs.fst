load stack verbs-twolc.fst
define phon

read lexc verbs-lexc.txt
define lex

read regex [ lex .o. phon ] ;
save stack verbs.fst
