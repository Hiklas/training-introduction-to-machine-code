# Examples

## Overview

Initial examples make use of the [py65][py65github] 6502 emulator.

Ensure that the Python virtual environment is created and activated 
with the [py65 pip][py65pypi] package installed as per the instructions
in the main [README.md](../README) file.

Also ensure that the `xa65` assembler is installed.


## Examples

### Getting started

Run the `py65mon` command you will see this

```
Py65 Monitor

       PC  AC XR YR SP NV-BDIZC
6502: 0000 00 00 00 ff 00110000
.
```

The `help` command lists other available commands

Add a label using this command

```
add_label 1c00 lomem
```

As per the [docs][py65docs] you can dissessemble code at that address using this command

```
disassemble lomem
```

You'll see this

```
$1c00  00        BRK
```

When the monitor starts all the memory is initialised to zero but that number does 
represent a 6502 machine code instruction called `BRK` (this is a software 
interrupt).


### Assembling code

The [py65 github repo][py65github] includes some example 6502 assembly files including
a simple one that [swaps the case][py65swapcase] of characters entered on the keyboard. 

In another terminal window run the following commands (assuming you start at the base
of this repository)

```
cd examples
xa -v -bt 7168 -o swapcase.bin -l swapcase.labels swapcase.asm
```

__NOTE:__ Annoyingly xa doesn't seem to accept hex for the text segment argument so 
you need to convert 0x1C00 to decimal using this command

```
echo "ibase=16; 1C00" | bc
```

Back in the `py65mon` terminal run this command

```
load swapcase.bin lomem
```

You can now check the code that was loaded

```
disassemble lomem:lomem++10
```

Which should give the following output

```
$1c00  ad 04 f0  LDA $f004
$1c03  f0 fb     BEQ lomem
$1c05  49 20     EOR #$20
$1c07  8d 01 f0  STA $f001
$1c0a  4c 00 1c  JMP lomem

       PC  AC XR YR SP NV-BDIZC
6502: 0000 00 00 00 ff 00110000
```




[py65github]: https://github.com/mnaberez/py65
[py65docs]: https://py65.readthedocs.io/en/latest/
[py65pypi]: https://pypi.org/project/py65/
[py65swapcase]: https://github.com/mnaberez/py65/blob/main/examples/swapcase.asm
