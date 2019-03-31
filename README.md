# My FORTRAN Library

Please enjoy using my FORTRAN library. It contains a whole load of random functions and subroutines that I have written over the years. Most of them are overloaded to allow their use by different kinds of arguments. To save repetitive typing you will find some Python scripts dotted around this repository which have been written to create all the different versions of each FORTRAN function or FORTRAN subroutine.

I find the [GFortran Intrinsic Procedures Reference](https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html) an excellent resource when determining what _kind_ an argument must be. As an aside, it niggles me that a lot of intrinsic procedures, according to the FORTRAN standard, are "of default kind" (to me, these were the kinds of problems that `ISO_FORTRAN_ENV` was supposed to fix).

## FORTRAN Language Conventions

All integers are declared as `INT64` (from `ISO_FORTRAN_ENV`), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

All reals are declared as `REAL64` (from `ISO_FORTRAN_ENV`), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

`GOTO` statements are never used because [I do not want to be eaten by a velociraptor](https://xkcd.com/292/).

## Library Module/Function/Subroutine List

* [mod_safe](mod_safe) is a module that can safely be used (without any extra dependencies)
* [mod_safe_mpi](mod_safe_mpi) is a module that can safely be used (without any extra dependencies) *by a MPI compiler*

## To Do

* This library is a consolidation of a whole load of functions and subroutines from a variety of different projects. It will take some time to pull them all in and make sure that they all work well together.
* Obviously, the [compile.sh](compile.sh) needs to be replaced by a real Makefile at some point.

## Bugs

* There is a bug in [Doxygen](https://github.com/doxygen/doxygen) which results in [FORTRAN INCLUDE statements not being parsed](https://github.com/doxygen/doxygen/issues/3461). Until this gets fixed then there is little point in maintaining the [Doxygen](https://github.com/doxygen/doxygen) comments in the source code here. The bug was reported on 2009-07-27 and it shows no sign of being fixed (I first commented on the bug report on 2013-01-11 and as of 2019-03-31 it is still open).
