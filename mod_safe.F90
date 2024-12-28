MODULE mod_safe
    ! This module contains a lot of constants, functions and subroutines which
    ! are thread-safe and which can be safely imported in to any program.

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare interface ...
    INTERFACE func_integrate_array
        MODULE PROCEDURE func_integrate_1D_REAL32_real_array
        MODULE PROCEDURE func_integrate_1D_REAL64_real_array
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE func_integrate_1D_REAL128_real_array
#endif
        MODULE PROCEDURE func_integrate_2D_REAL32_real_array
        MODULE PROCEDURE func_integrate_2D_REAL64_real_array
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE func_integrate_2D_REAL128_real_array
#endif
    END INTERFACE func_integrate_array

    ! Declare interface ...
    INTERFACE func_interpolate_points
        MODULE PROCEDURE func_interpolate_REAL32_points
        MODULE PROCEDURE func_interpolate_REAL64_points
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE func_interpolate_REAL128_points
#endif
    END INTERFACE func_interpolate_points

    ! Declare interface ...
    INTERFACE func_mean
        MODULE PROCEDURE func_mean_1D_REAL32_real
        MODULE PROCEDURE func_mean_1D_REAL64_real
        MODULE PROCEDURE func_mean_2D_INT16_integer
        MODULE PROCEDURE func_mean_2D_REAL32_real
        MODULE PROCEDURE func_mean_2D_REAL64_real
    END INTERFACE func_mean

    ! Declare interface ...
    INTERFACE func_overall_index
        MODULE PROCEDURE func_overall_index_2loops
        MODULE PROCEDURE func_overall_index_3loops
        MODULE PROCEDURE func_overall_index_4loops
        MODULE PROCEDURE func_overall_index_5loops
        MODULE PROCEDURE func_overall_index_6loops
        MODULE PROCEDURE func_overall_index_7loops
    END INTERFACE func_overall_index

    ! Declare interface ...
    INTERFACE sub_allocate_array
        MODULE PROCEDURE sub_allocate_1D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_2D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_3D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_4D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_5D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_6D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_7D_INT8_integer_array
        MODULE PROCEDURE sub_allocate_1D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_2D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_3D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_4D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_5D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_6D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_7D_INT16_integer_array
        MODULE PROCEDURE sub_allocate_1D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_2D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_3D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_4D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_5D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_6D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_7D_INT32_integer_array
        MODULE PROCEDURE sub_allocate_1D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_2D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_3D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_4D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_5D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_6D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_7D_INT64_integer_array
        MODULE PROCEDURE sub_allocate_1D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_2D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_3D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_4D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_5D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_6D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_7D_INT8_logical_array
        MODULE PROCEDURE sub_allocate_1D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_2D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_3D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_4D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_5D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_6D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_7D_INT16_logical_array
        MODULE PROCEDURE sub_allocate_1D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_2D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_3D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_4D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_5D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_6D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_7D_INT32_logical_array
        MODULE PROCEDURE sub_allocate_1D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_2D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_3D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_4D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_5D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_6D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_7D_INT64_logical_array
        MODULE PROCEDURE sub_allocate_1D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_2D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_3D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_4D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_5D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_6D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_7D_REAL32_real_array
        MODULE PROCEDURE sub_allocate_1D_REAL64_real_array
        MODULE PROCEDURE sub_allocate_2D_REAL64_real_array
        MODULE PROCEDURE sub_allocate_3D_REAL64_real_array
        MODULE PROCEDURE sub_allocate_4D_REAL64_real_array
        MODULE PROCEDURE sub_allocate_5D_REAL64_real_array
        MODULE PROCEDURE sub_allocate_6D_REAL64_real_array
        MODULE PROCEDURE sub_allocate_7D_REAL64_real_array
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_allocate_1D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_2D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_3D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_4D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_5D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_6D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_7D_REAL128_real_array
#endif
    END INTERFACE sub_allocate_array

    ! Declare interface ...
    INTERFACE sub_flood_array
        MODULE PROCEDURE sub_flood_REAL32_real_array
    END INTERFACE sub_flood_array

    ! Declare interface ...
    INTERFACE sub_flood_array_iter
        MODULE PROCEDURE sub_flood_REAL32_real_array_iter
    END INTERFACE sub_flood_array_iter

    ! Declare interface ...
    INTERFACE sub_load_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT8_integer_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT16_integer_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT32_integer_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT64_integer_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT8_logical_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT16_logical_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT32_logical_array_from_BIN
        MODULE PROCEDURE sub_load_1D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_2D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_3D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_4D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_5D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_6D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_7D_INT64_logical_array_from_BIN
        MODULE PROCEDURE sub_load_1D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_2D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_3D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_4D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_5D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_6D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_7D_REAL32_real_array_from_BIN
        MODULE PROCEDURE sub_load_1D_REAL64_real_array_from_BIN
        MODULE PROCEDURE sub_load_2D_REAL64_real_array_from_BIN
        MODULE PROCEDURE sub_load_3D_REAL64_real_array_from_BIN
        MODULE PROCEDURE sub_load_4D_REAL64_real_array_from_BIN
        MODULE PROCEDURE sub_load_5D_REAL64_real_array_from_BIN
        MODULE PROCEDURE sub_load_6D_REAL64_real_array_from_BIN
        MODULE PROCEDURE sub_load_7D_REAL64_real_array_from_BIN
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_load_1D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_2D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_3D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_4D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_5D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_6D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_7D_REAL128_real_array_from_BIN
#endif
    END INTERFACE sub_load_array_from_BIN

    ! Declare interface ...
    INTERFACE sub_save_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT8_integer_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT16_integer_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT32_integer_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT64_integer_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT8_logical_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT16_logical_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT32_logical_array_as_BIN
        MODULE PROCEDURE sub_save_1D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_2D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_3D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_4D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_5D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_6D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_7D_INT64_logical_array_as_BIN
        MODULE PROCEDURE sub_save_1D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_2D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_3D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_4D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_5D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_6D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_7D_REAL32_real_array_as_BIN
        MODULE PROCEDURE sub_save_1D_REAL64_real_array_as_BIN
        MODULE PROCEDURE sub_save_2D_REAL64_real_array_as_BIN
        MODULE PROCEDURE sub_save_3D_REAL64_real_array_as_BIN
        MODULE PROCEDURE sub_save_4D_REAL64_real_array_as_BIN
        MODULE PROCEDURE sub_save_5D_REAL64_real_array_as_BIN
        MODULE PROCEDURE sub_save_6D_REAL64_real_array_as_BIN
        MODULE PROCEDURE sub_save_7D_REAL64_real_array_as_BIN
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_save_1D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_2D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_3D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_4D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_5D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_6D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_7D_REAL128_real_array_as_BIN
#endif
    END INTERFACE sub_save_array_as_BIN

    ! Declare interface ...
    INTERFACE sub_save_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT8_logical_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT16_logical_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT32_logical_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT64_logical_array_as_PBM
    END INTERFACE sub_save_array_as_PBM

    ! Declare interface ...
    INTERFACE sub_save_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT8_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT16_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT32_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT64_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_REAL32_real_array_as_PGM
        MODULE PROCEDURE sub_save_2D_REAL64_real_array_as_PGM
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_save_2D_REAL128_real_array_as_PGM
#endif
    END INTERFACE sub_save_array_as_PGM

    ! Declare interface ...
    INTERFACE sub_save_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT8_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT16_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT32_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT64_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_REAL32_real_array_as_PPM
        MODULE PROCEDURE sub_save_2D_REAL64_real_array_as_PPM
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_save_2D_REAL128_real_array_as_PPM
#endif
    END INTERFACE sub_save_array_as_PPM

    ! Declare interface ...
    INTERFACE sub_shrink_array
        MODULE PROCEDURE sub_shrink_2D_INT16_integer_array
        MODULE PROCEDURE sub_shrink_2D_REAL32_real_array
        MODULE PROCEDURE sub_shrink_2D_REAL64_real_array
    END INTERFACE sub_shrink_array

    ! Declare interface ...
    INTERFACE sub_solve_quadratic_equation
        MODULE PROCEDURE sub_solve_quadratic_REAL32_equation
        MODULE PROCEDURE sub_solve_quadratic_REAL64_equation
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_solve_quadratic_REAL128_equation
#endif
    END INTERFACE sub_solve_quadratic_equation

    ! Include files ...
    INCLUDE "mod_safe/consts.f90"
    INCLUDE "mod_safe/const_cm.f90"
    INCLUDE "mod_safe/const_factorial/const_factorial_INT8.f90"
    INCLUDE "mod_safe/const_factorial/const_factorial_INT16.f90"
    INCLUDE "mod_safe/const_factorial/const_factorial_INT32.f90"
    INCLUDE "mod_safe/const_factorial/const_factorial_INT64.f90"
    INCLUDE "mod_safe/const_factorial/const_factorial_REAL32.f90"
    INCLUDE "mod_safe/const_factorial/const_factorial_REAL64.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/const_factorial/const_factorial_REAL128.f90"
#endif

    CONTAINS

    ! Include files ...
    INCLUDE "mod_safe/func_degrees.f90"
    INCLUDE "mod_safe/func_factorial.f90"
    INCLUDE "mod_safe/func_falling_factorial.f90"
    INCLUDE "mod_safe/func_hypergeometric.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_1D_REAL32_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_1D_REAL64_real_array.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/func_integrate_array/func_integrate_1D_REAL128_real_array.f90"
#endif
    INCLUDE "mod_safe/func_integrate_array/func_integrate_2D_REAL32_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_2D_REAL64_real_array.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/func_integrate_array/func_integrate_2D_REAL128_real_array.f90"
#endif
    INCLUDE "mod_safe/func_interpolate_points/func_interpolate_REAL32_points.f90"
    INCLUDE "mod_safe/func_interpolate_points/func_interpolate_REAL64_points.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/func_interpolate_points/func_interpolate_REAL128_points.f90"
#endif
    INCLUDE "mod_safe/func_mean/func_mean_1D_REAL32_real.f90"
    INCLUDE "mod_safe/func_mean/func_mean_1D_REAL64_real.f90"
    INCLUDE "mod_safe/func_mean/func_mean_2D_INT16_integer.f90"
    INCLUDE "mod_safe/func_mean/func_mean_2D_REAL32_real.f90"
    INCLUDE "mod_safe/func_mean/func_mean_2D_REAL64_real.f90"
    INCLUDE "mod_safe/func_normal_CDF.f90"
    INCLUDE "mod_safe/func_normal_PDF.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_2loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_3loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_4loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_5loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_6loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_7loops.f90"
    INCLUDE "mod_safe/func_radians.f90"
    INCLUDE "mod_safe/func_rising_factorial.f90"
    INCLUDE "mod_safe/func_stddev.f90"
    INCLUDE "mod_safe/func_stderr.f90"
    INCLUDE "mod_safe/func_t_CDF.f90"
    INCLUDE "mod_safe/func_t_PDF.f90"
    INCLUDE "mod_safe/func_var.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT8_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT32_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT64_integer_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT8_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT16_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT32_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_INT64_logical_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_REAL64_real_array.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_REAL128_real_array.f90"
#endif
    INCLUDE "mod_safe/sub_calc_dist_between_two_locs.f90"
    INCLUDE "mod_safe/sub_calc_loc_from_loc_and_bearing_and_dist.f90"
    INCLUDE "mod_safe/sub_flood_array/sub_flood_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_flood_array_iter/sub_flood_REAL32_real_array_iter.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT8_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT16_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT32_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT64_integer_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT8_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT16_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT32_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_INT64_logical_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL32_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL64_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL64_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL64_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL64_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL64_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL64_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL64_real_array_from_BIN.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL128_real_array_from_BIN.f90"
#endif
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT8_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT16_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT32_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT64_integer_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT8_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT16_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT32_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_INT64_logical_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL32_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL64_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL64_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL64_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL64_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL64_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL64_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL64_real_array_as_BIN.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL128_real_array_as_BIN.f90"
#endif
    INCLUDE "mod_safe/sub_save_array_as_PBM/sub_save_2D_INT8_logical_array_as_PBM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PBM/sub_save_2D_INT16_logical_array_as_PBM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PBM/sub_save_2D_INT32_logical_array_as_PBM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PBM/sub_save_2D_INT64_logical_array_as_PBM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_INT8_integer_array_as_PGM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_INT16_integer_array_as_PGM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_INT32_integer_array_as_PGM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_INT64_integer_array_as_PGM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL32_real_array_as_PGM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL64_real_array_as_PGM.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL128_real_array_as_PGM.f90"
#endif
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT8_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT16_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT32_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT64_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL32_real_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL64_real_array_as_PPM.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL128_real_array_as_PPM.f90"
#endif
    INCLUDE "mod_safe/sub_shrink_array/sub_shrink_2D_INT16_integer_array.f90"
    INCLUDE "mod_safe/sub_shrink_array/sub_shrink_2D_REAL32_real_array.f90"
    INCLUDE "mod_safe/sub_shrink_array/sub_shrink_2D_REAL64_real_array.f90"
    INCLUDE "mod_safe/sub_solve_quadratic_equation/sub_solve_quadratic_REAL32_equation.f90"
    INCLUDE "mod_safe/sub_solve_quadratic_equation/sub_solve_quadratic_REAL64_equation.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe/sub_solve_quadratic_equation/sub_solve_quadratic_REAL128_equation.f90"
#endif
    INCLUDE "mod_safe/sub_ttest_ind.f90"
END MODULE mod_safe
