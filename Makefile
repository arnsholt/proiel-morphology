.PHONY: test

verbs.fst: verbs-lexc.txt verbs-twolc.fst
	xfst -f build/verbs.fst

verbs-twolc.fst: verbs-twolc.txt
	twolc < build/verbs-twolc.txt

test:
	./aux/test.pl | xfst -s verbs.fst
