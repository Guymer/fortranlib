RECURSIVE SUBROUTINE sub_find_middle_of_locs_euclideanCircle(                   &
    n,                                                                          &
    lons,                                                                       &
    lats,                                                                       &
    midLon,                                                                     &
    midLat,                                                                     &
    maxDist,                                                                    &
    angConv,                                                                    &
    debug,                                                                      &
    dist,                                                                       &
    iRefine,                                                                    &
    nAng,                                                                       &
    nAngIter,                                                                   &
    nDistIter,                                                                  &
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
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nRefine
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angConv
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: dist

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    INTEGER(kind = INT64)                                                       :: iDistIter
    INTEGER(kind = INT64)                                                       :: iRefine2
    INTEGER(kind = INT64)                                                       :: nAng2
    INTEGER(kind = INT64)                                                       :: nAngIter2
    INTEGER(kind = INT64)                                                       :: nDistIter2
    INTEGER(kind = INT64)                                                       :: nRefine2
    REAL(kind = REAL64)                                                         :: angConv2
    REAL(kind = REAL64)                                                         :: bestAng
    REAL(kind = REAL64)                                                         :: dist2
    REAL(kind = REAL64)                                                         :: newMaxDist
    REAL(kind = REAL64)                                                         :: newMidLat
    REAL(kind = REAL64)                                                         :: newMidLon

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
        dist2 = dist                                                            ! [°]
    ELSE
        dist2 = 8.993203637245378e-02_REAL64                                    ! [°] ~10 km
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

    ! Find the maximum Euclidean distance from the middle to any location ...
    CALL sub_max_dist_euclideanSpace(                                           &
              n = n,                                                            &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
           lons = lons,                                                         &
           lats = lats,                                                         &
        maxDist = maxDist                                                       &
    )

    IF(debug2)THEN
        WRITE(                                                                  &
             fmt = '("INFO: Refinement #", i3, "/", i3, ": The middle is initially (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is initially ", f10.6, "°.")',   &
            unit = OUTPUT_UNIT                                                  &
        ) iRefine2, nRefine2, midLon, midLat, maxDist
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
            ! Find the angle towards the minimum maximum Euclidean distance ...
            CALL sub_find_min_max_dist_bearing_euclideanSpace(                  &
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
                       first = .TRUE._INT8,                                     &
                    iAngIter = 1_INT64,                                         &
                   iDistIter = iDistIter,                                       &
                     iRefine = iRefine2,                                        &
                        nAng = nAng2,                                           &
                    nAngIter = nAngIter2,                                       &
                   nDistIter = nDistIter2,                                      &
                     nRefine = nRefine2,                                        &
                    startAng = 180.0e0_REAL64                                   &
            )

            IF(debug2)THEN
                WRITE(                                                          &
                     fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Moving middle ", f10.6, "° towards ", f10.6, "° ...")',   &
                    unit = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter, nDistIter2, dist2, bestAng
                FLUSH(unit = OUTPUT_UNIT)
            END IF

            ! Find the new location ...
            ! NOTE: Taking care not to stray outside of 0° and 360°.
            newMidLon = midLon + dist2 * SIN(func_radians(bestAng))             ! [°]
            newMidLat = midLat + dist2 * COS(func_radians(bestAng))             ! [°]

            ! Find the maximum Euclidean distance from the middle to any
            ! location ...
            CALL sub_max_dist_euclideanSpace(                                   &
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
                         fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The moved middle is worse; the middle is finally (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is finally ", f10.6, "°.")', &
                        unit = OUTPUT_UNIT                                      &
                    ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF
                EXIT
            END IF

            ! Update values ...
            maxDist = newMaxDist                                                ! [°]
            midLon = newMidLon                                                  ! [°]
            midLat = newMidLat                                                  ! [°]

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

            IF(debug2)THEN
                WRITE(                                                          &
                     fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": The moved middle is better; the middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is now ", f10.6, "°.")',    &
                    unit = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter, nDistIter2, midLon, midLat, maxDist
                FLUSH(unit = OUTPUT_UNIT)
            END IF
        END DO
    END IF

    ! Check if any more refinement is needed ...
    IF(iRefine2 < nRefine2)THEN
        ! Iterate answer ...
        CALL sub_find_middle_of_locs_euclideanCircle(                           &
                    n = n,                                                      &
                 lons = lons,                                                   &
                 lats = lats,                                                   &
               midLon = midLon,                                                 &
               midLat = midLat,                                                 &
              maxDist = maxDist,                                                &
              angConv = angConv2,                                               &
                debug = debug2,                                                 &
                 dist = 0.5e0_REAL64 * dist2,                                   &
              iRefine = iRefine2 + 1_INT64,                                     &
                 nAng = nAng2,                                                  &
             nAngIter = nAngIter2,                                              &
            nDistIter = nDistIter2,                                             &
              nRefine = nRefine2                                                &
        )
    END IF
END SUBROUTINE sub_find_middle_of_locs_euclideanCircle
