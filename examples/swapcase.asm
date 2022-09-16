; I/O is memory-mapped in py65:
PUTC     = $f001
GETC     = $f004

  
another lda GETC
        beq another
        eor #$20        ; swap upper and lower case as a demo
        sta PUTC
        jmp another
