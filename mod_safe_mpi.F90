MODULE mod_safe_MPI
    ! This module contains a lot of MPI subroutines which are thread-safe and
    ! which can be safely imported in to any program.

    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import special modules ...
    USE MPI

    IMPLICIT NONE

    ! Declare interfaces ...
    INTERFACE sub_allreduce_array
        MODULE PROCEDURE sub_allreduce_1D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_2D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_3D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_4D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_5D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_6D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_7D_INT8_integer_array
        MODULE PROCEDURE sub_allreduce_1D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_2D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_3D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_4D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_5D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_6D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_7D_INT16_integer_array
        MODULE PROCEDURE sub_allreduce_1D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_2D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_3D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_4D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_5D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_6D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_7D_INT32_integer_array
        MODULE PROCEDURE sub_allreduce_1D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_2D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_3D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_4D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_5D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_6D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_7D_INT64_integer_array
        MODULE PROCEDURE sub_allreduce_1D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_2D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_3D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_4D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_5D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_6D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_7D_INT8_logical_array
        MODULE PROCEDURE sub_allreduce_1D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_2D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_3D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_4D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_5D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_6D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_7D_INT16_logical_array
        MODULE PROCEDURE sub_allreduce_1D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_2D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_3D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_4D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_5D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_6D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_7D_INT32_logical_array
        MODULE PROCEDURE sub_allreduce_1D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_2D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_3D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_4D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_5D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_6D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_7D_INT64_logical_array
        MODULE PROCEDURE sub_allreduce_1D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_2D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_3D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_4D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_5D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_6D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_7D_REAL32_real_array
        MODULE PROCEDURE sub_allreduce_1D_REAL64_real_array
        MODULE PROCEDURE sub_allreduce_2D_REAL64_real_array
        MODULE PROCEDURE sub_allreduce_3D_REAL64_real_array
        MODULE PROCEDURE sub_allreduce_4D_REAL64_real_array
        MODULE PROCEDURE sub_allreduce_5D_REAL64_real_array
        MODULE PROCEDURE sub_allreduce_6D_REAL64_real_array
        MODULE PROCEDURE sub_allreduce_7D_REAL64_real_array
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_allreduce_1D_REAL128_real_array
        MODULE PROCEDURE sub_allreduce_2D_REAL128_real_array
        MODULE PROCEDURE sub_allreduce_3D_REAL128_real_array
        MODULE PROCEDURE sub_allreduce_4D_REAL128_real_array
        MODULE PROCEDURE sub_allreduce_5D_REAL128_real_array
        MODULE PROCEDURE sub_allreduce_6D_REAL128_real_array
        MODULE PROCEDURE sub_allreduce_7D_REAL128_real_array
#endif
    END INTERFACE sub_allreduce_array
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
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
        MODULE PROCEDURE sub_bcast_1D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_2D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_3D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_4D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_5D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_6D_REAL128_real_array
        MODULE PROCEDURE sub_bcast_7D_REAL128_real_array
#endif
    END INTERFACE sub_bcast_array

    CONTAINS

    ! Include files ...
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT8_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT16_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT32_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT64_integer_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT8_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT16_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT32_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_INT64_logical_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL32_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL64_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL64_real_array.f90"
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_1D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_2D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_3D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_4D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_5D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_6D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_allreduce_array/sub_allreduce_7D_REAL128_real_array.f90"
#endif
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
#if __SIZEOF_LONG_DOUBLE__ != __SIZEOF_DOUBLE__
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_1D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_2D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_3D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_4D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_5D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_6D_REAL128_real_array.f90"
    INCLUDE "mod_safe_mpi/sub_bcast_array/sub_bcast_7D_REAL128_real_array.f90"
#endif
END MODULE mod_safe_MPI
