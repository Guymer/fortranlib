SUBROUTINE sub_find_middle_of_locs_euclideanCircle(                             &
    n,                                                                          &
    lons,                                                                       &
    lats,                                                                       &
    midLon,                                                                     &
    midLat,                                                                     &
    maxDist,                                                                    &
    angConv,                                                                    &
    conv,                                                                       &
    debug,                                                                      &
    eps,                                                                        &
    nAng,                                                                       &
    nIter                                                                       &
)
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

    ! Declare optional input variables/outputs ...
    LOGICAL(kind = INT8), INTENT(in), OPTIONAL                                  :: debug
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAng
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nIter
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angConv
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: conv
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: eps

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    INTEGER(kind = INT64)                                                       :: iIter
    INTEGER(kind = INT64)                                                       :: nAng2
    INTEGER(kind = INT64)                                                       :: nIter2
    REAL(kind = REAL64)                                                         :: angConv2
    REAL(kind = REAL64)                                                         :: conv2
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: minAng
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
    IF(PRESENT(nAng))THEN
        nAng2 = MAX(9_INT64, nAng)                                              ! [#]
    ELSE
        nAng2 = 9_INT64                                                         ! [#]
    END IF
    IF(PRESENT(nIter))THEN
        nIter2 = MAX(3_INT64, nIter)                                            ! [#]
    ELSE
        nIter2 = 100_INT64                                                      ! [#]
    END IF

    ! Set real values ...
    IF(PRESENT(angConv))THEN
        angConv2 = angConv                                                      ! [°]
    ELSE
        angConv2 = 0.1e0_REAL64                                                 ! [°]
    END IF
    IF(PRESENT(conv))THEN
        conv2 = conv                                                            ! [°]
    ELSE
        conv2 = 0.01e0_REAL64                                                   ! [°]
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

    ! Calculate the initial middle and maximum distance using the Euclidean
    ! bounding box method ...
    CALL sub_find_middle_of_locs_euclideanBox(                                  &
              n = n,                                                            &
           lons = lons,                                                         &
           lats = lats,                                                         &
         midLon = midLon,                                                       &
         midLat = midLat,                                                       &
        maxDist = maxDist                                                       &
    )
    IF(debug2)THEN
        WRITE(                                                                  &
             fmt = '("INFO: The middle is initially (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is initially ", f10.6, "°.")',  &
            unit = OUTPUT_UNIT                                                  &
        ) midLon, midLat, maxDist
        FLUSH(unit = OUTPUT_UNIT)
    END IF

    ! Check if the answer is initially converged ...
    IF(maxDist <= conv2)THEN
        IF(debug2)THEN
            WRITE(                                                              &
                 fmt = '("INFO: The middle is finally (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is finally ", f10.6, "°.")',  &
                unit = OUTPUT_UNIT                                              &
            ) midLon, midLat, maxDist
            FLUSH(unit = OUTPUT_UNIT)
        END IF
    ELSE
        ! Loop over iterations ...
        DO iIter = 1_INT64, nIter2
            ! Find the angle towards the minimum maximum Euclidean distance ...
            CALL sub_find_min_max_dist_bearing_euclideanSpace(                  &
                           n = n,                                               &
                      midLon = midLon,                                          &
                      midLat = midLat,                                          &
                        lons = lons,                                            &
                        lats = lats,                                            &
                     bestAng = minAng,                                          &
                     angConv = angConv2,                                        &
                angHalfRange = 180.0e0_REAL64,                                  &
                       debug = debug2,                                          &
                        dist = conv2,                                           &
                         eps = eps2,                                            &
                       first = .TRUE._INT8,                                     &
                       iIter = 0_INT64,                                         &
                        nAng = nAng2,                                           &
                       nIter = nIter2,                                          &
                    startAng = 180.0e0_REAL64                                   &
            )
            IF(debug2)THEN
                WRITE(                                                          &
                     fmt = '("INFO: #", i9, "/", i9, ": Moving middle ", f10.6, "° towards ", f10.6, "° ...")',    &
                    unit = OUTPUT_UNIT                                          &
                ) iIter, nIter2, conv2, minAng
                FLUSH(unit = OUTPUT_UNIT)
            END IF

            ! Find the new location ...
            newMidLon = midLon + conv2 * SIN(func_radians(minAng))              ! [°]
            newMidLat = midLat + conv2 * COS(func_radians(minAng))              ! [°]

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
                         fmt = '("INFO: #", i9, "/", i9, ": The middle is finally (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is finally ", f10.6, "°.")',  &
                        unit = OUTPUT_UNIT                                      &
                    ) iIter, nIter2, midLon, midLat, maxDist
                    FLUSH(unit = OUTPUT_UNIT)
                END IF
                EXIT
            END IF

            ! Update values ...
            maxDist = newMaxDist                                                ! [°]
            midLon = newMidLon                                                  ! [°]
            midLat = newMidLat                                                  ! [°]

            ! Stop if the end of the loop has been reached but the answer has
            ! not converged ...
            IF(iIter == nIter2)THEN
                WRITE(                                                          &
                     fmt = '("ERROR: Failed to converge; the middle is currently (", f11.6, "°, ", f10.6, "°); nIter = ", i9, ".")',    &
                    unit = ERROR_UNIT                                           &
                ) midLon, midLat, nIter2
                FLUSH(unit = ERROR_UNIT)
                STOP
            END IF

            IF(debug2)THEN
                WRITE(                                                          &
                     fmt = '("INFO: #", i9, "/", i9, ": The middle is now (", f11.6, "°, ", f10.6, "°) and the maximum Euclidean distance is now ", f10.6, "°.")',  &
                    unit = OUTPUT_UNIT                                          &
                ) iIter, nIter2, midLon, midLat, maxDist
                FLUSH(unit = OUTPUT_UNIT)
            END IF
        END DO
    END IF
END SUBROUTINE sub_find_middle_of_locs_euclideanCircle
