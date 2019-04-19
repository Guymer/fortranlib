MODULE mod_safe
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare interfaces ...
    INTERFACE func_overall_index
        MODULE PROCEDURE func_overall_index_2loops
        MODULE PROCEDURE func_overall_index_3loops
        MODULE PROCEDURE func_overall_index_4loops
        MODULE PROCEDURE func_overall_index_5loops
        MODULE PROCEDURE func_overall_index_6loops
        MODULE PROCEDURE func_overall_index_7loops
    END INTERFACE func_overall_index
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

    ! Include files ...
    INCLUDE "mod_safe/consts.inc"
    INCLUDE "mod_safe/const_factorial.inc"

    CONTAINS

    ! Include files ...
    INCLUDE "mod_safe/func_overall_index/func_overall_index_2loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_3loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_4loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_5loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_6loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_7loops.f90"
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
END MODULE mod_safe
