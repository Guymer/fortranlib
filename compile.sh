#!/usr/bin/env bash

# Try to determine the name of the compiler on this system ...
if type gfortran-mp-8 &> /dev/null; then
    fc1=gfortran-mp-8
    fc2=mpif90-openmpi-mp
elif type gfortran8 &> /dev/null; then
    fc1=gfortran8
    fc2=mpif90-openmpi-mp
else
    fc1=gfortran
    fc2=mpif90
fi

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"

# Compile ...
$fc1 -c ${LANG_OPTS} ${WARN_OPTS} mod_safe.F90
$fc2 -c ${LANG_OPTS} ${WARN_OPTS} mod_safe_MPI.F90
