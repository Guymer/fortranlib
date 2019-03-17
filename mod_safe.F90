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

    ! Include files ...
    INCLUDE "mod_safe/const_factorial.f90"

    CONTAINS

    ! Include files ...
    INCLUDE "mod_safe/func_overall_index/func_overall_index_2loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_3loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_4loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_5loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_6loops.f90"
    INCLUDE "mod_safe/func_overall_index/func_overall_index_7loops.f90"
END MODULE mod_safe
