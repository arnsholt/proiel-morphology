all: lat.a latin-normalization.a

DATAFILES=\
	  declension2USn.dat \
	  declension3IO.dat \
	  declension1f.dat \
	  declension1m.dat \
	  declension2m.dat \
	  declension2n.dat \
	  declension2mi.dat \
	  declension2ni.dat \
	  declension3m-onis.dat \
	  declension4m.dat \
	  declension4n.dat \
	  declension12.dat \
	  declension12i.dat \
	  declensionIII-er.dat \
	  declensionIIIm-t.dat \
	  declensionIIIf-t.dat \
	  declensionIIIm-0.dat \
	  declensionIIIn.dat \
	  declensionII-is.dat \
	  declensionI-ns.dat \
	  conjugation1.dat \
	  conjugation1-dep.dat \
	  conjugation2.dat \
	  conjugation2-dep.dat \
	  conjugation3.dat \
	  conjugation3-dep.dat \
	  conjugation3i.dat \
	  conjugation3i-dep.dat \
	  conjugation4.dat \
	  conjugation4-dep.dat \
	  conjugation-ire.dat \
	  perfects.dat \
	  supines.dat \
	  comparatives.dat \
	  superlatives.dat \
	  conjugation1stemmed.dat \
	  conjugation2stemmed.dat \
	  conjugation3stemmed.dat \
	  conjugation3istemmed.dat \
	  conjugation4stemmed.dat

%.a: %.fst
	fst-compiler-utf8 -c -q $< $@

lat.fst: nominals.markdown verbs.markdown adverbs.markdown parse.rb $(DATAFILES)
	ruby parse.rb nominals.markdown verbs.markdown adverbs.markdown

perseus-fixed.csv: latin.morph.csv fix_perseus.rb latin-normalization.a
	ruby fix_perseus.rb < latin.morph.csv > $@

declension2USn.dat: perseus-fixed.csv
	grep '^[A-Za-z]*[Oo][Rr][Ii][Ss],[A-Za-z]*us[#1234567890]*,noun,sg,neut,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension3IO.dat: perseus-fixed.csv
	grep '^[A-Za-z]*onis,[A-Za-z]*o[#1234567890]*,noun,sg,fem,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension1f.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ae,[A-Za-z]*a[#1234567890]*,noun,sg,fem,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension1m.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ae,[A-Za-z]*a[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension2m.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*[^i]us[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension2n.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*[^i]um[#1234567890]*,noun,sg,neut,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension2mi.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*ius[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension2ni.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*ium[#1234567890]*,noun,sg,neut,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension3m-onis.dat: perseus-fixed.csv
	grep '^[A-Za-z]*onis,[A-Za-z]*o[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension4m.dat: perseus-fixed.csv
	grep '^[A-Za-z]*us,[A-Za-z]*us[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension4n.dat: perseus-fixed.csv
	grep '^[A-Za-z]*us,[A-Za-z]*u[#1234567890]*,noun,sg,neut,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declension12.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*[^i]us[#1234567890]*,adj,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' > $@
	grep '^[A-Za-z]*a,[A-Za-z]*[^i]us[#1234567890]*,adj,sg,fem,abl' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' >> $@
	grep '^[A-Za-z]*ae,[A-Za-z]*[^i]us[#1234567890]*,adj,sg,fem,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' >> $@
	sort $@ | uniq > a && mv a $@

declension12i.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*ius[#1234567890]*,adj,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' > $@
	grep '^[A-Za-z]*ia,[A-Za-z]*ius[#1234567890]*,adj,sg,fem,abl' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' >> $@
	grep '^[A-Za-z]*iae,[A-Za-z]*ius[#1234567890]*,adj,sg,fem,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' >> $@
	sort $@ | uniq > a && mv a $@

declensionIII-er.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ris,[A-Za-z]*er[#1234567890]*,adj,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' | sort | uniq > $@

declensionIIIm-t.dat: perseus-fixed.csv
	grep '^\([A-Za-z]*\)tis,\1s[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declensionIIIf-t.dat: perseus-fixed.csv
	grep '^\([A-Za-z]*\)tis,\1s[#1234567890]*,noun,sg,fem,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declensionIIIm-0.dat: perseus-fixed.csv
	grep '^\([A-Za-z]*\)is,\1[#1234567890]*,noun,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,noun.*//' | sort | uniq > $@

declensionII-is.dat: perseus-fixed.csv
	grep '^[A-Za-z]*is,[A-Za-z]*is[#1234567890]*,adj,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' | sort | uniq > $@

declensionI-ns.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ntis,[A-Za-z]*ns[#1234567890]*,adj,sg,masc,gen' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,adj.*//' | sort | uniq > $@

conjugation1.dat: perseus-fixed.csv
	grep '^[A-Za-z]*are,[A-Za-z]*o[#1234567890]*,verb,pres,inf' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,verb.*//' | sort | uniq > $@

conjugation1-dep.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ari,[A-Za-z]*or[#1234567890]*,verb,pres,inf' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)ari,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' > $@
	grep '^[A-Za-z]*andi,[A-Za-z]*or[#1234567890]*,verb,sg,pres,gerundive,pass,masc,gen' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)andi,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' >> $@
	sort $@ | uniq > a && mv a $@

conjugation2.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ere,[A-Za-z]*eo[#1234567890]*,verb,pres,inf' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,verb.*//' | sort | uniq > $@

conjugation2-dep.dat: perseus-fixed.csv
	grep '^[A-Za-z]*eri,[A-Za-z]*eor[#1234567890]*,verb,pres,inf' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)eri,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' | sort | uniq > $@

conjugation3.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ere,[A-Za-z]*[^ie]o[#1234567890]*,verb,pres,inf' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,verb.*//' | sort | uniq > $@

conjugation3-dep.dat: perseus-fixed.csv
	grep '^[A-Za-z]*[^r]i,[A-Za-z]*[^ie]or[#1234567890]*,verb,pres,inf' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)i,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' | sort | uniq > $@

conjugation3i.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ere,[A-Za-z]*io[#1234567890]*,verb,pres,inf' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,verb.*//' | sort | uniq > $@

conjugation3i-dep.dat: perseus-fixed.csv
	grep '^[A-Za-z]*[^r]i,[A-Za-z]*ior[#1234567890]*,verb,pres,inf' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)i,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' | sort | uniq > $@

conjugation4.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ire,[A-Za-z]*io[#1234567890]*,verb,pres,inf' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,verb.*//' | sort | uniq > $@

conjugation4-dep.dat: perseus-fixed.csv
	grep '^[A-Za-z]*iri,[A-Za-z]*ior[#1234567890]*,verb,pres,inf' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)iri,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' | sort | uniq > $@

conjugation-ire.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ire,[A-Za-z]*eo[#1234567890]*,verb,pres,inf' $< | sed 's/^[A-Za-z]*,//' | sed 's/#[0123456789]//' | sed 's/,verb.*//' | sort | uniq > $@

perfects.dat: perseus-fixed.csv
	grep '^[A-Za-z]*i,[A-Za-z]*or\?[#1234567890]*,verb,1st,sg,perf,ind,act' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\),\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' | sort | uniq > $@

supines.dat: perseus-fixed.csv
	grep '^[A-Za-z]*us,[A-Za-z]*or\?[#1234567890]*,verb,sg,perf,part,pass,masc,nom' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)us,\([A-Za-z]*\),/\2:\1,/' | sed 's/,verb.*//' | sort | uniq > $@

comparatives.dat: perseus-fixed.csv
	grep '^[A-Za-z]*ior,[A-Za-z]*[#1234567890]*,adj,sg,masc,nom,comp' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\),\([A-Za-z]*\),/\2:\1,/' | sed 's/,adj.*//' > $@
	grep '^[A-Za-z]*ius,[A-Za-z]*[#1234567890]*,adj,sg,neut,nom,comp' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)ius,\([A-Za-z]*\),/\2:\1ior,/' | sed 's/,adj.*//' >> $@
	sort $@ | uniq > a && mv a $@

superlatives.dat: perseus-fixed.csv
	grep '^[A-Za-z]*us,[A-Za-z]*[#1234567890]*,adj,sg,masc,nom,superl' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\),\([A-Za-z]*\),/\2:\1,/' | sed 's/,adj.*//' > $@
	grep '^[A-Za-z]*um,[A-Za-z]*[#1234567890]*,adj,sg,neut,nom,superl' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)um,\([A-Za-z]*\),/\2:\1us,/' | sed 's/,adj.*//' >> $@
	grep '^[A-Za-z]*a,[A-Za-z]*[#1234567890]*,adj,sg,fem,nom,superl' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)a,\([A-Za-z]*\),/\2:\1us,/' | sed 's/,adj.*//' >> $@
	grep '^[A-Za-z]*os,[A-Za-z]*[#1234567890]*,adj,pl,masc,acc,superl' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)os,\([A-Za-z]*\),/\2:\1us,/' | sed 's/,adj.*//' >> $@
	sort $@ | uniq > a && mv a $@

declensionIIIn.dat: perseus-fixed.csv
	grep '^[A-Za-z]*is,[A-Za-z]*[clnrstx][#1234567890]*,noun,sg,neut,gen' $< | sed 's/#[0123456789]//' | sed 's/^\([A-Za-z]*\)is,\([A-Za-z]*\),/\2:\1,/' | sed 's/,noun.*//' > $@

conjugation1stemmed.dat: conjugation1.dat
	sed 's/^\(.*\)o$$/\1o:\1/' $< > $@
conjugation2stemmed.dat: conjugation2.dat
	sed 's/^\(.*\)eo$$/\1eo:\1/' $< > $@
conjugation3stemmed.dat: conjugation3.dat
	sed 's/^\(.*\)o$$/\1o:\1/' $< > $@
conjugation3istemmed.dat: conjugation3i.dat
	sed 's/^\(.*\)io$$/\1io:\1/' $< > $@
conjugation4stemmed.dat: conjugation4.dat
	sed 's/^\(.*\)io$$/\1io:\1/' $< > $@

test: all
	./reduce-perseus
	sort unmatched.csv | uniq > a && mv a unmatched.csv
