SHELL=/bin/bash
SQLUSER?=arne
SQLDB?=proiel

.PHONY: test clean src/latin.fst

latin.fst: src/latin.fst
	cp $< $@

src/latin.fst:
	make -C src latin.fst

bg.lemmata vulgata.lemmata: tools/mk-lemma-list.pl
	./tools/mk-lemma-list.pl --user=$(SQLUSER) --password=$(SQLPASS) --db=$(SQLDB)

test: latin.fst t/99-proiel-bg.t t/99-proiel-vulgata.t
	prove -It/ -r t/

t/99-proiel-bg.t t/99-proiel-vulgata.t: tools/mk-proiel-tests.pl
	./tools/mk-proiel-tests.pl --user=$(SQLUSER) --db=$(SQLDB) --password=$(SQLPASS)

clean:
	make -C src clean
	rm -f *.lemmata
	rm -f t/99-proiel-*.t
	rm -f latin.fst
