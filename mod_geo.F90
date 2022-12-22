MODULE mod_geo
    ! Import standard modules ...
    USE ISO_C_BINDING

    IMPLICIT NONE

    ! Declare types ...
    TYPE aPoint
        REAL(kind = C_DOUBLE)                                                   :: x    ! longitude
        REAL(kind = C_DOUBLE)                                                   :: y    ! latitude
    END TYPE aPoint
    TYPE aLine
        INTEGER(kind = C_SHORT)                                                 :: ring ! 0 = false; 1 = true
        INTEGER(kind = C_LONG)                                                  :: npoints
        REAL(kind = C_DOUBLE), ALLOCATABLE, DIMENSION(:)                        :: x    ! longitude
        REAL(kind = C_DOUBLE), ALLOCATABLE, DIMENSION(:)                        :: y    ! latitude
    END TYPE aLine
    TYPE aPolygon
        INTEGER(kind = C_SHORT)                                                 :: ninteriors
        TYPE(aLine)                                                             :: exterior
        TYPE(aLine), ALLOCATABLE, DIMENSION(:)                                  :: interiors
    END TYPE aPolygon

    ! Declare interfaces ...
    INTERFACE sub_buffer
        MODULE PROCEDURE sub_buffer_POINT
    END INTERFACE sub_buffer

    CONTAINS

    ! Include files ...
    INCLUDE "mod_geo/sub_buffer/sub_buffer_POINT.f90"
END MODULE mod_geo
