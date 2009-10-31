load stack verbs-twolc.fst
intersect net
define phon

read lexc verbs-lexc.txt
define lex

read regex [ lex .o. phon ] ;
save stack verbs.fst
