PURE SUBROUTINE sub_max_dist_euclideanSpace(                                    &
    n,                                                                          &
    midLon,                                                                     &
    midLat,                                                                     &
    lons,                                                                       &
    lats,                                                                       &
    maxDist                                                                     &
)
    ! Import standard modules ...
    USE, INTRINSIC :: ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(IN)                                           :: n
    REAL(kind = REAL64), INTENT(IN)                                             :: midLon
    REAL(kind = REAL64), INTENT(IN)                                             :: midLat
    REAL(kind = REAL64), DIMENSION(n), INTENT(IN)                               :: lons
    REAL(kind = REAL64), DIMENSION(n), INTENT(IN)                               :: lats
    REAL(kind = REAL64), INTENT(OUT)                                            :: maxDist

    ! Declare internal variables ...
    INTEGER(kind = INT64)                                                       :: i
    REAL(kind = REAL64)                                                         :: tmpDist

    ! **************************************************************************

    ! Find the maximum Euclidean distance from the middle to any location ...
    maxDist = 0.0e0_REAL64                                                      ! [°]
    DO i = 1_INT64, n
        tmpDist = HYPOT(                                                        &
            lons(i) - midLon,                                                   &
            lats(i) - midLat                                                    &
        )
        maxDist = MAX(                                                          &
            maxDist,                                                            &
            tmpDist                                                             &
        )                                                                       ! [°]
    END DO
END SUBROUTINE sub_max_dist_euclideanSpace
