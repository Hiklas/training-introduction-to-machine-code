# Introduction To Machine Code Training

## Overview

This repo is intended to contain training material and example code for 
learning about machine code.  The idea is to help those that are new to 
programming to get an understanding of how computers work at a low level.

In order to do this the material is going to make use of a fairly old, but
relatively simple, and (IMHO), well-loved, CPU, the 6502.  Thankfully there 
are lots of emulators, tools, and even hardware out there that can run 
6502 machine code thanks to the efforts of many people.


## Quickstart

* Install TeX 
* Install pympress
* Build PDF files

```
cd material/01-IntroductionToMachineCode
make buildpdfs
```

* For a given presentation run pympress

```
pympress <filename>
```



## Pre-requisites

* TeX - specifically the TeXLive distribution for the slides and other material
* Python3 - this is for running the simple 6502 examples
* GNUMake - for building documentation
* Pympress - for displaying the presentations

### Install TeX

See the Notes section below for details about installing a TeX distribution 

This is ONLY needed for generating the slides and other documentation material.
Skip this step if you're only interested in the example 6502 machine code.


### Python Setup

Again see the notes section for details on how to install a Python distribution 
for your computer.  Once you have this up and running you should be able to proceed
with this setup for the tools.

Run these commands

```
python3 -mvenv .matrix
source .matrix/bin/activate
pip install py65
```

These commands will work on Mac or Linux machines (or anything UNIX-like) and may 
even work on Windows with the the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
TODO: Need to update these docs/instructions for Windows OS (maybe with WSL)



## Notes

### Installing TeX Live 

#### On MacOS

Download the installer from [MacTeX](http://www.tug.org/mactex/index.html)

This is actually quite large (4Gb) so can take some time to download

Run the installer and add this to your PATH to be able to allow the documents 
to be built

```
export PATH=$PATH:/usr/local/texlive/2021/bin/universal-darwin
```

#### On Linux

Don't rely on the TeX packages provided by your distribution, for example I believe the 
versions of tools/packages that come with Ubuntu 20.04 are out of date compared to the 
offical TeX setup.

TODO: Provide more information here

For now you can look at the scripts in the [latex-presentation-test](https://github.com/fionahiklas/latex-presentation-test) repo - this sets up a minimal TeX install under an Ubuntu Vagrant VM.

The official [TeX Live 2021](https://www.tug.org/texlive/acquire-netinstall.html) installation can be used to install a full version of this distribution.



### Installing Python

Python 3 should be installed by default on both MacOS and Linux.  Given that Python 2 is 
no longer supported this should absolutely NOT be used for this example setup.  At this 
point Python 3 should be available on almost all platforms.


#### Installing on Windows

TODO Add details of installing Python Windows


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
* [Tikz Circuit Gallery](https://texdoc.org/serve/circuitikz/0)
* [SI Units package](https://ctan.org/pkg/siunitx)
* [SI Units manual](https://anorien.csc.warwick.ac.uk/mirrors/CTAN/macros/latex/contrib/siunitx/siunitx.pdf)
* [The |- and -| notation in Tikz](https://tex.stackexchange.com/questions/401425/tikz-what-exactly-does-the-the-notation-for-arrows-do)
* [Another example of anchors](https://tex.stackexchange.com/questions/586713/circuitikz-tikz-x-and-y-coordinates-of-anchors-for-adjusting-lengths)
* [Using columns and blocks in Beamer](https://tex.stackexchange.com/questions/356104/floating-an-image-to-the-right-in-beamer)
* [Flipping nodes in tikz](https://tex.stackexchange.com/questions/414576/how-to-mirror-flip-node-in-tikz)
* [Resizing tikz pictures](https://tex.stackexchange.com/questions/26846/how-to-scale-a-tikzpicture-including-texts)
* [Showing carry in maths long addition](https://tex.stackexchange.com/questions/95812/how-to-show-carries-in-long-addition)
* [Another option for presenting addition](https://tex.stackexchange.com/questions/11702/how-to-present-a-vertical-multiplication-addition)
* [D-type flip-flop](https://latexdraw.com/draw-d-flip-flop-with-circuitikz/)
* [Adding notes to beamer presentation](https://tex.stackexchange.com/questions/48402/personal-notes-when-preparing-a-talk-with-latex-beamer-class)
* [What graphics formats are supported](https://tex.stackexchange.com/questions/1072/which-graphics-formats-can-be-included-in-documents-processed-by-latex-or-pdflat)
* [Centering images](https://tex.stackexchange.com/questions/553476/beamer-centering-only-figure-in-column)
* [Using citations](https://www.overleaf.com/learn/latex/Bibliography_management_with_bibtex)


### Build Tools

* [GNU Make](https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents)
* [Make pattern rules](https://www.gnu.org/software/make/manual/html_node/Pattern-Examples.html#Pattern-Examples)
* [Why is make removing intermediate files](https://stackoverflow.com/questions/47447369/gnu-make-removing-intermediate-files)
* [Special targets including .PRECIOUS](https://www.gnu.org/software/make/manual/html_node/Special-Targets.html)
* [Make automatic variables](https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html)


### Graphics Tools

* [Exporting EPS with transparent background in Affinity Photo](https://forum.affinity.serif.com/index.php?/topic/83939-eps-exported-but-has-background/)
* [Inkscape](https://inkscape.org)


### Presentation Tools

* [pympress](https://github.com/Cimbali/pympress)


### Python 

* [py65 documentation](https://py65.readthedocs.io/en/latest/)
* [py65 github](https://github.com/mnaberez/py65)


### Licenses

* [GNU Free Documentation License](https://www.gnu.org/licenses/fdl-1.3.en.html)
* [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html)

