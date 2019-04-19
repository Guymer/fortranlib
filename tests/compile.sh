#!/usr/bin/env bash

# Clean up ...
rm -f *.mod *.o

# Define options ...
LANG_OPTS="-ffree-form -ffree-line-length-none"
WARN_OPTS="-Wall -Wextra -Waliasing -Warray-temporaries -Wconversion-extra -Wimplicit-interface -Wimplicit-procedure"

# Compile ...
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} -I../ test01.F90
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} -I../ test02.F90
mpif90 -c ${LANG_OPTS} ${WARN_OPTS} -I../ test03.F90
mpif90 -o test01 ${LANG_OPTS} ${WARN_OPTS} test01.o ../*.o -L../
mpif90 -o test02 ${LANG_OPTS} ${WARN_OPTS} test02.o ../*.o -L../
mpif90 -o test03 ${LANG_OPTS} ${WARN_OPTS} test03.o ../*.o -L../
