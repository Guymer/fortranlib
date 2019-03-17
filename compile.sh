#!/usr/bin/env bash

rm -f *.mod *.o
gfortran8 -c -ffree-line-length-none mod_safe.F90
