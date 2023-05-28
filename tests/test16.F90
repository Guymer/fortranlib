PROGRAM test16
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_geo, ONLY: sub_buffer, sub_save_as_GEOJSON

    IMPLICIT NONE

    ! Declare variables ...
    TYPE(aPoint)                                                                :: point
    TYPE(aPolygon)                                                              :: polygon

    ! **************************************************************************

    ! Define point ...
    point%x = -1.0e0_REAL64                                                     ! [°]
    point%y = 50.5e0_REAL64                                                     ! [°]

    ! Buffer it by 1,000 km ...
    CALL sub_buffer(point, 1000.0e3_REAL64, 257_INT32, polygon)

    ! Save polygon ...
    CALL sub_save_as_GEOJSON(polygon, "test16.geojson")
END PROGRAM test16
