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

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"

# Compile ...
$fc -c ${LANG_OPTS} ${WARN_OPTS} mod_safe.F90
