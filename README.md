# My FORTRAN Library

![Documentation Status](https://readthedocs.org/projects/fortranlib/badge/) !["gmake" GitHub Action Status](https://github.com/Guymer/fortranlib/actions/workflows/gmake.yaml/badge.svg) !["mypy" GitHub Action Status](https://github.com/Guymer/fortranlib/actions/workflows/mypy.yaml/badge.svg) !["pylint" GitHub Action Status](https://github.com/Guymer/fortranlib/actions/workflows/pylint.yaml/badge.svg) !["shellcheck" GitHub Action Status](https://github.com/Guymer/fortranlib/actions/workflows/shellcheck.yaml/badge.svg)

Please enjoy using my FORTRAN library. It contains a whole load of random functions and subroutines that I have written over the years. Most of them are overloaded to allow their use by different kinds of arguments. To save repetitive typing you will find some Python scripts dotted around this repository which have been written to create all the different versions of each FORTRAN function or FORTRAN subroutine. The [documentation is on Read The Docs](https://fortranlib.readthedocs.io/).

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
    * [func_factorial](mod_safe/func_factorial.f90) is a function to calculate `x!` (only use this function if *either* `x` is not an integer *or* the `x` that you want is not in [const_factorial](mod_safe/const_factorial.f90))
    * [func_falling_factorial](mod_safe/func_falling_factorial.f90) is a function to calculate the falling factorial
    * [func_hypergeometric](mod_safe/func_hypergeometric.f90) is a function to calculate the hypergeometric function "2F1(a, b; c; z)"
    * [func_integrate_array](mod_safe/func_integrate_array) is a function to integrate tabulated data
    * [func_interpolate_points](mod_safe/func_interpolate_points) is a function to interpolate between points
    * [func_mean](mod_safe/func_mean.f90) is a function to calculate the mean of an array
    * [func_normal_CDF](mod_safe/func_normal_CDF.f90) is a function to return the CDF of the Normal distribution
    * [func_normal_PDF](mod_safe/func_normal_PDF.f90) is a function to return the PDF of the Normal distribution
    * [func_overall_index](mod_safe/func_overall_index) is a function to return the overall index of an iteration inside many nested `DO` loops
    * [func_radians](mod_safe/func_radians.f90) is a function to convert from degrees to radians
    * [func_rising_factorial](mod_safe/func_rising_factorial.f90) is a function to calculate the rising factorial
    * [func_stddev](mod_safe/func_stddev.f90) is a function to calculate the standard deviation of an array
    * [func_stderr](mod_safe/func_stderr.f90) is a function to calculate the standard error (of the mean) of an array
    * [func_t_CDF](mod_safe/func_t_CDF.f90) is a function to return the CDF of Student's t-distribution
    * [func_t_PDF](mod_safe/func_t_PDF.f90) is a function to return the PDF of Student's t-distribution
    * [func_var](mod_safe/func_var.f90) is a function to calculate the variance of an array
    * [sub_allocate_array](mod_safe/sub_allocate_array) is a subroutine to allocate an array after checking that the requested size makes sense
    * [sub_calc_dist_between_two_locs](mod_safe/sub_calc_dist_between_two_locs.f90) is a subroutine which implements Vincenty's formula to calculate the distance, and both bearings, between two locations
    * [sub_calc_loc_from_loc_and_bearing_and_dist](mod_safe/sub_calc_loc_from_loc_and_bearing_and_dist.f90) is a subroutine which implements Vincenty's formula to calculate the finishing location from a starting location, a bearing and a distance
    * [sub_load_array_from_BIN](mod_safe/sub_load_array_from_BIN) is a subroutine to populate an array with data from a binary file
    * [sub_save_array_as_BIN](mod_safe/sub_save_array_as_BIN) is a subroutine to save an array's data to a binary file
    * [sub_save_array_as_PBM](mod_safe/sub_save_array_as_PBM) is a subroutine to save an array's data to a portable bit-map format (PBM) image file
    * [sub_save_array_as_PGM](mod_safe/sub_save_array_as_PGM) is a subroutine to save an array's data to a portable grey-map format (PGM) image file
    * [sub_save_array_as_PPM](mod_safe/sub_save_array_as_PPM) is a subroutine to save an array's data to a portable pix-map format (PPM) image file
    * [sub_solve_quadratic_equation](mod_safe/sub_solve_quadratic_equation) is a subroutine to solve a quadratic equation of the form "ax2 + bx + c = 0"
    * [sub_ttest_ind](mod_safe/sub_ttest_ind.f90) is a subroutine to test two sets of numbers using Student's t-test
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

ARM CPUs often do not define a native `REAL128` kind. The command `touch foo.f90; gfortran -cpp -E -dM foo.f90 | sort` will print out all of the predefined macros on your current system. This suite now uses the test `__SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__` to conditionally compile the `REAL128` overloaded parts.

## Dependencies

This FORTRAN library requires the following Python modules to be installed and available in your `PYTHONPATH`.

* [matplotlib](https://pypi.org/project/matplotlib/)
* [scipy](https://pypi.org/project/scipy/)
* [sphinx](https://pypi.org/project/Sphinx/)
    * [sphinx_fortran](https://pypi.org/project/sphinx-fortran/)
    * [sphinx_rtd_theme](https://pypi.org/project/sphinx-rtd-theme/)

## Bugs

* There is a bug in [Doxygen](https://github.com/doxygen/doxygen) which results in [FORTRAN INCLUDE statements not being parsed](https://github.com/doxygen/doxygen/issues/3461). Until this gets fixed then there is little point in providing [Doxygen](https://github.com/doxygen/doxygen) comments in the source code here. The bug was reported on 2009-07-27 and it shows no sign of being fixed (I first commented on the bug report on 2013-01-11 and as of 2022-05-13 it is still open).
