# Hack Assembler

Assembler that translates programs written in Hack assembly language into Hack binary code.

## Usage
```bash
$ ./init.sh                                 # build code
$ ./build/assembler tests/Add.asm           # run executable
$ cat tests/Add.hack                        # show results
$ diff tests/Add.hack tests/sols/Add.hack   # compare results with solutions from book
```

##### Add.asm
```
@2
D=A
@3
D=D+A
@0
M=D
```

##### Add.hack
```
0000000000000010
1110110000010000
0000000000000011
1110000010010000
0000000000000000
1110001100001000
```

## Specification
![Hack Specification](images/spec.png)
![Example](images/example.png)
