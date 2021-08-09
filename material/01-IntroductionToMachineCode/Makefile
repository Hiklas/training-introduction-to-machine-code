#
# Build the presentation
#

.PHONY: buildpdfs clean overview processors 6502cpu

.PRECIOUS: %.dvi

buildpdfs: overview processors 6502cpu

overview: 001-Overview.pdf

processors: 002-Processors.pdf

6502cpu: 003-6502-CPU.pdf


%.pdf: %.dvi
	dvipdf $<

%.dvi: %.tex
	# This is a hack to make sure that TOC is updated, I hope there
	# is a better way to do this than running twice :( 
	latex $<
	latex $<


clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.dvi *~







