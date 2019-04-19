#!/usr/bin/env bash

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none -fopenmp"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"

# Compile ...
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} mod_safe.F90
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} mod_safe_mpi.F90
