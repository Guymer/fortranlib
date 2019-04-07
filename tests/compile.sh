#!/usr/bin/env bash

# Try to determine the name of the compilers on this system ...
if type gfortran-mp-8 &> /dev/null; then
    fc1=gfortran-mp-8
elif type gfortran8 &> /dev/null; then
    fc1=gfortran8
else
    fc1=gfortran
fi
fc2=mpif90

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"

# Compile ...
$fc2 -c ${LANG_OPTS} ${WARN_OPTS} -I../ test01.F90
$fc2 -c ${LANG_OPTS} ${WARN_OPTS} -I../ test02.F90
$fc2 -o test01 ${LANG_OPTS} ${WARN_OPTS} test01.o ../*.o -L../
$fc2 -o test02 ${LANG_OPTS} ${WARN_OPTS} test02.o ../*.o -L../
