PROGRAM test18
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe,           ONLY:   sub_allocate_array,                         &
                                    sub_find_middle_of_locs_euclideanBox,       &
                                    sub_find_min_max_dist_bearing_euclideanSpace,   &
                                    sub_find_min_max_dist_bearing_geodesicSpace

    IMPLICIT NONE

    ! Declare variables ...
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: n
    REAL(kind = REAL64)                                                         :: bestAng
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
        newunit = fUnit,                                                        &
         status = "old"                                                         &
    )
    IF(errNum /= 0)THEN
        WRITE(                                                                  &
             fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
            unit = ERROR_UNIT                                                   &
        ) "Failed to open CSV", TRIM(errMsg), errNum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Find out how many lines there ...
    n = 0_INT64                                                                 ! [#]
    DO
        READ(                                                                   &
               fmt = '(f6.2, x, f6.2)',                                         &
             iomsg = errMsg,                                                    &
            iostat = errNum,                                                    &
              unit = fUnit                                                      &
        )
        IF(IS_IOSTAT_END(errNum))THEN
            EXIT
        END IF
        IF(errNum /= 0)THEN
            WRITE(                                                              &
                 fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
                unit = ERROR_UNIT                                               &
            ) "Failed to read CSV", TRIM(errMsg), errNum
            FLUSH(unit = ERROR_UNIT)
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
          unit = fUnit                                                          &
    )
    IF(errNum /= 0)THEN
        WRITE(                                                                  &
             fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
            unit = ERROR_UNIT                                                   &
        ) "Failed to rewind CSV", TRIM(errMsg), errNum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    DO i = 1_INT64, n
        READ(                                                                   &
               fmt = '(f6.2, x, f6.2)',                                         &
             iomsg = errMsg,                                                    &
            iostat = errNum,                                                    &
              unit = fUnit                                                      &
        ) lons(i), lats(i)
        IF(errNum /= 0)THEN
            WRITE(                                                              &
                 fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")',  &
                unit = ERROR_UNIT                                               &
            ) "Failed to read CSV", TRIM(errMsg), errNum
            FLUSH(unit = ERROR_UNIT)
            STOP
        END IF
    END DO

    ! Close CSV ...
    CLOSE(unit = fUnit)

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
        fmt = '("The middle is (", f11.6, "°, ", f10.6, "°) and the maximum distance is ", f10.6, "°.")',   &
        unit = OUTPUT_UNIT                                                      &
    ) midLon, midLat, maxDist
    FLUSH(unit = OUTPUT_UNIT)

    ! Test subroutine ...
    CALL sub_find_min_max_dist_bearing_euclideanSpace(                          &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        bestAng = bestAng                                                       &
    )
    WRITE(                                                                      &
        fmt = '("The bearing to the mimimum maximum distance (in Euclidean space) is ", f10.6, "°.")',  &
        unit = OUTPUT_UNIT                                                      &
    ) bestAng
    FLUSH(unit = OUTPUT_UNIT)

    ! Test subroutine ...
    CALL sub_find_min_max_dist_bearing_geodesicSpace(                           &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        bestAng = bestAng                                                       &
    )
    WRITE(                                                                      &
        fmt = '("The bearing to the mimimum maximum distance (in Geodesic space) is ", f10.6, "°.")',   &
        unit = OUTPUT_UNIT                                                      &
    ) bestAng
    FLUSH(unit = OUTPUT_UNIT)

    ! **************************************************************************

    ! Clean up ...
    DEALLOCATE(lats)
    DEALLOCATE(lons)
END PROGRAM test18
