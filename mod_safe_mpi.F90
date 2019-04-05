MODULE mod_safe_MPI
    USE ISO_FORTRAN_ENV
    USE MPI

    IMPLICIT NONE

    ! Declare interfaces ...
    INTERFACE sub_bcast_array
        MODULE PROCEDURE sub_bcast_1D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_2D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_3D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_4D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_5D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_6D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_7D_INT8_integer_array
        MODULE PROCEDURE sub_bcast_1D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_2D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_3D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_4D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_5D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_6D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_7D_INT16_integer_array
        MODULE PROCEDURE sub_bcast_1D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_2D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_3D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_4D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_5D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_6D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_7D_INT32_integer_array
        MODULE PROCEDURE sub_bcast_1D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_2D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_3D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_4D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_5D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_6D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_7D_INT64_integer_array
        MODULE PROCEDURE sub_bcast_1D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_2D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_3D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_4D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_5D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_6D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_7D_INT8_logical_array
        MODULE PROCEDURE sub_bcast_1D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_2D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_3D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_4D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_5D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_6D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_7D_INT16_logical_array
        MODULE PROCEDURE sub_bcast_1D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_2D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_3D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_4D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_5D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_6D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_7D_INT32_logical_array
        MODULE PROCEDURE sub_bcast_1D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_2D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_3D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_4D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_5D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_6D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_7D_INT64_logical_array
        MODULE PROCEDURE sub_bcast_1D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_2D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_3D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_4D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_5D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_6D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_7D_REAL32_real_array
        MODULE PROCEDURE sub_bcast_1D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_2D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_3D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_4D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_5D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_6D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_7D_REAL64_real_array
        MODULE PROCEDURE sub_bcast_1D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_2D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_3D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_4D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_5D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_6D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_7D_REAL128_real_array
    END INTERFACE sub_bcast_array

    CONTAINS

    ! Include files ...
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL128_real_array.f90"
END MODULE mod_safe_MPI
