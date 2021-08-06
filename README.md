# Introduction To Machine Code Training

## Overview

This repo is intended to contain training material and example code for 
learning about machine code.  The idea is to help those that are new to 
programming to get an understanding of how computers work at a low level.

In order to do this the material is going to make use of a fairly old, but
relatively simple, and (IMHO), well-loved, CPU, the 6502.  Thankfully there 
are lots of emulators, tools, and even hardware out there that can run 
6502 machine code thanks to the efforts of many people.

## Pre-requisites

* Python - this is for running the simple 6502 examples
* TeX - specifically the TeXLive distribution for the slides and other material
* GNUMake - for building documentation


## Notes

### Installing TeX Live on a Mac

Download the installer from [MacTeX](http://www.tug.org/mactex/index.html)

This is actually quite large (4Gb) so can take some time to download




### Installing on Linux

TODO


### Starting with Beamer solution

* Copying from `/usr/local/texlive/2021/texmf-dist/doc/latex/beamer/solutions/generic-talks/generic-ornate-15min-45min.en.tex` on Mac
* This will would be under `~/texmf/doc/latex/beamer/solutions/generic-talks/generic-ornate-15min-45min.en.tex` (check this path) if installed with `tlmgr` for a given user rather than globally
* Lots of hacking of the template
* Build the `01-IntroductionToMachineCode` using the following command

```
make buildpdfs
```

* Can also clean up with plethora of files with the `clean` target




## References

### TeX

* [TeX Live Guide](https://www.tug.org/texlive/doc/texlive-en/texlive-en.html)
* [Beamer guide](http://tug.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf)
* [MacTeX](http://www.tug.org/mactex/index.html)
* [PGF Portable Graphics Format](https://github.com/pgf-tikz/pgf)
* [PGF Manual](https://pgf-tikz.github.io/pgf/pgfmanual.pdf)
* [Beamer Theme Gallery](https://deic-web.uab.cat/~iblanes/beamer_gallery/index.html)


### Build Tools

* [GNU Make](https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents)
* [Make pattern rules](https://www.gnu.org/software/make/manual/html_node/Pattern-Examples.html#Pattern-Examples)
* [Why is make removing intermediate files](https://stackoverflow.com/questions/47447369/gnu-make-removing-intermediate-files)
* [Special targets including .PRECIOUS](https://www.gnu.org/software/make/manual/html_node/Special-Targets.html)


### Python 

* [py65 documentation](https://py65.readthedocs.io/en/latest/)


### Licenses

* [GNU Free Documentation License](https://www.gnu.org/licenses/fdl-1.3.en.html)
* [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html)

