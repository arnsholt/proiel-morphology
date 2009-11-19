SHELL=/bin/bash

.PHONY: test clean experiment

latin.fst: nouns.fst verbs.fst
	xfst -f build/latin.fst.build

nouns.fst: nouns-lexc.txt nouns-twolc.fst
	xfst -f build/nouns.fst.build

nouns-twolc.fst: nouns-twolc.txt
	twolc < build/nouns-twolc.fst.build

verbs.fst: verbs-lexc.txt verbs-twolc.fst
	xfst -f build/verbs.fst.build

verbs-twolc.fst: verbs-twolc.txt
	twolc < build/verbs-twolc.fst.build

test: latin.fst
	prove -r t/

clean:
	rm -f *.fst
