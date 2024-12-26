#!/usr/bin/env bash

# Check that non-standard programs are installed. "standard" programs are
# anything that is specified in the POSIX.1-2008 standard (and the IEEE Std
# 1003.1 standard) or that is a BASH builtin command. Therefore, "non-standard"
# programs are anything that does not appear on the following two lists:
#   * https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html
#   * https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html
if ! type convert &> /dev/null; then
    echo "ERROR: \"convert\" is not installed." >&2
    exit 1
fi
if ! type exiftool &> /dev/null; then
    echo "ERROR: \"exiftool\" is not installed." >&2
    exit 1
fi
if ! type mpirun &> /dev/null; then
    echo "ERROR: \"mpirun\" is not installed." >&2
    exit 1
fi
if ! type optipng &> /dev/null; then
    echo "ERROR: \"optipng\" is not installed." >&2
    exit 1
fi

echo "Running test01 ..."
mpirun --oversubscribe -np 2 ./test01

echo "Running test02 ..."
mpirun --oversubscribe -np 2 ./test02

echo "Running test03 ..."
./test03

echo "Running test04 ..."
./test04

echo "Running test05 ..."
mpirun --oversubscribe -np 4 ./test05

echo "Running test06 ..."
OMP_NUM_THREADS=4 ./test06

echo "Running test07 ..."
OMP_NUM_THREADS=4 mpirun --oversubscribe -np 4 ./test07

echo "Running test08 ..."
./test08

echo "Running test09 ..."
./test09

echo "Running test10 ..."
./test10

echo "Running test11 ..."
./test11

echo "Running test12 ..."
./test12

echo "Running test13 ..."
./test13

echo "Running test14 ..."
./test14

echo "Running test15 ..."
./test15

echo "Running test16 ..."
./test16

echo "Converting images ..."
mogrify -format png ./*.pbm ./*.pgm ./*.ppm &> /dev/null
optipng -strip all ./*.png &> /dev/null
exiftool -overwrite_original -all= ./*.png &> /dev/null
