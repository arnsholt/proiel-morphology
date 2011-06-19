SHELL=/bin/bash
SQLUSER?=arne
SQLDB?=proiel

.PHONY: test clean

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

test: latin.fst t/99-proiel-bg.t t/99-proiel-vulgata.t
	prove -r t/

t/99-proiel-bg.t t/99-proiel-vulgata.t: mk-proiel-tests.pl
	./mk-proiel-tests.pl --user=$(SQLUSER) --db=$(SQLDB) --password=$(SQLPASS)

clean:
	rm -f *.fst
