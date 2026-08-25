# CS4501 – Compiler Design Lab

Ubuntu/Linux-oriented lab repository based on the CS4501 Compiler Design Lab Manual (July–December 2026).

## Experiments

1. Lexical Analyzer with Symbol Table using FLEX
2. Lexical Analyzer using FLEX
3. Arithmetic Expression Recognition using FLEX and BISON
4. Valid Variable Recognition using FLEX and BISON
5. C Control Structure Syntax Recognition using FLEX and BISON
6. Calculator using FLEX and BISON
7. Three Address Code Generation using FLEX and BISON
8. Type Checking using FLEX and BISON
9. Code Optimization using FLEX and BISON
10. Compiler Back-End: TAC to 8086 Assembly using FLEX and BISON

## Ubuntu prerequisites

```bash
sudo apt update
sudo apt install -y flex bison gcc
```

Each experiment contains source files, sample input where applicable, an Ubuntu/Linux `compile.sh`, expected terminal output, and a README.

The `output.txt` files reproduce the corresponding sample outputs from the lab manual in Linux terminal style. Compiler-generated warnings may vary with installed Flex/Bison/GCC versions.
