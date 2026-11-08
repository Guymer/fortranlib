PROGRAM test18
    ! Import standard modules ...
    USE, INTRINSIC :: ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe,           ONLY:   sub_allocate_array,                         &
                                    sub_find_middle_of_locs_euclideanBox,       &
                                    sub_find_middle_of_locs_euclideanCircle,    &
                                    sub_find_middle_of_locs_geodesicBox,        &
                                    sub_find_middle_of_locs_geodesicCircle

    IMPLICIT NONE

    ! Declare variables ...
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: n
    REAL(kind = REAL64)                                                         :: midLon
    REAL(kind = REAL64)                                                         :: midLat
    REAL(kind = REAL64)                                                         :: maxDist
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: lats
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: lons

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errMsg
    INTEGER(kind = INT32)                                                       :: errNum
    INTEGER(kind = INT32)                                                       :: fUnit

    ! **************************************************************************

    ! Open CSV ...
    OPEN(                                                                       &
         action = "read",                                                       &
           file = "exampleLonsLats.csv",                                        &
          iomsg = errMsg,                                                       &
         iostat = errNum,                                                       &
        newUNIT = fUnit,                                                        &
         status = "old"                                                         &
    )
    IF(errNum /= 0_INT32)THEN
        WRITE(                                                                  &
             FMT = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
            UNIT = ERROR_UNIT                                                   &
        ) "Failed to open CSV", TRIM(errMsg), errNum
        FLUSH(UNIT = ERROR_UNIT)
        STOP
    END IF

    ! Find out how many lines there ...
    n = 0_INT64                                                                 ! [#]
    DO
        READ(                                                                   &
               FMT = "(f6.2, x, f6.2)",                                         &
             iomsg = errMsg,                                                    &
            iostat = errNum,                                                    &
              UNIT = fUnit                                                      &
        )
        IF(IS_IOSTAT_END(errNum))THEN
            EXIT
        END IF
        IF(errNum /= 0_INT32)THEN
            WRITE(                                                              &
                 FMT = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
                UNIT = ERROR_UNIT                                               &
            ) "Failed to read CSV", TRIM(errMsg), errNum
            FLUSH(UNIT = ERROR_UNIT)
            STOP
        END IF
        n = n + 1_INT64                                                         ! [#]
    END DO

    ! Allocate arrays ...
    CALL sub_allocate_array(lats, "lats", n, .TRUE._INT8)
    CALL sub_allocate_array(lons, "lons", n, .TRUE._INT8)

    ! Rewind the file and populate the arrays ...
    REWIND(                                                                     &
         iomsg = errMsg,                                                        &
        iostat = errNum,                                                        &
          UNIT = fUnit                                                          &
    )
    IF(errNum /= 0_INT32)THEN
        WRITE(                                                                  &
             FMT = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
            UNIT = ERROR_UNIT                                                   &
        ) "Failed to rewind CSV", TRIM(errMsg), errNum
        FLUSH(UNIT = ERROR_UNIT)
        STOP
    END IF
    DO i = 1_INT64, n
        READ(                                                                   &
               FMT = "(f6.2, x, f6.2)",                                         &
             iomsg = errMsg,                                                    &
            iostat = errNum,                                                    &
              UNIT = fUnit                                                      &
        ) lons(i), lats(i)
        IF(errNum /= 0_INT32)THEN
            WRITE(                                                              &
                 FMT = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
                UNIT = ERROR_UNIT                                               &
            ) "Failed to read CSV", TRIM(errMsg), errNum
            FLUSH(UNIT = ERROR_UNIT)
            STOP
        END IF
    END DO

    ! Close CSV ...
    CLOSE(UNIT = fUnit)

    ! **************************************************************************

    ! Test subroutine ...
    CALL sub_find_middle_of_locs_euclideanBox(                                  &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        maxDist = maxDist                                                       &
    )
    WRITE(                                                                      &
         FMT = '("The (EuclideanBox) middle is (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is ", f10.6, "°.")', &
        UNIT = OUTPUT_UNIT                                                      &
    ) midLon, midLat, maxDist
    FLUSH(UNIT = OUTPUT_UNIT)

    ! Test subroutine ...
    CALL sub_find_middle_of_locs_geodesicBox(                                   &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        maxDist = maxDist,                                                      &
          debug = .FALSE._INT8,                                                 &
           nAng = 361_INT64,                                                    &
        nRefine = 6_INT64                                                       &
    )
    WRITE(                                                                      &
         FMT = '("The (GeodesicBox) middle is (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is ", f10.3, " km.")',  &
        UNIT = OUTPUT_UNIT                                                      &
    ) midLon, midLat, 0.001e0_REAL64 * maxDist
    FLUSH(UNIT = OUTPUT_UNIT)

    ! Test subroutine ...
    CALL sub_find_middle_of_locs_euclideanCircle(                               &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        maxDist = maxDist,                                                      &
          debug = .FALSE._INT8,                                                 &
           nAng = 361_INT64,                                                    &
        nRefine = 6_INT64                                                       &
    )
    WRITE(                                                                      &
         FMT = '("The (EuclideanCircle) middle is (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is ", f10.6, "°.")',  &
        UNIT = OUTPUT_UNIT                                                      &
    ) midLon, midLat, maxDist
    FLUSH(UNIT = OUTPUT_UNIT)

    ! Test subroutine ...
    CALL sub_find_middle_of_locs_geodesicCircle(                                &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        maxDist = maxDist,                                                      &
          debug = .FALSE._INT8,                                                 &
           nAng = 361_INT64,                                                    &
        nRefine = 6_INT64                                                       &
    )
    WRITE(                                                                      &
         FMT = '("The (GeodesicCircle) middle is (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is ", f10.3, " km.")',  &
        UNIT = OUTPUT_UNIT                                                      &
    ) midLon, midLat, 0.001e0_REAL64 * maxDist
    FLUSH(UNIT = OUTPUT_UNIT)

    ! **************************************************************************

    ! Clean up ...
    DEALLOCATE(lats)
    DEALLOCATE(lons)
END PROGRAM test18
