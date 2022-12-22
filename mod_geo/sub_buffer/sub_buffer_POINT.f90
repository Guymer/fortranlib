SUBROUTINE sub_buffer_POINT(point, dist, nang, polygon)
    ! Import standard modules ...
    USE ISO_C_BINDING

    ! Import my modules ...
    USE mod_safe, ONLY: sub_calc_loc_from_loc_and_bearing_and_dist

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    TYPE(aPoint), INTENT(in)                                                    :: point
    REAL(kind = C_DOUBLE), INTENT(in)                                           :: dist
    INTEGER(kind = C_LONG), INTENT(in)                                          :: nang
    TYPE(aPolygon), INTENT(out)                                                 :: polygon

    ! Declare internal variables ...
    INTEGER(kind = C_LONG)                                                      :: iang
    REAL(kind = C_DOUBLE)                                                       :: ang1
    REAL(kind = C_DOUBLE)                                                       :: ang2

    ! Set up the Polygon ...
    polygon%exterior%ring = 1_C_SHORT
    polygon%exterior%npoints = nang                                             ! [#]
    ALLOCATE(polygon%exterior%x(nang))
    ALLOCATE(polygon%exterior%y(nang))
    polygon%ninteriors = 0_C_SHORT                                              ! [#]

    ! Loop over angles ...
    ! NOTE: The first and last angles will *always* be exactly North. The middle
    !       angle will *always* be exactly South. The most two subsequent points
    !       can be apart is ~45° (with nang ≥ 9).
    DO iang = 1_C_LONG, nang - 1_C_LONG
        ! Calculate initial angle, then the ring coordinates and add them to the
        ! lists ...
        ang1 = 360.0e0_C_DOUBLE * REAL(iang - 1_C_LONG, kind = C_DOUBLE) / REAL(nang - 1_C_LONG, kind = C_DOUBLE)   ! [°]
        CALL sub_calc_loc_from_loc_and_bearing_and_dist(                        &
              lon1_deg = point%x,                                               &
              lat1_deg = point%y,                                               &
            alpha1_deg = ang1,                                                  &
                   s_m = dist,                                                  &
              lon2_deg = polygon%exterior%x(iang),                              &
              lat2_deg = polygon%exterior%y(iang),                              &
            alpha2_deg = ang2                                                   &
        )
    END DO

    ! Force the last coordinates to be the same as the first coordinates ...
    polygon%exterior%x(nang) = polygon%exterior%x(1)                            ! [°]
    polygon%exterior%y(nang) = polygon%exterior%y(1)                            ! [°]
END SUBROUTINE sub_buffer_POINT
