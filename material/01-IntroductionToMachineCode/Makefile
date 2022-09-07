#
# Build the presentation
#

.PHONY: all buildpdfs clean overview processors 6502cpu

.PRECIOUS: %.dvi

all: buildpdfs

buildpdfs: overview processors 6502cpu

overview: 001-Overview.pdf 001-Overview.notes.pdf 001-Overview.handout.pdf

processors: 002-Processors.pdf 002-Processors.notes.pdf 002-Processors.handout.pdf

6502cpu: 003-6502-CPU.pdf 003-6502-CPU.notes.pdf 003-6502-CPU.handout.pdf


# These files just contain the slides, no notes
%.pdf: %.dvi
	dvipdf $<

# These files have only the notes being rendered
%.notes.pdf: %.notes.dvi
	dvipdf $<

# These have both slides and notes
%.handout.pdf: %.handout.dvi
	dvipdf $<

# This is all quite hacky to avoid using symlinks to tex files since
# MacOS git seems to treat these as files.  The Makefile variable $*
# is going to be, for example 001-Overview, but we need the jobname
# to be 001-Overview.notes so that it produces the 001-Overview.notes.dvi
# file!
%.notes.dvi: %.tex
	latex -jobname="$*.notes" "\def\isnotes{1} \input{$<}"

# Since the handout needs to have a TOC to complete the outline page
# we need the same hack as below that runs latex twice
# TODO: Find a better way to do this
%.handout.dvi: %.tex
	latex -jobname="$*.handout" "\def\ishandout{1} \input{$<}"
	latex -jobname="$*.handout" "\def\ishandout{1} \input{$<}"

# This is a hack to make sure that TOC is updated, I hope there
# is a better way to do this than running twice :(
# TODO: Figure out a better way to do this!
%.dvi: %.tex
	latex $<
	latex $<

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.dvi *~

