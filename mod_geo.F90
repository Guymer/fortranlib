MODULE mod_geo
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare type ...
    TYPE aPoint
        REAL(kind = REAL64)                                                     :: x    ! longitude
        REAL(kind = REAL64)                                                     :: y    ! latitude
    END TYPE aPoint

    ! Declare type ...
    TYPE aLine
        LOGICAL(kind = INT8)                                                    :: ring
        INTEGER(kind = INT32)                                                   :: npoints
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: x    ! longitude
        REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                          :: y    ! latitude
    END TYPE aLine

    ! Declare type ...
    TYPE aPolygon
        INTEGER(kind = INT32)                                                   :: ninteriors
        TYPE(aLine)                                                             :: exterior
        TYPE(aLine), ALLOCATABLE, DIMENSION(:)                                  :: interiors
    END TYPE aPolygon

    ! Declare type ...
    TYPE manyPoints
        INTEGER(kind = INT32)                                                   :: npoints
        TYPE(aPoint), ALLOCATABLE, DIMENSION(:)                                 :: points
    END TYPE manyPoints

    ! Declare type ...
    TYPE manyLines
        INTEGER(kind = INT32)                                                   :: nlines
        TYPE(aLine), ALLOCATABLE, DIMENSION(:)                                  :: lines
    END TYPE manyLines

    ! Declare type ...
    TYPE manyPolygons
        INTEGER(kind = INT32)                                                   :: npolygons
        TYPE(aPolygon), ALLOCATABLE, DIMENSION(:)                               :: polygons
    END TYPE manyPolygons

    ! Declare interfaces ...
    INTERFACE sub_buffer
        MODULE PROCEDURE sub_buffer_POINT
    END INTERFACE sub_buffer
    INTERFACE sub_save_as_GEOJSON
        MODULE PROCEDURE sub_save_POLYGON_as_GEOJSON
    END INTERFACE sub_save_as_GEOJSON

    CONTAINS

    ! Include files ...
    INCLUDE "mod_geo/sub_buffer/sub_buffer_POINT.f90"
    INCLUDE "mod_geo/sub_save_as_GEOJSON/sub_save_POLYGON_as_GEOJSON.f90"
END MODULE mod_geo
