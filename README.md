# My FORTRAN Library

Enjoy!

## Conventions

All integers are declared as `INT64` (from `ISO_FORTRAN_ENV`), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

All reals are declared as `REAL64` (from `ISO_FORTRAN_ENV`), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

## To Do

This library is a consolidation of a whole load of functions and subroutines from a variety of different projects. It will take some time to pull them all in and make sure that they work well together.

Obviously, the [compile.sh](compile.sh) needs to be replaced by a real Makefile.
