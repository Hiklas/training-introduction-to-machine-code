#
# Build the presentation
#

.PHONY: buildpdfs clean

.PRECIOUS: %.dvi

buildpdfs: 001-Overview.pdf

%.pdf: %.dvi
	dvipdf $<

%.dvi: %.tex
	# This is a hack to make sure that TOC is updated, I hope there
	# is a better way to do this than running twice :( 
	latex $<
	latex $<


clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.dvi *~







