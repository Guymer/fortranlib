# My FORTRAN Library

Please enjoy using my FORTRAN library. It contains a whole load of random functions and subroutines that I have written over the years. Most of them are overloaded to allow their use by different kinds of arguments. To save repetitive typing you will find some Python scripts dotted around this repository which have been written to create all the different versions of each FORTRAN function or FORTRAN subroutine.

I find the [GFortran Intrinsic Procedures Reference](https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html) an excellent resource when determining what _kind_ an argument must be. As an aside, it niggles me that a lot of intrinsic procedures, according to the FORTRAN standard, are "of default kind" (to me, these are the sort of problems that `ISO_FORTRAN_ENV` was supposed to fix).

Ditto, the [MPI 3.1 Specification PDF](https://www.mpi-forum.org/docs/mpi-3.1/mpi31-report.pdf) and [OpenMP 5.0 Specification PDF](https://www.openmp.org/wp-content/uploads/OpenMP-API-Specification-5.0.pdf) are excellent resources too.

## FORTRAN Language Conventions

All integers are declared as `INT64` (from `ISO_FORTRAN_ENV`), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

All reals are declared as `REAL64` (from `ISO_FORTRAN_ENV`), except:

* when being saved to disk (depending on the situation); and
* when interacting with an intrinsic procedure (depending on the procedure's specification).

`GOTO` statements are never used because [I do not want to be eaten by a velociraptor](https://xkcd.com/292/).

## Library Module/Function/Subroutine List

* [mod_safe](mod_safe.F90) is a module that can safely be used (without any extra dependencies) containing:
    * [const_cm](mod_safe/const_cm.f90) are constants containing colour maps
    * [const_factorial](mod_safe/const_factorial.f90) is a constant containing the answers to `x!`
    * [func_degrees](mod_safe/func_degrees.f90) is a function to convert from radians to degrees
    * [func_integrate_array](mod_safe/func_integrate_array) is a function to integrate tabulated data
    * [func_interpolate_points](mod_safe/func_interpolate_points) is a function to interpolate between points
    * [func_overall_index](mod_safe/func_overall_index) is a function to return the overall index of an iteration inside many nested `DO` loops
    * [func_radians](mod_safe/func_radians.f90) is a function to convert from degrees to radians
    * [sub_allocate_array](mod_safe/sub_allocate_array) is a subroutine to allocate an array after checking that the requested size makes sense
    * [sub_load_array_from_BIN](mod_safe/sub_load_array_from_BIN) is a subroutine to populate an array with data from a binary file
    * [sub_save_array_as_BIN](mod_safe/sub_save_array_as_BIN) is a subroutine to save an array's data to a binary file
    * [sub_save_array_as_PBM](mod_safe/sub_save_array_as_PBM) is a subroutine to save an array's data to a portable bit-map format (PBM) image file
    * [sub_save_array_as_PGM](mod_safe/sub_save_array_as_PGM) is a subroutine to save an array's data to a portable grey-map format (PGM) image file
    * [sub_save_array_as_PPM](mod_safe/sub_save_array_as_PPM) is a subroutine to save an array's data to a portable pix-map format (PPM) image file
    * [sub_solve_quadratic_equation](mod_safe/sub_solve_quadratic_equation) is a subroutine to solve a quadratic equation of the form "ax2 + bx + c = 0"
* [mod_safe_mpi](mod_safe_mpi.F90) is a module that can safely be used (without any extra dependencies) *by a MPI compiler* containing:
    * [sub_allreduce_array](mod_safe_mpi/sub_allreduce_array) is a subroutine to reduce arrays that are larger than MPI's in-built limits
    * [sub_bcast_array](mod_safe_mpi/sub_bcast_array) is a subroutine to broadcast arrays that are larger than MPI's in-built limits

Additionally, [mod_safe](mod_safe.F90) contains some other constants, such as `const_c` and `const_kb`. A full list can be found in [consts.f90](mod_safe/consts.f90).

## To Do

* This library is a consolidation of a whole load of functions and subroutines from a variety of different projects. It will take some time to pull them all in and make sure that they all work well together.

## Testing

The directory [tests](tests) contains some basic tests to (hopefully):

* find any simple bugs that I might have introduced; and
* demonstrate some simple programming techniques.

## Bugs

* There is a bug in [Doxygen](https://github.com/doxygen/doxygen) which results in [FORTRAN INCLUDE statements not being parsed](https://github.com/doxygen/doxygen/issues/3461). Until this gets fixed then there is little point in maintaining the [Doxygen](https://github.com/doxygen/doxygen) comments in the source code here. The bug was reported on 2009-07-27 and it shows no sign of being fixed (I first commented on the bug report on 2013-01-11 and as of 2019-03-31 it is still open).
