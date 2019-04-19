#!/usr/bin/env bash

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none -fopenmp"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"

# Compile ...
for i in {1..5}; do
    name=$(printf test%02d $i)
    mpif90 -c ${LANG_OPTS} ${WARN_OPTS} -I../ $name.F90
    mpif90 -o $name ${LANG_OPTS} ${WARN_OPTS} $name.o ../*.o -L../
done
