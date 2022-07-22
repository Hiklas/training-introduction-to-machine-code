#
# Build the presentation
#

.PHONY: buildpdfs clean overview processors 6502cpu

.PRECIOUS: %.dvi

buildpdfs: overview processors 6502cpu

overview: 001-Overview.pdf 001-Overview.notes.pdf

processors: 002-Processors.pdf 002-Processors.notes.pdf

6502cpu: 003-6502-CPU.pdf 003-6502-CPU.notes.pdf


%.pdf: %.dvi
	dvipdf $<

%.notes.pdf: %.notes.dvi
	dvipdf $<

# This is all quite hacky to avoid using symlinks to tex files since
# MacOS git seems to treat these as files.  The Makefile variable $*
# is going to be, for example 001-Overview, but we need the jobname
# to be 001-Overview.notes so that it produces the 001-Overview.notes.dvi
# file!
%.notes.dvi: %.tex
	latex -jobname="$*.notes" "\def\isnotes{1} \input{$<}"

# This is a hack to make sure that TOC is updated, I hope there
# is a better way to do this than running twice :( 
%.dvi: %.tex
	latex $<
	latex $<

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.dvi *~

