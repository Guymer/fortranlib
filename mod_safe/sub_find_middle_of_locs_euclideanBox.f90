PURE SUBROUTINE sub_find_middle_of_locs_euclideanBox(n, lons, lats, midLon, midLat, maxDist)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lons
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lats
    REAL(kind = REAL64), INTENT(out)                                            :: midLon
    REAL(kind = REAL64), INTENT(out)                                            :: midLat
    REAL(kind = REAL64), INTENT(out)                                            :: maxDist

    ! Calculate the middle of the Euclidean bounding box ...
    midLon = 0.5e0_REAL64 * (MINVAL(lons) + MAXVAL(lons))                       ! [°]
    midLat = 0.5e0_REAL64 * (MINVAL(lats) + MAXVAL(lats))                       ! [°]

    ! Find the maximum Euclidean distance from the middle to any location ...
    CALL sub_max_dist_euclideanSpace(                                           &
              n = n,                                                            &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
           lons = lons,                                                         &
           lats = lats,                                                         &
        maxDist = maxDist                                                       &
    )
END SUBROUTINE sub_find_middle_of_locs_euclideanBox
