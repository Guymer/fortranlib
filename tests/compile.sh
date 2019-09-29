#!/usr/bin/env bash

# Clean up ...
rm -f *.mod *.o test[0-9][0-9]

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none -frecursive -fopenmp"
WARN_OPTS="-Wall -Wextra -Waliasing -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"
MACH_OPTS="-m64"

# Compile ...
for i in {1..12}; do
    name=$(printf test%02d $i)
    echo "Compiling $name ..."
    mpif90 -c ${LANG_OPTS} ${WARN_OPTS} ${MACH_OPTS} -I../ $name.F90
    # NOTE: https://trac.macports.org/ticket/59113
    # NOTE: https://stackoverflow.com/a/58081934
    mpif90 -o $name ${LANG_OPTS} ${WARN_OPTS} ${MACH_OPTS} $name.o ../*.o -L../ -L/usr/lib
done
