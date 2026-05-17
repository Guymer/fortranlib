PURE SUBROUTINE sub_max_dist_geodesicSpace(n, lons, lats, midLon, midLat, maxDist, nmax, eps)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lons
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lats
    REAL(kind = REAL64), INTENT(in)                                             :: midLon
    REAL(kind = REAL64), INTENT(in)                                             :: midLat
    REAL(kind = REAL64), INTENT(out)                                            :: maxDist

    ! Declare optional input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nmax
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: eps

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: nmax2
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: tmpBearing1
    REAL(kind = REAL64)                                                         :: tmpBearing2
    REAL(kind = REAL64)                                                         :: tmpDist

    ! Set value ...
    IF(PRESENT(nmax))THEN
        nmax2 = MAX(3_INT64, MIN(100_INT64, nmax))                              ! [#]
    ELSE
        nmax2 = 100_INT64                                                       ! [#]
    END IF

    ! Set value ...
    IF(PRESENT(eps))THEN
        eps2 = eps
    ELSE
        eps2 = 1.0e-12_REAL64
    END IF

    ! Find the maximum Geodesic distance from the middle to any location ...
    maxDist = 0.0e0_REAL64                                                      ! [m]
    DO i = 1_INT64, n
        CALL sub_calc_dist_between_two_locs(                                    &
              lon1_deg = midLon,                                                &
              lat1_deg = midLat,                                                &
              lon2_deg = lons(i),                                               &
              lat2_deg = lats(i),                                               &
                   s_m = tmpDist,                                               &
            alpha1_deg = tmpBearing1,                                           &
            alpha2_deg = tmpBearing2,                                           &
                  nmax = nmax2,                                                 &
                   eps = eps2                                                   &
        )
        maxDist = MAX(                                                          &
            maxDist,                                                            &
            tmpDist                                                             &
        )                                                                       ! [m]
    END DO
END SUBROUTINE sub_max_dist_geodesicSpace
