#
# Build the presentation
#

.PHONY: buildpdfs clean

.PRECIOUS: %.dvi

buildpdfs: 001-Overview.pdf

%.pdf: %.dvi
	dvipdf $<

%.dvi: %.tex
	latex $<


clean:
	rm *.aux *.log *.nav *.out *.pdf *.snm *.toc *.dvi *~







