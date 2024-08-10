MODULE mod_f2py
    ! This module contains some F2PY mappings for some functions (because F2PY
    ! only likes subroutines).

    IMPLICIT NONE

    CONTAINS

    ! Include functions and subroutines ...
    INCLUDE "mod_f2py/sub_t_CDF.f90"
    INCLUDE "mod_f2py/sub_t_PDF.f90"
END MODULE mod_f2py
