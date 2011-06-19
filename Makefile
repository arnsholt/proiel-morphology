SHELL=/bin/bash
SQLUSER?=arne
SQLDB?=proiel

.PHONY: test clean

latin.fst: src/latin.fst
	cp $< $@

src/latin.fst:
	make -C src latin.fst

test: latin.fst t/99-proiel-bg.t t/99-proiel-vulgata.t
	prove -r t/

t/99-proiel-bg.t t/99-proiel-vulgata.t: mk-proiel-tests.pl
	./mk-proiel-tests.pl --user=$(SQLUSER) --db=$(SQLDB) --password=$(SQLPASS)

clean:
	make -C src clean
