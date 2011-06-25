SHELL=/bin/bash
SQLUSER?=arne
SQLDB?=proiel

.PHONY: test clean src/latin.fst

latin.fst: src/latin.fst
	cp $< $@

src/latin.fst:
	make -C src latin.fst

test: latin.fst t/99-proiel-bg.t t/99-proiel-vulgata.t
	prove -It/ -r t/

t/99-proiel-bg.t t/99-proiel-vulgata.t: tools/mk-proiel-tests.pl
	./tools/mk-proiel-tests.pl --user=$(SQLUSER) --db=$(SQLDB) --password=$(SQLPASS)

clean:
	make -C src clean
