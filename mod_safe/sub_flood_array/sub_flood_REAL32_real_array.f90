SUBROUTINE sub_flood_REAL32_real_array(nx, ny, elev, seaLevel, flooded, tileScale)
    ! Import modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    REAL(kind = REAL32), DIMENSION(nx, ny), INTENT(in)                          :: elev
    REAL(kind = REAL32), INTENT(in)                                             :: seaLevel
    LOGICAL(kind = INT8), DIMENSION(nx, ny), INTENT(inout)                      :: flooded
    INTEGER(kind = INT64), INTENT(in)                                           :: tileScale

    ! Declare parameters ...
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
    INTEGER(kind = INT64)                                                       :: newTot
    INTEGER(kind = INT64)                                                       :: newTotTile
    INTEGER(kind = INT64)                                                       :: oldTot
    INTEGER(kind = INT64)                                                       :: oldTotTile

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

    ! Start ~infinite loop ...
    DO iIter = 1_INT64, nIters
        ! Find initial total flooded area ...
        oldTot = COUNT(flooded, kind = INT64)

        ! Stop looping once no more flooding can occur ...
        IF(oldTot == 0_INT64 .OR. oldTot == nx * ny)THEN
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

        ! Check that the tiles are large enough to bother with ...
        IF(nx / tileScale >= 32_INT64 .AND. ny / tileScale >= 32_INT64)THEN
            !$omp parallel                                                      &
            !$omp default(none)                                                 &
            !$omp private(iTileIter)                                            &
            !$omp private(ix)                                                   &
            !$omp private(ixlo)                                                 &
            !$omp private(ixhi)                                                 &
            !$omp private(iy)                                                   &
            !$omp private(iylo)                                                 &
            !$omp private(iyhi)                                                 &
            !$omp private(oldTotTile)                                           &
            !$omp private(newTotTile)                                           &
            !$omp shared(elev)                                                  &
            !$omp shared(flooded)                                               &
            !$omp shared(nx)                                                    &
            !$omp shared(ny)                                                    &
            !$omp shared(seaLevel)                                              &
            !$omp shared(tileScale)
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

                            ! Start ~infinite loop ...
                            DO iTileIter = 1_INT64, nTileIters
                                ! Find initial total flooded area ...
                                oldTotTile = COUNT(flooded(ixlo:ixhi, iylo:iyhi), kind = INT64)

                                ! Stop looping once no more flooding can occur ...
                                IF(oldTotTile == 0_INT64 .OR. oldTotTile == tileScale ** 2)THEN
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
                                newTotTile = COUNT(flooded(ixlo:ixhi, iylo:iyhi), kind = INT64)

                                ! Stop looping once no more flooding has occured ...
                                IF(newTotTile == oldTotTile)THEN
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
            !$omp end parallel
        END IF

        ! Find new total flooded area ...
        newTot = COUNT(flooded, kind = INT64)

        ! Stop looping once no more flooding has occured ...
        IF(newTot == oldTot)THEN
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
