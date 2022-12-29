PURE SUBROUTINE sub_buffer_POINT(point, dist, nang, polygon)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: sub_calc_loc_from_loc_and_bearing_and_dist

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    TYPE(aPoint), INTENT(in)                                                    :: point
    REAL(kind = REAL64), INTENT(in)                                             :: dist
    INTEGER(kind = INT32), INTENT(in)                                           :: nang
    TYPE(aPolygon), INTENT(out)                                                 :: polygon

    ! Declare internal variables ...
    INTEGER(kind = INT32)                                                       :: iang
    REAL(kind = REAL64)                                                         :: ang1
    REAL(kind = REAL64)                                                         :: ang2

    ! Set up the Polygon ...
    polygon%exterior%ring = .TRUE._INT8
    polygon%exterior%npoints = nang                                             ! [#]
    ALLOCATE(polygon%exterior%x(nang))
    ALLOCATE(polygon%exterior%y(nang))
    polygon%ninteriors = 0_INT32                                                ! [#]

    ! Loop over angles ...
    ! NOTE: The first and last angles will *always* be exactly North. The middle
    !       angle will *always* be exactly South. The most two subsequent points
    !       can be apart is ~45° (with nang ≥ 9).
    DO iang = 1_INT32, nang - 1_INT32
        ! Calculate initial angle ...
        ang1 = MODULO(                                                          &
            360.0e0_REAL64 * REAL(nang - iang, kind = REAL64) / REAL(nang - 1_INT32, kind = REAL64),    &
            360.0e0_REAL64                                                      &
        )                                                                       ! [°]

        ! Calculate the ring coordinates ...
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
