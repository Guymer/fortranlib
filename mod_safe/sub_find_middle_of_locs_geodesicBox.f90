RECURSIVE SUBROUTINE sub_find_middle_of_locs_geodesicBox(                       &
    n,                                                                          &
    lons,                                                                       &
    lats,                                                                       &
    midLon,                                                                     &
    midLat,                                                                     &
    maxDist,                                                                    &
    angConv,                                                                    &
    debug,                                                                      &
    dist,                                                                       &
    eps,                                                                        &
    iRefine,                                                                    &
    nAng,                                                                       &
    nAngIter,                                                                   &
    nDistIter,                                                                  &
    nMax,                                                                       &
    nRefine                                                                     &
)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lons
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lats
    REAL(kind = REAL64), INTENT(inout)                                          :: midLon
    REAL(kind = REAL64), INTENT(inout)                                          :: midLat
    REAL(kind = REAL64), INTENT(out)                                            :: maxDist

    ! Declare optional input variables/outputs ...
    LOGICAL(kind = INT8), INTENT(in), OPTIONAL                                  :: debug
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iRefine
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAng
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAngIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nDistIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nMax
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nRefine
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angConv
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: dist
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: eps

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    LOGICAL(kind = INT8)                                                        :: moved
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: iDistIter
    INTEGER(kind = INT64)                                                       :: iRefine2
    INTEGER(kind = INT64)                                                       :: nAng2
    INTEGER(kind = INT64)                                                       :: nAngIter2
    INTEGER(kind = INT64)                                                       :: nDistIter2
    INTEGER(kind = INT64)                                                       :: nMax2
    INTEGER(kind = INT64)                                                       :: nRefine2
    REAL(kind = REAL64)                                                         :: angConv2
    REAL(kind = REAL64)                                                         :: dist2
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: maxEastDist
    REAL(kind = REAL64)                                                         :: maxNorthDist
    REAL(kind = REAL64)                                                         :: maxSouthDist
    REAL(kind = REAL64)                                                         :: maxWestDist
    REAL(kind = REAL64)                                                         :: newMaxDist
    REAL(kind = REAL64)                                                         :: newMidLat
    REAL(kind = REAL64)                                                         :: newMidLon
    REAL(kind = REAL64)                                                         :: tmpBearing
    REAL(kind = REAL64)                                                         :: tmpBearing1
    REAL(kind = REAL64)                                                         :: tmpBearing2
    REAL(kind = REAL64)                                                         :: tmpDist

    ! Set logical value ...
    IF(PRESENT(debug))THEN
        debug2 = debug
    ELSE
        debug2 = .TRUE._INT8
    END IF

    ! Set integer values ...
    IF(PRESENT(iRefine))THEN
        iRefine2 = iRefine                                                      ! [#]
    ELSE
        iRefine2 = 1_INT64                                                      ! [#]
    END IF
    IF(PRESENT(nAng))THEN
        nAng2 = MAX(9_INT64, nAng)                                              ! [#]
    ELSE
        nAng2 = 9_INT64                                                         ! [#]
    END IF
    IF(PRESENT(nAngIter))THEN
        nAngIter2 = MAX(3_INT64, nAngIter)                                      ! [#]
    ELSE
        nAngIter2 = 100_INT64                                                   ! [#]
    END IF
    IF(PRESENT(nDistIter))THEN
        nDistIter2 = MAX(3_INT64, nDistIter)                                    ! [#]
    ELSE
        nDistIter2 = 100_INT64                                                  ! [#]
    END IF
    IF(PRESENT(nMax))THEN
        nMax2 = MAX(3_INT64, MIN(100_INT64, nMax))                              ! [#]
    ELSE
        nMax2 = 100_INT64                                                       ! [#]
    END IF
    IF(PRESENT(nRefine))THEN
        nRefine2 = nRefine                                                      ! [#]
    ELSE
        nRefine2 = 1_INT64                                                      ! [#]
    END IF

    ! Set real values ...
    IF(PRESENT(angConv))THEN
        angConv2 = angConv                                                      ! [°]
    ELSE
        angConv2 = 0.1e0_REAL64                                                 ! [°]
    END IF
    IF(PRESENT(dist))THEN
        dist2 = dist                                                            ! [m]
    ELSE
        dist2 = 10000.0e0_REAL64                                                ! [m] =10 km
    END IF
    IF(PRESENT(eps))THEN
        eps2 = eps
    ELSE
        eps2 = 1.0e-12_REAL64
    END IF

    ! **************************************************************************

    ! Check arguments ...
    IF(MODULO(nAng2, 2_INT64) == 0_INT64)THEN
        WRITE(                                                                  &
             fmt = '("ERROR: ""nAng2"" is even; nAng2 = ", i3, ".")',           &
            unit = ERROR_UNIT                                                   &
        ) nAng2
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! **************************************************************************

    ! Calculate the middle of the Euclidean bounding box as an initial starting
    ! guess ...
    IF(iRefine2 == 1_INT64)THEN
        midLon = 0.5e0_REAL64 * (MINVAL(lons) + MAXVAL(lons))                   ! [°]
        midLat = 0.5e0_REAL64 * (MINVAL(lats) + MAXVAL(lats))                   ! [°]
    END IF

    ! Find the maximum Geodesic distance from the middle to any location ...
    CALL sub_max_dist_geodesicSpace(                                            &
              n = n,                                                            &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
           lons = lons,                                                         &
           lats = lats,                                                         &
        maxDist = maxDist                                                       &
    )

    IF(debug2)THEN
        WRITE(                                                                  &
             fmt = '("INFO: Refinement #", i3, "/", i3, ": The middle is initially (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is initially ", f10.3, " km.")',  &
            unit = OUTPUT_UNIT                                                  &
        ) iRefine2, nRefine2, midLon, midLat, 0.001e0_REAL64 * maxDist
        FLUSH(unit = OUTPUT_UNIT)
    END IF

    ! Check if the answer is initially converged ...
    IF(maxDist <= dist2)THEN
        IF(debug2)THEN
            WRITE(                                                              &
                 fmt = '("INFO: Refinement #", i3, "/", i3, ": The middle is initially converged.")',   &
                unit = OUTPUT_UNIT                                              &
            ) iRefine2, nRefine2, midLon
            FLUSH(unit = OUTPUT_UNIT)
        END IF
    ELSE
        ! Loop over distance iterations ...
        DO iDistIter = 1_INT64, nDistIter2
            ! Find the Geodesic distances to the western-most and eastern-most
            ! locations ...
            maxWestDist = 0.0e0_REAL64                                          ! [m]
            maxEastDist = 0.0e0_REAL64                                          ! [m]
            DO i = 1_INT64, n
                CALL sub_calc_dist_between_two_locs(                            &
                    midLon,                                                     &
                    midLat,                                                     &
                    lons(i),                                                    &
                    midLat,                                                     &
                    tmpDist,                                                    &
                    tmpBearing1,                                                &
                    tmpBearing2,                                                &
                     eps = eps2,                                                &
                    nmax = nMax2                                                &
                )
                IF(lons(i) < midLon)THEN                                        ! NOTE: Location is west of the middle.
                    maxWestDist = MAX(maxWestDist, tmpDist)                     ! [m]
                ELSE IF(lons(i) > midLon)THEN                                   ! NOTE: Location is east of the middle.
                    maxEastDist = MAX(maxEastDist, tmpDist)                     ! [m]
                END IF
            END DO

            ! Find the Geodesic distances to the southern-most and northern-most
            ! locations ...
            maxSouthDist = 0.0e0_REAL64                                         ! [m]
            maxNorthDist = 0.0e0_REAL64                                         ! [m]
            DO i = 1_INT64, n
                CALL sub_calc_dist_between_two_locs(                            &
                    midLon,                                                     &
                    midLat,                                                     &
                    midLon,                                                     &
                    lats(i),                                                    &
                    tmpDist,                                                    &
                    tmpBearing1,                                                &
                    tmpBearing2,                                                &
                     eps = eps2,                                                &
                    nmax = nMax2                                                &
                )
                IF(lats(i) < midLat)THEN                                        ! NOTE: Location is south of the middle.
                    maxSouthDist = MAX(maxSouthDist, tmpDist)                   ! [m]
                ELSE IF(lats(i) > midLat)THEN                                   ! NOTE: Location is north of the middle.
                    maxNorthDist = MAX(maxNorthDist, tmpDist)                   ! [m]
                END IF
            END DO

            IF(debug2)THEN
                WRITE(                                                          &
                     fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": ", f10.3, " km west ← middle → ", f10.3, " km east.")',   &
                    unit = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * maxWestDist, 0.001e0_REAL64 * maxEastDist
                WRITE(                                                          &
                     fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": ", f10.3, " km south ↓ middle ↑ ", f10.3, " km north.")',   &
                    unit = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * maxSouthDist, 0.001e0_REAL64 * maxNorthDist
                FLUSH(unit = OUTPUT_UNIT)
            END IF

            ! Initialize flag ...
            moved = .FALSE._INT8

            ! Check if the middle needs moving west/east ...
            IF(0.5e0_REAL64 * (maxWestDist - maxEastDist) > dist2)THEN
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Moving middle ", f10.3, " km towards the west ...")', &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * 0.5e0_REAL64 * (maxWestDist - maxEastDist)
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Find the new location ...
                CALL sub_calc_loc_from_loc_and_bearing_and_dist(                &
                    midLon,                                                     &
                    midLat,                                                     &
                    270.0e0_REAL64,                                             &
                    0.5e0_REAL64 * (maxWestDist - maxEastDist),                 &
                    newMidLon,                                                  &
                    newMidLat,                                                  &
                    tmpBearing,                                                 &
                     eps = eps2,                                                &
                    nmax = nMax2                                                &
                )

                ! Find the maximum Geodesic distance from the middle to any
                ! location ...
                CALL sub_max_dist_geodesicSpace(                                &
                          n = n,                                                &
                     midLon = newMidLon,                                        &
                     midLat = newMidLat,                                        &
                       lons = lons,                                             &
                       lats = lats,                                             &
                    maxDist = newMaxDist                                        &
                )

                ! Update values ...
                maxDist = newMaxDist                                            ! [m]
                midLon = newMidLon                                              ! [°]
                midLat = newMidLat                                              ! [°]

                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is now ", f10.3, " km.")',    &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Set flag ...
                moved = .TRUE._INT8
            ELSE IF(0.5e0_REAL64 * (maxEastDist - maxWestDist) > dist2)THEN
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Moving middle ", f10.3, " km towards the east ...")', &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * 0.5e0_REAL64 * (maxEastDist - maxWestDist)
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Find the new location ...
                CALL sub_calc_loc_from_loc_and_bearing_and_dist(                &
                    midLon,                                                     &
                    midLat,                                                     &
                    90.0e0_REAL64,                                              &
                    0.5e0_REAL64 * (maxEastDist - maxWestDist),                 &
                    newMidLon,                                                  &
                    newMidLat,                                                  &
                    tmpBearing,                                                 &
                     eps = eps2,                                                &
                    nmax = nMax2                                                &
                )

                ! Find the maximum Geodesic distance from the middle to any
                ! location ...
                CALL sub_max_dist_geodesicSpace(                                &
                          n = n,                                                &
                     midLon = newMidLon,                                        &
                     midLat = newMidLat,                                        &
                       lons = lons,                                             &
                       lats = lats,                                             &
                    maxDist = newMaxDist                                        &
                )

                ! Update values ...
                maxDist = newMaxDist                                            ! [m]
                midLon = newMidLon                                              ! [°]
                midLat = newMidLat                                              ! [°]

                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is now ", f10.3, " km.")',    &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Set flag ...
                moved = .TRUE._INT8
            ELSE
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Not moving middle west/east.")',  &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2
                    FLUSH(unit = OUTPUT_UNIT)
                END IF
            END IF

            ! Check if the middle needs moving south/north ...
            IF(0.5e0_REAL64 * (maxSouthDist - maxNorthDist) > dist2)THEN
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Moving middle ", f10.3, " km towards the south ...")', &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * 0.5e0_REAL64 * (maxSouthDist - maxNorthDist)
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Find the new location ...
                CALL sub_calc_loc_from_loc_and_bearing_and_dist(                &
                    midLon,                                                     &
                    midLat,                                                     &
                    180.0e0_REAL64,                                             &
                    0.5e0_REAL64 * (maxSouthDist - maxNorthDist),               &
                    newMidLon,                                                  &
                    newMidLat,                                                  &
                    tmpBearing,                                                 &
                     eps = eps2,                                                &
                    nmax = nMax2                                                &
                )

                ! Find the maximum Geodesic distance from the middle to any
                ! location ...
                CALL sub_max_dist_geodesicSpace(                                &
                          n = n,                                                &
                     midLon = newMidLon,                                        &
                     midLat = newMidLat,                                        &
                       lons = lons,                                             &
                       lats = lats,                                             &
                    maxDist = newMaxDist                                        &
                )

                ! Update values ...
                maxDist = newMaxDist                                            ! [m]
                midLon = newMidLon                                              ! [°]
                midLat = newMidLat                                              ! [°]

                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is now ", f10.3, " km.")',    &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Set flag ...
                moved = .TRUE._INT8
            ELSE IF(0.5e0_REAL64 * (maxNorthDist - maxSouthDist) > dist2)THEN
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Moving middle ", f10.3, " km towards the north ...")', &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * 0.5e0_REAL64 * (maxNorthDist - maxSouthDist)
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Find the new location ...
                CALL sub_calc_loc_from_loc_and_bearing_and_dist(                &
                    midLon,                                                     &
                    midLat,                                                     &
                    0.0e0_REAL64,                                               &
                    0.5e0_REAL64 * (maxNorthDist - maxSouthDist),               &
                    newMidLon,                                                  &
                    newMidLat,                                                  &
                    tmpBearing,                                                 &
                     eps = eps2,                                                &
                    nmax = nMax2                                                &
                )

                ! Find the maximum Geodesic distance from the middle to any
                ! location ...
                CALL sub_max_dist_geodesicSpace(                                &
                          n = n,                                                &
                     midLon = newMidLon,                                        &
                     midLat = newMidLat,                                        &
                       lons = lons,                                             &
                       lats = lats,                                             &
                    maxDist = newMaxDist                                        &
                )

                ! Update values ...
                maxDist = newMaxDist                                            ! [m]
                midLon = newMidLon                                              ! [°]
                midLat = newMidLat                                              ! [°]

                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is now ", f10.3, " km.")',    &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF

                ! Set flag ...
                moved = .TRUE._INT8
            ELSE
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Not moving middle south/north.")',    &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2
                    FLUSH(unit = OUTPUT_UNIT)
                END IF
            END IF

            ! Stop iterating if the answer isn't moving ...
            IF(.NOT. moved)THEN
                IF(debug2)THEN
                    WRITE(                                                      &
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The middle was not moved; the middle is finally (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is finally ", f10.3, " km.")',    &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF
                EXIT
            END IF

            ! Stop if the end of the iterations has been reached but the answer
            ! has not converged ...
            IF(iDistIter == nDistIter2)THEN
                WRITE(                                                          &
                     fmt = '("ERROR: Failed to converge; the middle is currently (", f11.6, "°, ", f10.6, "°); nDistIter = ", i9, ".")',    &
                    unit = ERROR_UNIT                                           &
                ) midLon, midLat, nDistIter2
                FLUSH(unit = ERROR_UNIT)
                STOP
            END IF
        END DO
    END IF

    ! Check if any more refinement is needed ...
    IF(iRefine2 < nRefine2)THEN
        ! Iterate answer ...
        CALL sub_find_middle_of_locs_geodesicBox(                               &
                    n = n,                                                      &
                 lons = lons,                                                   &
                 lats = lats,                                                   &
               midLon = midLon,                                                 &
               midLat = midLat,                                                 &
              maxDist = maxDist,                                                &
              angConv = angConv2,                                               &
                debug = debug2,                                                 &
                 dist = 0.5e0_REAL64 * dist2,                                   &
                  eps = eps2,                                                   &
              iRefine = iRefine2 + 1_INT64,                                     &
                 nAng = nAng2,                                                  &
             nAngIter = nAngIter2,                                              &
            nDistIter = nDistIter2,                                             &
                 nMax = nMax2,                                                  &
              nRefine = nRefine2                                                &
        )
    END IF
END SUBROUTINE sub_find_middle_of_locs_geodesicBox
