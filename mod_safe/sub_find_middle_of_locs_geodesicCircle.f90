RECURSIVE SUBROUTINE sub_find_middle_of_locs_geodesicCircle(                    &
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
    USE, INTRINSIC :: ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(IN)                                           :: n
    REAL(kind = REAL64), DIMENSION(n), INTENT(IN)                               :: lons
    REAL(kind = REAL64), DIMENSION(n), INTENT(IN)                               :: lats
    REAL(kind = REAL64), INTENT(INOUT)                                          :: midLon
    REAL(kind = REAL64), INTENT(INOUT)                                          :: midLat
    REAL(kind = REAL64), INTENT(OUT)                                            :: maxDist

    ! Declare optional input variables/outputs ...
    LOGICAL(kind = INT8), INTENT(IN), OPTIONAL                                  :: debug
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: iRefine
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: nAng
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: nAngIter
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: nDistIter
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: nMax
    INTEGER(kind = INT64), INTENT(IN), OPTIONAL                                 :: nRefine
    REAL(kind = REAL64), INTENT(IN), OPTIONAL                                   :: angConv
    REAL(kind = REAL64), INTENT(IN), OPTIONAL                                   :: dist
    REAL(kind = REAL64), INTENT(IN), OPTIONAL                                   :: eps

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    INTEGER(kind = INT64)                                                       :: iDistIter
    INTEGER(kind = INT64)                                                       :: iRefine2
    INTEGER(kind = INT64)                                                       :: nAng2
    INTEGER(kind = INT64)                                                       :: nAngIter2
    INTEGER(kind = INT64)                                                       :: nDistIter2
    INTEGER(kind = INT64)                                                       :: nMax2
    INTEGER(kind = INT64)                                                       :: nRefine2
    REAL(kind = REAL64)                                                         :: angConv2
    REAL(kind = REAL64)                                                         :: bestAng
    REAL(kind = REAL64)                                                         :: dist2
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: newMaxDist
    REAL(kind = REAL64)                                                         :: newMidLat
    REAL(kind = REAL64)                                                         :: newMidLon
    REAL(kind = REAL64)                                                         :: tmpBearing

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
             FMT = '("ERROR: ""nAng2"" is even; nAng2 = ", i3, ".")',           &
            UNIT = ERROR_UNIT                                                   &
        ) nAng2
        FLUSH(UNIT = ERROR_UNIT)
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
             FMT = '("INFO: Refinement #", i3, "/", i3, ": The middle is initially (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is initially ", f10.3, " km.")',  &
            UNIT = OUTPUT_UNIT                                                  &
        ) iRefine2, nRefine2, midLon, midLat, 0.001e0_REAL64 * maxDist
        FLUSH(UNIT = OUTPUT_UNIT)
    END IF

    ! Check if the answer is initially converged ...
    IF(maxDist <= dist2)THEN
        IF(debug2)THEN
            WRITE(                                                              &
                 FMT = '("INFO: Refinement #", i3, "/", i3, ": The middle is initially converged.")',   &
                UNIT = OUTPUT_UNIT                                              &
            ) iRefine2, nRefine2
            FLUSH(UNIT = OUTPUT_UNIT)
        END IF
    ELSE
        ! Loop over distance iterations ...
        DO iDistIter = 1_INT64, nDistIter2
            ! Find the angle towards the minimum maximum Geodesic distance ...
            CALL sub_find_min_max_dist_bearing_geodesicSpace(                   &
                           n = n,                                               &
                      midLon = midLon,                                          &
                      midLat = midLat,                                          &
                        lons = lons,                                            &
                        lats = lats,                                            &
                     bestAng = bestAng,                                         &
                     angConv = angConv2,                                        &
                angHalfRange = 180.0e0_REAL64,                                  &
                       debug = debug2,                                          &
                        dist = dist2,                                           &
                         eps = eps2,                                            &
                    iAngIter = 1_INT64,                                         &
                   iDistIter = iDistIter,                                       &
                     iRefine = iRefine2,                                        &
                        nAng = nAng2,                                           &
                    nAngIter = nAngIter2,                                       &
                   nDistIter = nDistIter2,                                      &
                        nMax = nMax2,                                           &
                     nRefine = nRefine2,                                        &
                    startAng = 180.0e0_REAL64                                   &
            )

            IF(debug2)THEN
                WRITE(                                                          &
                     FMT = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Moving middle ", f10.3, " km towards ", f10.6, "° ...")', &
                    UNIT = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter, nDistIter2, 0.001e0_REAL64 * dist2, bestAng
                FLUSH(UNIT = OUTPUT_UNIT)
            END IF

            ! Find the new location ...
            ! NOTE: Taking care not to stray outside of 0° and 360°.
            CALL sub_calc_loc_from_loc_and_bearing_and_dist(                    &
                midLon,                                                         &
                midLat,                                                         &
                MODULO(bestAng + 360.0e0_REAL64, 360.0e0_REAL64),               &
                dist2,                                                          &
                newMidLon,                                                      &
                newMidLat,                                                      &
                tmpBearing,                                                     &
                 eps = eps2,                                                    &
                nmax = nMax2                                                    &
            )

            ! Find the maximum Geodesic distance from the middle to any
            ! location ...
            CALL sub_max_dist_geodesicSpace(                                    &
                      n = n,                                                    &
                 midLon = newMidLon,                                            &
                 midLat = newMidLat,                                            &
                   lons = lons,                                                 &
                   lats = lats,                                                 &
                maxDist = newMaxDist                                            &
            )

            ! Stop iterating if the answer isn't getting any better ...
            IF(newMaxDist > maxDist)THEN
                IF(debug2)THEN
                    WRITE(                                                      &
                         FMT = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The moved middle is worse; the middle is finally (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is finally ", f10.3, " km.")',    &
                        UNIT = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                    FLUSH(UNIT = OUTPUT_UNIT)
                END IF
                EXIT
            END IF

            ! Update values ...
            maxDist = newMaxDist                                                ! [m]
            midLon = newMidLon                                                  ! [°]
            midLat = newMidLat                                                  ! [°]

            ! Stop if the end of the iterations has been reached but the answer
            ! has not converged ...
            IF(iDistIter == nDistIter2)THEN
                WRITE(                                                          &
                     FMT = '("ERROR: Failed to converge; the middle is currently (", f11.6, "°, ", f10.6, "°); nDistIter = ", i9, ".")',    &
                    UNIT = ERROR_UNIT                                           &
                ) midLon, midLat, nDistIter2
                FLUSH(UNIT = ERROR_UNIT)
                STOP
            END IF

            IF(debug2)THEN
                WRITE(                                                          &
                     FMT = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The moved middle is better; the middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Geodesic distance is now ", f10.3, " km.")',   &
                    UNIT = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, 0.001e0_REAL64 * maxDist
                FLUSH(UNIT = OUTPUT_UNIT)
            END IF
        END DO
    END IF

    ! Check if any more refinement is needed ...
    IF(iRefine2 < nRefine2)THEN
        ! Iterate answer ...
        CALL sub_find_middle_of_locs_geodesicCircle(                            &
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
END SUBROUTINE sub_find_middle_of_locs_geodesicCircle
