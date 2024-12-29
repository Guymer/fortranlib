SUBROUTINE sub_flood_REAL32_real_array(nx, ny, elev, seaLevel, flooded, tileScale, tot)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    REAL(kind = REAL32), DIMENSION(nx, ny), INTENT(in)                          :: elev
    REAL(kind = REAL32), INTENT(in)                                             :: seaLevel
    LOGICAL(kind = INT8), DIMENSION(nx, ny), INTENT(inout)                      :: flooded
    INTEGER(kind = INT64), INTENT(in)                                           :: tileScale
    INTEGER(kind = INT64), ALLOCATABLE, DIMENSION(:), INTENT(out)               :: tot

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: minTile = 32_INT64
    INTEGER(kind = INT64), PARAMETER                                            :: nIters = 1000_INT64
    INTEGER(kind = INT64), PARAMETER                                            :: nTileIters = 1000_INT64

    ! Declare variables ...
    INTEGER(kind = INT64)                                                       :: iIter
    INTEGER(kind = INT64)                                                       :: iTileIter
    INTEGER(kind = INT64)                                                       :: ix
    INTEGER(kind = INT64)                                                       :: ixlo
    INTEGER(kind = INT64)                                                       :: ixhi
    INTEGER(kind = INT64)                                                       :: iy
    INTEGER(kind = INT64)                                                       :: iylo
    INTEGER(kind = INT64)                                                       :: iyhi
    INTEGER(kind = INT64), ALLOCATABLE, DIMENSION(:)                            :: totTile

    ! Check tileScale ...
    IF(MOD(nx, tileScale) /= 0_INT64)THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) '"nx" is not an integer multiple of "tileScale"'
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF
    IF(MOD(ny, tileScale) /= 0_INT64)THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) '"ny" is not an integer multiple of "tileScale"'
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Allocate array and populate the starting value ...
    ! NOTE: I cannot use "sub_allocate_array()" here as I want to set the lower
    ! bound to be zero.
    ALLOCATE(tot(0:nIters))
    tot = 0_INT64
    tot(0) = COUNT(flooded, kind = INT64)

    ! Start ~infinite loop ...
    DO iIter = 1_INT64, nIters
        ! Stop looping if no more flooding can occur either because nowhere is
        ! flooded or because everywhere is flooded ...
        IF(tot(iIter - 1_INT64) == 0_INT64 .OR. tot(iIter - 1_INT64) == nx * ny)THEN
            EXIT
        END IF

        ! Flood the whole array once ...
        CALL sub_flood_array_iter(                                              &
                  nx = nx,                                                      &
                  ny = ny,                                                      &
                elev = elev,                                                    &
            seaLevel = seaLevel,                                                &
             flooded = flooded,                                                 &
                ixlo = 1_INT64,                                                 &
                ixhi = nx,                                                      &
                iylo = 1_INT64,                                                 &
                iyhi = ny                                                       &
        )

        ! Check that the whole array is actually scaled and then check that the
        ! tiles are large enough to bother with ...
        IF(tileScale > 1_INT64 .AND. nx / tileScale >= minTile .AND. ny / tileScale >= minTile)THEN
            !$omp parallel                                                      &
            !$omp default(none)                                                 &
            !$omp private(iTileIter)                                            &
            !$omp private(ix)                                                   &
            !$omp private(ixlo)                                                 &
            !$omp private(ixhi)                                                 &
            !$omp private(iy)                                                   &
            !$omp private(iylo)                                                 &
            !$omp private(iyhi)                                                 &
            !$omp private(totTile)                                              &
            !$omp shared(elev)                                                  &
            !$omp shared(flooded)                                               &
            !$omp shared(nx)                                                    &
            !$omp shared(ny)                                                    &
            !$omp shared(seaLevel)                                              &
            !$omp shared(tileScale)
                ! Allocate array ...
                ! NOTE: I cannot use "sub_allocate_array()" here as I want to
                !       set the lower bound to be zero.
                ALLOCATE(totTile(0:nTileIters))

                !$omp do                                                        &
                !$omp schedule(dynamic)
                    ! Loop over x-axis tiles ...
                    DO ix = 1_INT64, nx / tileScale
                        ! Find the extent of the tile ...
                        ixlo = (ix - 1_INT64) * tileScale + 1_INT64
                        ixhi =  ix            * tileScale

                        ! Loop over y-axis tiles ...
                        DO iy = 1_INT64, ny / tileScale
                            ! Find the extent of the tile ...
                            iylo = (iy - 1_INT64) * tileScale + 1_INT64
                            iyhi =  iy            * tileScale

                            ! Populate the starting value ...
                            totTile = 0_INT64
                            totTile(0) = COUNT(flooded(ixlo:ixhi, iylo:iyhi), kind = INT64)

                            ! Start ~infinite loop ...
                            DO iTileIter = 1_INT64, nTileIters
                                ! Stop looping if no more flooding can occur
                                ! either because nowhere is flooded or because
                                ! everywhere is flooded ...
                                IF(totTile(iTileIter - 1_INT64) == 0_INT64 .OR. totTile(iTileIter - 1_INT64) == tileScale ** 2)THEN
                                    EXIT
                                END IF

                                ! Flood a tile of the whole array once ...
                                CALL sub_flood_array_iter(                      &
                                          nx = nx,                              &
                                          ny = ny,                              &
                                        elev = elev,                            &
                                    seaLevel = seaLevel,                        &
                                     flooded = flooded,                         &
                                        ixlo = ixlo,                            &
                                        ixhi = ixhi,                            &
                                        iylo = iylo,                            &
                                        iyhi = iyhi                             &
                                )

                                ! Find new total flooded area ...
                                totTile(iTileIter) = COUNT(flooded(ixlo:ixhi, iylo:iyhi), kind = INT64)

                                ! Stop looping once no more flooding has occured ...
                                IF(totTile(iTileIter) == totTile(iTileIter - 1_INT64))THEN
                                    EXIT
                                END IF

                                ! Cry ...
                                IF(iTileIter == nTileIters)THEN
                                    WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) 'Failed to converge the flooding of a tile of the whole array'
                                    FLUSH(unit = ERROR_UNIT)
                                    STOP
                                END IF
                            END DO
                        END DO
                    END DO
                !$omp end do

                ! Clean up ...
                DEALLOCATE(totTile)
            !$omp end parallel
        END IF

        ! Find new total flooded area ...
        tot(iIter) = COUNT(flooded, kind = INT64)

        ! Stop looping once no more flooding has occured ...
        IF(tot(iIter) == tot(iIter - 1_INT64))THEN
            EXIT
        END IF

        ! Cry ...
        IF(iIter == nIters)THEN
            WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) 'Failed to converge the flooding of the whole array'
            FLUSH(unit = ERROR_UNIT)
            STOP
        END IF
    END DO
END SUBROUTINE sub_flood_REAL32_real_array
