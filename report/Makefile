OBJ=report.dvi report.pdf
TEMPS=report.aux report.bbl report.blg report.log report.toc

.PHONY: clean

all: report.pdf progress.pdf

report.dvi: report.tex report.bib
	latex report
	bibtex report
	latex report
	latex report

report.pdf: report.dvi
	dvipdf report.dvi

progress.dvi: progress.tex report.bib
	latex progress
	bibtex report
	latex progress
	latex progress

progress.pdf: progress.dvi
	dvipdf progress

clean:
	rm -f $(TEMPS) $(OBJ)
