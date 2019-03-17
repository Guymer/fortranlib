#!/usr/bin/env bash

# Try to determine the name of the compiler on this system ...
if type gfortran-mp-8 &> /dev/null; then
    fc=gfortran-mp-8
elif type gfortran8 &> /dev/null; then
    fc=gfortran8
else
    fc=gfortran
fi

# Clean up ...
rm -f *.mod *.o

# Compile ...
$fc -c -ffree-line-length-none mod_safe.F90
