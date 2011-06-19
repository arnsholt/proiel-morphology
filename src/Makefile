.PHONY: clean

latin.fst: nouns.fst verbs.fst indecl.fst pronouns.fst
	xfst -f build/latin.fst.build

nouns.fst: nouns-lexc.txt nouns-twolc.fst
	xfst -f build/nouns.fst.build

nouns-twolc.fst: nouns-twolc.txt
	twolc < build/nouns-twolc.fst.build

verbs.fst: verbs-lexc.txt verbs-twolc.fst
	xfst -f build/verbs.fst.build

verbs-twolc.fst: verbs-twolc.txt
	twolc < build/verbs-twolc.fst.build

indecl.fst: indecl-lexc.txt
	xfst -f build/indecl.fst.build

pronouns.fst: pronouns-lexc.txt
	xfst -f build/pronouns.fst.build

clean:
	rm -f *.fst
