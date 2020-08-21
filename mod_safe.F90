MODULE mod_safe
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare interfaces ...
    INTERFACE func_integrate_array
        MODULE PROCEDURE func_integrate_1D_REAL32_real_array
        MODULE PROCEDURE func_integrate_1D_REAL64_real_array
        MODULE PROCEDURE func_integrate_1D_REAL128_real_array
        MODULE PROCEDURE func_integrate_2D_REAL32_real_array
        MODULE PROCEDURE func_integrate_2D_REAL64_real_array
        MODULE PROCEDURE func_integrate_2D_REAL128_real_array
    END INTERFACE func_integrate_array
    INTERFACE func_interpolate_points
        MODULE PROCEDURE func_interpolate_REAL32_points
        MODULE PROCEDURE func_interpolate_REAL64_points
        MODULE PROCEDURE func_interpolate_REAL128_points
    END INTERFACE func_interpolate_points
    INTERFACE func_overall_index
        MODULE PROCEDURE func_overall_index_2loops
        MODULE PROCEDURE func_overall_index_3loops
        MODULE PROCEDURE func_overall_index_4loops
        MODULE PROCEDURE func_overall_index_5loops
        MODULE PROCEDURE func_overall_index_6loops
        MODULE PROCEDURE func_overall_index_7loops
    END INTERFACE func_overall_index
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
        MODULE PROCEDURE sub_allocate_1D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_2D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_3D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_4D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_5D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_6D_REAL128_real_array
        MODULE PROCEDURE sub_allocate_7D_REAL128_real_array
    END INTERFACE sub_allocate_array
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
        MODULE PROCEDURE sub_load_1D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_2D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_3D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_4D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_5D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_6D_REAL128_real_array_from_BIN
        MODULE PROCEDURE sub_load_7D_REAL128_real_array_from_BIN
    END INTERFACE sub_load_array_from_BIN
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
        MODULE PROCEDURE sub_save_1D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_2D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_3D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_4D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_5D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_6D_REAL128_real_array_as_BIN
        MODULE PROCEDURE sub_save_7D_REAL128_real_array_as_BIN
    END INTERFACE sub_save_array_as_BIN
    INTERFACE sub_save_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT8_logical_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT16_logical_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT32_logical_array_as_PBM
        MODULE PROCEDURE sub_save_2D_INT64_logical_array_as_PBM
    END INTERFACE sub_save_array_as_PBM
    INTERFACE sub_save_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT8_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT16_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT32_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_INT64_integer_array_as_PGM
        MODULE PROCEDURE sub_save_2D_REAL32_real_array_as_PGM
        MODULE PROCEDURE sub_save_2D_REAL64_real_array_as_PGM
        MODULE PROCEDURE sub_save_2D_REAL128_real_array_as_PGM
    END INTERFACE sub_save_array_as_PGM
    INTERFACE sub_save_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT8_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT16_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT32_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_INT64_integer_array_as_PPM
        MODULE PROCEDURE sub_save_2D_REAL32_real_array_as_PPM
        MODULE PROCEDURE sub_save_2D_REAL64_real_array_as_PPM
        MODULE PROCEDURE sub_save_2D_REAL128_real_array_as_PPM
    END INTERFACE sub_save_array_as_PPM
    INTERFACE sub_solve_quadratic_equation
        MODULE PROCEDURE sub_solve_quadratic_REAL32_equation
        MODULE PROCEDURE sub_solve_quadratic_REAL64_equation
        MODULE PROCEDURE sub_solve_quadratic_REAL128_equation
    END INTERFACE sub_solve_quadratic_equation

    ! Include files ...
    INCLUDE "mod_safe/consts.f90"
    INCLUDE "mod_safe/const_cm.f90"
    INCLUDE "mod_safe/const_factorial.f90"

    CONTAINS

    ! Include files ...
    INCLUDE "mod_safe/func_degrees.f90"
    INCLUDE "mod_safe/func_radians.f90"
    INCLUDE "mod_safe/sub_calc_loc_from_loc_and_bearing_and_dist.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_1D_REAL32_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_1D_REAL64_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_1D_REAL128_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_2D_REAL32_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_2D_REAL64_real_array.f90"
    INCLUDE "mod_safe/func_integrate_array/func_integrate_2D_REAL128_real_array.f90"
    INCLUDE "mod_safe/func_interpolate_points/func_interpolate_REAL32_points.f90"
    INCLUDE "mod_safe/func_interpolate_points/func_interpolate_REAL64_points.f90"
    INCLUDE "mod_safe/func_interpolate_points/func_interpolate_REAL128_points.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_2loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_3loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_4loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_5loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_6loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_7loops.f90"
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
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_1D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_2D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_3D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_4D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_5D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_6D_REAL128_real_array.f90"
    INCLUDE "mod_safe/sub_allocate_array/sub_allocate_7D_REAL128_real_array.f90"
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
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_1D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_2D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_3D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_4D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_5D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_6D_REAL128_real_array_from_BIN.f90"
    INCLUDE "mod_safe/sub_load_array_from_BIN/sub_load_7D_REAL128_real_array_from_BIN.f90"
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
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_1D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_2D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_3D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_4D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_5D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_6D_REAL128_real_array_as_BIN.f90"
    INCLUDE "mod_safe/sub_save_array_as_BIN/sub_save_7D_REAL128_real_array_as_BIN.f90"
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
    INCLUDE "mod_safe/sub_save_array_as_PGM/sub_save_2D_REAL128_real_array_as_PGM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT8_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT16_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT32_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_INT64_integer_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL32_real_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL64_real_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_save_array_as_PPM/sub_save_2D_REAL128_real_array_as_PPM.f90"
    INCLUDE "mod_safe/sub_solve_quadratic_equation/sub_solve_quadratic_REAL32_equation.f90"
    INCLUDE "mod_safe/sub_solve_quadratic_equation/sub_solve_quadratic_REAL64_equation.f90"
    INCLUDE "mod_safe/sub_solve_quadratic_equation/sub_solve_quadratic_REAL128_equation.f90"
END MODULE mod_safe
