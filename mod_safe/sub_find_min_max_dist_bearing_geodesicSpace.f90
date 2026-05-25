RECURSIVE SUBROUTINE sub_find_min_max_dist_bearing_geodesicSpace(               &
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
    iAngIter,                                                                   &
    iDistIter,                                                                  &
    iRefine,                                                                    &
    nAng,                                                                       &
    nAngIter,                                                                   &
    nDistIter,                                                                  &
    nMax,                                                                       &
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
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iAngIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iDistIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: iRefine
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAng
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nAngIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nDistIter
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nMax
    INTEGER(kind = INT64), INTENT(in), OPTIONAL                                 :: nRefine
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angConv
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: angHalfRange
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: dist
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: eps
    REAL(kind = REAL64), INTENT(in), OPTIONAL                                   :: startAng

    ! Declare internal variables ...
    LOGICAL(kind = INT8)                                                        :: debug2
    INTEGER(kind = INT64)                                                       :: iAng
    INTEGER(kind = INT64)                                                       :: iAngIter2
    INTEGER(kind = INT64)                                                       :: iDistIter2
    INTEGER(kind = INT64)                                                       :: iRefine2
    INTEGER(kind = INT64)                                                       :: nAng2
    INTEGER(kind = INT64)                                                       :: nAngIter2
    INTEGER(kind = INT64)                                                       :: nDistIter2
    INTEGER(kind = INT64)                                                       :: nMax2
    INTEGER(kind = INT64)                                                       :: nRefine2
    REAL(kind = REAL64)                                                         :: angConv2
    REAL(kind = REAL64)                                                         :: angHalfRange2
    REAL(kind = REAL64)                                                         :: dist2
    REAL(kind = REAL64)                                                         :: eps2
!     REAL(kind = REAL64)                                                         :: linC
!     REAL(kind = REAL64)                                                         :: linM
    REAL(kind = REAL64)                                                         :: startAng2
    REAL(kind = REAL64)                                                         :: tmpBearing
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: angLats
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: angLons
!     REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: dydx
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: fakeAngs
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: maxDists
!     REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: midx

    ! Set logical value ...
    IF(PRESENT(debug))THEN
        debug2 = debug
    ELSE
        debug2 = .TRUE._INT8
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
    IF(PRESENT(angHalfRange))THEN
        angHalfRange2 = angHalfRange                                            ! [°]
    ELSE
        angHalfRange2 = 180.0e0_REAL64                                          ! [°]
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
    IF(PRESENT(startAng))THEN
        startAng2 = startAng                                                    ! [°]
    ELSE
        startAng2 = 180.0e0_REAL64                                              ! [°]
    END IF

    ! **************************************************************************

    ! Check arguments ...
    IF(iAngIter2 == nAngIter2)THEN
        WRITE(                                                                  &
             fmt = '("ERROR: Failed to converge; the middle is currently (", f11.6, "°, ", f10.6, "°); nAngIter2 = ", i9, ".")',    &
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
    IF(iAngIter2 > 1_INT64)THEN
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
    IF(iAngIter2 == 1_INT64)THEN
        nAng2 = nAng2 - 1_INT64                                                 ! [#]
        ALLOCATE(fakeAngs(nAng2))
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
        ALLOCATE(fakeAngs(nAng2))
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
    ALLOCATE(angLons(nAng2))
    ALLOCATE(angLats(nAng2))

    ! Initialize distance array ...
    ALLOCATE(maxDists(nAng2))

    ! Loop over angles ...
    DO iAng = 1_INT64, nAng2
        ! Populate location arrays ...
        ! NOTE: Taking care not to stray outside of 0° and 360°.
        CALL sub_calc_loc_from_loc_and_bearing_and_dist(                        &
            midLon,                                                             &
            midLat,                                                             &
            MODULO(fakeAngs(iAng) + 360.0e0_REAL64, 360.0e0_REAL64),            &
            dist2,                                                              &
            angLons(iAng),                                                      &
            angLats(iAng),                                                      &
            tmpBearing,                                                         &
             eps = eps2,                                                        &
            nmax = nMax2                                                        &
        )

        ! Populate distance array ...
        CALL sub_max_dist_geodesicSpace(                                        &
                  n = n,                                                        &
             midLon = angLons(iAng),                                            &
             midLat = angLats(iAng),                                            &
               lons = lons,                                                     &
               lats = lats,                                                     &
            maxDist = maxDists(iAng),                                           &
                eps = eps2,                                                     &
               nmax = nMax2                                                     &
        )
    END DO

    ! Clean up ...
    DEALLOCATE(angLons)
    DEALLOCATE(angLats)

    ! **************************************************************************

    ! Check if this is the first time that the angle has been iterated ...
    IF(iAngIter2 == 1_INT64)THEN
        ! Find the angle with the minimum maximum distance ...
        iAng = MINLOC(maxDists, dim = 1, kind = INT64)                          ! [#]
        bestAng = fakeAngs(iAng)                                                ! [°]

        ! Iterate answer ...
        CALL sub_find_min_max_dist_bearing_geodesicSpace(                       &
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
                iAngIter = iAngIter2 + 1_INT64,                                 &
               iDistIter = iDistIter2,                                          &
                 iRefine = iRefine2,                                            &
                    nAng = nAng2 + 1_INT64,                                     &
                nAngIter = nAngIter2,                                           &
               nDistIter = nDistIter2,                                          &
                    nMax = nMax2,                                               &
                 nRefine = nRefine2,                                            &
                startAng = MODULO(bestAng + 360.0e0_REAL64, 360.0e0_REAL64)     &
        )
    ELSE
        ! Fit a polynomial degree 2 to the values and find the angle with the
        ! minimum maximum distance (this is the same as differentiating each
        ! pair and fitting a polynomial degree 1 to the gradients and finding
        ! the angle with a zero gradient maximum distance) ...
!         ALLOCATE(dydx(nAng2 - 1_INT64))
!         ALLOCATE(midx(nAng2 - 1_INT64))
!         DO iAng = 1_INT64, nAng2 - 1_INT64
!             dydx(iAng) = (maxDists(iAng + 1_INT64) - maxDists(iAng)) / (fakeAngs(iAng + 1_INT64) - fakeAngs(iAng))  ! [m/°]
!             midx(iAng) = 0.5e0_REAL64 * (fakeAngs(iAng) + fakeAngs(iAng + 1_INT64)) ! [°]
!         END DO
!         CALL sub_linearRegression(                                              &
!                 n = nAng2 - 1_INT64,                                            &
!                 x = midx,                                                       &
!                 y = dydx,                                                       &
!                 m = linM,                                                       &
!                 c = linC                                                        &
!         )
!         DEALLOCATE(dydx)
!         DEALLOCATE(midx)
!         bestAng = -linC / linM                                                  ! [°]

        ! Find the angle with the minimum maximum distance ...
        iAng = MINLOC(maxDists, dim = 1, kind = INT64)                          ! [#]
        bestAng = fakeAngs(iAng)                                                ! [°]

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
            CALL sub_find_min_max_dist_bearing_geodesicSpace(                   &
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
                    iAngIter = iAngIter2 + 1_INT64,                             &
                   iDistIter = iDistIter2,                                      &
                     iRefine = iRefine2,                                        &
                        nAng = nAng2,                                           &
                    nAngIter = nAngIter2,                                       &
                   nDistIter = nDistIter2,                                      &
                        nMax = nMax2,                                           &
                     nRefine = nRefine2,                                        &
                    startAng = MODULO(bestAng + 360.0e0_REAL64, 360.0e0_REAL64) &
            )
        END IF
    END IF

    ! Clean up ...
    DEALLOCATE(fakeAngs)
    DEALLOCATE(maxDists)
END SUBROUTINE sub_find_min_max_dist_bearing_geodesicSpace
