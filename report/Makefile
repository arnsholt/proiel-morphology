OBJ=report.dvi report.pdf
TEMPS=report.aux report.bbl report.blg report.log report.toc

.PHONY: clean

report.dvi: report.tex report.bib
	latex report
	bibtex report
	latex report
	latex report

report.pdf: report.dvi
	dvipdf report.dvi

clean:
	rm -f $(TEMPS) $(OBJ)
