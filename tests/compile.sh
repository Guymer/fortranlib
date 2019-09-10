#!/usr/bin/env bash

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none -frecursive -fopenmp"
WARN_OPTS="-Wall -Wextra -Waliasing -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"
MACH_OPTS="-m64"

# Compile ...
for i in {1..9}; do
    name=$(printf test%02d $i)
    echo "Compiling $name ..."
    mpif90 -c ${LANG_OPTS} ${WARN_OPTS} ${MACH_OPTS} -I../ $name.F90
    mpif90 -o $name ${LANG_OPTS} ${WARN_OPTS} ${MACH_OPTS} $name.o ../*.o -L../
done
