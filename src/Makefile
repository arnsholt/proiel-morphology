.PHONY: clean

%-twolc.fst: %.twolc
	echo 'read-grammar $<\ncompile\nintersect\ny\nphon\nsave-binary $@\nquit' | twolc

%-lexc.fst: %.lexc
	echo 'read lexc $<\nsave stack $@' | xfst

latin.fst: nouns.fst verbs.fst indecl-lexc.fst pronouns-lexc.fst build/latin.fst.build
	xfst -f build/latin.fst.build

nouns.fst: nouns-lexc.fst nouns-twolc.fst build/nouns.fst.build
	xfst -f build/nouns.fst.build

verbs.fst: verbs-lexc.fst verbs-twolc.fst build/verbs.fst.build
	xfst -f build/verbs.fst.build

#nouns-twolc.fst: nouns-twolc.txt build/nouns-twolc.fst.build
#	twolc < build/nouns-twolc.fst.build
#
#verbs-twolc.fst: verbs-twolc.txt build/verbs-twolc.fst.build
#	twolc < build/verbs-twolc.fst.build
#
#indecl.fst: indecl-lexc.txt build/indecl.fst.build
#	xfst -f build/indecl.fst.build
#
#pronouns.fst: pronouns-lexc.txt build/pronouns.fst.build
#	xfst -f build/pronouns.fst.build

clean:
	rm -f *.fst
