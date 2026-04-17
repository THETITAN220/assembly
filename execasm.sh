#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 filename.asm"
    exit 1
fi

FILE="$1"
BASENAME=$(basename "$FILE" .asm)

echo "[*] Assembling..."
nasm -f elf32 "src/$FILE" -o "build/$BASENAME.o"

if [ $? -ne 0 ]; then
    echo "[!] Assembly failed"
    exit 1
fi

echo "[*] Linking..."
ld -m elf_i386 "build/$BASENAME.o" -o "build/$BASENAME"

if [ $? -ne 0 ]; then
    echo "[!] Linking failed"
    exit 1
fi

echo "[✅] build successful -> ./$BASENAME"
