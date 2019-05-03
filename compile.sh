#!/usr/bin/env bash

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none -frecursive"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"
MACH_OPTS="-m64"

# Compile ...
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} ${MACH_OPTS} mod_safe.F90
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} ${MACH_OPTS} mod_safe_mpi.F90
