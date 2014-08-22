@echo off

REM Build a 64 bit executable using MinGW64

g++ 4k.cpp -O2 -s                                         ^
    -Wall -Wextra -Wpedantic -ansi -Wmissing-declarations ^
    -nostdlib -e _Z10EntryPointv                          ^
    -fno-exceptions -fomit-frame-pointer                  ^
    -mwindows                                             ^
    -lgdi32 -lkernel32 -luser32 -lwinmm                   ^
    -o 4k

