RECURSIVE SUBROUTINE sub_find_min_max_dist_bearing_euclideanSpace(              &
    n,                                                                          &
    midLon,                                                                     &
    midLat,                                                                     &
    lons,                                                                       &
    lats,                                                                       &
    bestAng,                                                                    &
    angConv,                                                                    &
    angHalfRange,                                                               &
    debug,                                                                      &
    dist,                                                                       &
    eps,                                                                        &
    first,                                                                      &
    iAngIter,                                                                   &
    iDistIter,                                                                  &
    iRefine,                                                                    &
    nAng,                                                                       &
    nAngIter,                                                                   &
    nDistIter,                                                                  &
    nRefine,                                                                    &
    startAng                                                                    &
)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare input variables/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: n
    REAL(kind = REAL64), INTENT(in)                                             :: midLon
    REAL(kind = REAL64), INTENT(in)                                             :: midLat
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lons
    REAL(kind = REAL64), DIMENSION(n), INTENT(in)                               :: lats
    REAL(kind = REAL64), INTENT(out)                                            :: bestAng

    ! Declare optional input variables/outputs ...
    LOGICAL(kind = INT8), INTENT(in), OPTIONAL                                  :: debug
    LOGICAL(kind = INT8), INTENT(in), OPTIONAL                                  :: first
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iAngIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iDistIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iRefine
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAng
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAngIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nDistIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nRefine
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angConv
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angHalfRange
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: dist
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: eps
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: startAng

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    LOGICAL(kind = INT8)                                                        :: first2
    INTEGER(kind = INT64)                                                       :: iAng
    INTEGER(kind = INT64)                                                       :: iAngIter2
    INTEGER(kind = INT64)                                                       :: iDistIter2
    INTEGER(kind = INT64)                                                       :: iRefine2
    INTEGER(kind = INT64)                                                       :: nAng2
    INTEGER(kind = INT64)                                                       :: nAngIter2
    INTEGER(kind = INT64)                                                       :: nDistIter2
    INTEGER(kind = INT64)                                                       :: nRefine2
    REAL(kind = REAL64)                                                         :: angConv2
    REAL(kind = REAL64)                                                         :: angHalfRange2
    REAL(kind = REAL64)                                                         :: dist2
    REAL(kind = REAL64)                                                         :: eps2
    REAL(kind = REAL64)                                                         :: quaA
    REAL(kind = REAL64)                                                         :: quaB
    REAL(kind = REAL64)                                                         :: quaC
    REAL(kind = REAL64)                                                         :: startAng2
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: angLats
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: angLons
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: fakeAngs
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: maxDists

    ! Set logical values ...
    IF(PRESENT(debug))THEN
        debug2 = debug
    ELSE
        debug2 = .TRUE._INT8
    END IF
    IF(PRESENT(first))THEN
        first2 = first
    ELSE
        first2 = .TRUE._INT8
    END IF

    ! Set integer values ...
    IF(PRESENT(iAngIter))THEN
        iAngIter2 = iAngIter                                                    ! [#]
    ELSE
        iAngIter2 = 1_INT64                                                     ! [#]
    END IF
    IF(PRESENT(iDistIter))THEN
        iDistIter2 = iDistIter                                                  ! [#]
    ELSE
        iDistIter2 = 1_INT64                                                    ! [#]
    END IF
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
    IF(PRESENT(angHalfRange))THEN
        angHalfRange2 = angHalfRange                                            ! [°]
    ELSE
        angHalfRange2 = 180.0e0_REAL64                                          ! [°]
    END IF
    IF(PRESENT(dist))THEN
        dist2 = dist                                                            ! [°]
    ELSE
        dist2 = 10.0e0_REAL64                                                   ! [°]
    END IF
    IF(PRESENT(eps))THEN
        eps2 = eps
    ELSE
        eps2 = 1.0e-12_REAL64
    END IF
    IF(PRESENT(startAng))THEN
        startAng2 = startAng                                                    ! [°]
    ELSE
        startAng2 = 180.0e0_REAL64                                              ! [°]
    END IF

    ! **************************************************************************

    ! Check arguments ...
    IF(iAngIter2 == nAngIter2)THEN
        WRITE(                                                                  &
             fmt = '("ERROR: Failed to converge; the middle is currently (", f11.6, "°, ", f10.6, "°); nAngIter = ", i9, ".")',    &
            unit = ERROR_UNIT                                                   &
        ) midLon, midLat, nAngIter2
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    IF(MODULO(nAng2, 2_INT64) == 0_INT64)THEN
        WRITE(                                                                  &
             fmt = '("ERROR: ""nAng2"" is even; nAng2 = ", i3, ".")',           &
            unit = ERROR_UNIT                                                   &
        ) nAng2
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    IF(.NOT. first2)THEN
        IF(angHalfRange2 >= 180.0e0_REAL64)THEN
            WRITE(                                                              &
                 fmt = '("ERROR: ""angHalfRange2"" is greater than, or equal to, 180°; angHalfRange2 = ", f10.6, "°.")',    &
                unit = ERROR_UNIT                                               &
            ) angHalfRange2
            FLUSH(unit = ERROR_UNIT)
            STOP
        END IF
    END IF

    ! **************************************************************************

    IF(debug2)THEN
        WRITE(                                                                  &
             fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Angle Iteration #", i9, "/", i9, ": The minimum maximum distance bearing is now ", f10.6, "°.")',    &
            unit = OUTPUT_UNIT                                                  &
        ) iRefine2, nRefine2, iDistIter2, nDistIter2, iAngIter2, nAngIter2, startAng2
        FLUSH(unit = OUTPUT_UNIT)
    END IF

    ! **************************************************************************

    ! Make fake angular axis ...
    ! NOTE: Taking care not to have the duplicate entries of 0° and 360° when
    !       run the first time.
    IF(first2)THEN
        nAng2 = nAng2 - 1_INT64                                                 ! [#]
        CALL sub_allocate_array(fakeAngs, "fakeAngs", nAng2, debug2)
        DO iAng = 1_INT64, nAng2
            fakeAngs(iAng) = startAng2 + REAL(                                  &
                iAng - 1_INT64 - nAng2 / 2_INT64,                               &
                kind = REAL64                                                   &
            ) * 2.0e0_REAL64 * angHalfRange2 / REAL(                            &
                nAng2,                                                          &
                kind = REAL64                                                   &
            )                                                                   ! [°]
        END DO
    ELSE
        CALL sub_allocate_array(fakeAngs, "fakeAngs", nAng2, debug2)
        DO iAng = 1_INT64, nAng2
            fakeAngs(iAng) = startAng2 + REAL(                                  &
                iAng - 1_INT64 - nAng2 / 2_INT64,                               &
                kind = REAL64                                                   &
            ) * 2.0e0_REAL64 * angHalfRange2 / REAL(                            &
                nAng2 - 1_INT64,                                                &
                kind = REAL64                                                   &
            )                                                                   ! [°]
        END DO
    END IF

    ! **************************************************************************

    ! Initialize location arrays ...
    CALL sub_allocate_array(angLons, "angLons", nAng2, debug2)
    CALL sub_allocate_array(angLats, "angLats", nAng2, debug2)

    ! Loop over angles ...
    DO iAng = 1_INT64, nAng2
        ! Populate location arrays ...
        ! NOTE: Taking care not to stray outside of 0° and 360°.
        angLons(iAng) = midLon + dist2 * SIN(func_radians(fakeAngs(iAng)))      ! [°]
        angLats(iAng) = midLat + dist2 * COS(func_radians(fakeAngs(iAng)))      ! [°]
    END DO

    ! **************************************************************************

    ! Initialize distance array ...
    CALL sub_allocate_array(maxDists, "maxDists", nAng2, debug2)

    ! Populate distance array ...
    DO iAng = 1_INT64, nAng2
        CALL sub_max_dist_euclideanSpace(                                       &
                  n = n,                                                        &
             midLon = angLons(iAng),                                            &
             midLat = angLats(iAng),                                            &
               lons = lons,                                                     &
               lats = lats,                                                     &
            maxDist = maxDists(iAng)                                            &
        )
    END DO

    ! Clean up ...
    DEALLOCATE(angLons)
    DEALLOCATE(angLats)

    ! **************************************************************************

    ! Check if this is the first time that a solution has been found ...
    IF(first2)THEN
        ! Find angle with minimum maximum distance ...
        iAng = MINLOC(maxDists, dim = 1, kind = INT64)                          ! [#]

        ! Iterate answer ...
        CALL sub_find_min_max_dist_bearing_euclideanSpace(                      &
                       n = n,                                                   &
                  midLon = midLon,                                              &
                  midLat = midLat,                                              &
                    lons = lons,                                                &
                    lats = lats,                                                &
                 bestAng = bestAng,                                             &
                 angConv = angConv2,                                            &
            angHalfRange = 0.5e0_REAL64 * angHalfRange2,                        &
                   debug = debug2,                                              &
                    dist = dist2,                                               &
                     eps = eps2,                                                &
                   first = .FALSE._INT8,                                        &
                iAngIter = iAngIter2 + 1_INT64,                                 &
               iDistIter = iDistIter2,                                          &
                 iRefine = iRefine2,                                            &
                    nAng = nAng2 + 1_INT64,                                     &
                nAngIter = nAngIter2,                                           &
               nDistIter = nDistIter2,                                          &
                 nRefine = nRefine2,                                            &
                startAng = MODULO(fakeAngs(iAng) + 360.0e0_REAL64, 360.0e0_REAL64)  &
        )
    ELSE
        ! Fit a polynomial degree 2 to the values and find the angle with the
        ! minimum maximum distance ...
        CALL sub_quadraticRegression(                                           &
                n = nAng2,                                                      &
                x = fakeAngs,                                                   &
                y = maxDists,                                                   &
                a = quaA,                                                       &
                b = quaB,                                                       &
                c = quaC,                                                       &
            debug = debug2                                                      &
        )
        bestAng = -quaB / (2.0e0_REAL64 * quaA)                                 ! [°]

        ! Check if the answer is converged ...
        IF(ABS(startAng2 - bestAng) <= angConv2)THEN
            IF(debug2)THEN
                WRITE(                                                          &
                     fmt = '("INFO: Refinement #", i3, "/", i3, ": Distance Iteration #", i9, "/", i9, ": Angle Iteration #", i9, "/", i9, ": The minimum maximum distance bearing is finally ", f10.6, "°.")',    &
                    unit = OUTPUT_UNIT                                          &
                ) iRefine2, nRefine2, iDistIter2, nDistIter2, iAngIter2 + 1_INT64, nAngIter2, bestAng
                FLUSH(unit = OUTPUT_UNIT)
            END IF
        ELSE
            ! Iterate answer ...
            CALL sub_find_min_max_dist_bearing_euclideanSpace(                  &
                           n = n,                                               &
                      midLon = midLon,                                          &
                      midLat = midLat,                                          &
                        lons = lons,                                            &
                        lats = lats,                                            &
                     bestAng = bestAng,                                         &
                     angConv = angConv2,                                        &
                angHalfRange = 0.5e0_REAL64 * angHalfRange2,                    &
                       debug = debug2,                                          &
                        dist = dist2,                                           &
                         eps = eps2,                                            &
                       first = .FALSE._INT8,                                    &
                    iAngIter = iAngIter2 + 1_INT64,                             &
                   iDistIter = iDistIter2,                                      &
                     iRefine = iRefine2,                                        &
                        nAng = nAng2,                                           &
                    nAngIter = nAngIter2,                                       &
                   nDistIter = nDistIter2,                                      &
                     nRefine = nRefine2,                                        &
                    startAng = MODULO(bestAng + 360.0e0_REAL64, 360.0e0_REAL64) &
            )
        END IF
    END IF

    ! Clean up ...
    DEALLOCATE(fakeAngs)
    DEALLOCATE(maxDists)
END SUBROUTINE sub_find_min_max_dist_bearing_euclideanSpace
