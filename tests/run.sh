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
if ! type gcovr &> /dev/null; then
    echo "ERROR: \"gcovr\" is not installed." >&2
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

# Set variables ...
declare -r -x MPI_NUM_TASKS=4           # This isn't an official environment
                                        # variable name, I am just using it here
                                        # locally because it is convenient - it
                                        # is not recognised by "mpirun" or
                                        # anything.
declare -r -x OMP_NUM_THREADS=4

echo "Running test01 ..."
mpirun --oversubscribe -np ${MPI_NUM_TASKS} ./test01

echo "Running test02 ..."
mpirun --oversubscribe -np ${MPI_NUM_TASKS} ./test02

echo "Running test03 ..."
./test03

echo "Running test04 ..."
./test04

echo "Running test05 ..."
mpirun --oversubscribe -np ${MPI_NUM_TASKS} ./test05

echo "Running test06 ..."
./test06

echo "Running test07 ..."
mpirun --oversubscribe -np ${MPI_NUM_TASKS} ./test07

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

echo "Running test17 ..."
./test17

echo "Converting images ..."
mogrify -format png ./*.pbm ./*.pgm ./*.ppm &> /dev/null
optipng -strip all ./*.png &> /dev/null
exiftool -overwrite_original -all= ./*.png &> /dev/null

echo "Generating coverage report ..."
cd ..
rm -rf coverage-output
mkdir coverage-output
gcovr --gcov-ignore-parse-errors --html-details coverage-output/index.html
echo "# Created by run.sh" >> coverage-output/.gitignore
echo "*" >> coverage-output/.gitignore
