PURE SUBROUTINE sub_flood_REAL32_real_array_iter(nx, ny, elev, seaLevel, flooded, ixlo, ixhi, iylo, iyhi)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    REAL(kind = REAL32), DIMENSION(nx, ny), INTENT(in)                          :: elev
    REAL(kind = REAL32), INTENT(in)                                             :: seaLevel
    LOGICAL(kind = INT8), DIMENSION(nx, ny), INTENT(inout)                      :: flooded
    INTEGER(kind = INT64), INTENT(in)                                           :: ixlo
    INTEGER(kind = INT64), INTENT(in)                                           :: ixhi
    INTEGER(kind = INT64), INTENT(in)                                           :: iylo
    INTEGER(kind = INT64), INTENT(in)                                           :: iyhi

    ! Declare variables ...
    INTEGER(kind = INT64)                                                       :: ix
    INTEGER(kind = INT64)                                                       :: ix1
    INTEGER(kind = INT64)                                                       :: ix2
    INTEGER(kind = INT64)                                                       :: iy
    INTEGER(kind = INT64)                                                       :: iy1
    INTEGER(kind = INT64)                                                       :: iy2

    ! NOTE: The arrays go:
    !       ( 1, 1) ... (nx, 1)
    !         ...         ...
    !       ( 1,ny) ... (nx,ny)

    ! **************************************************************************
    ! NOTE: Start top-left and go down then right.
    ! **************************************************************************

    ! Loop over x-axis ...
    DO ix = ixlo, ixhi, 1_INT64
        ! Find the limits of the border around this pixel ...
        ix1 = MAX(ix - 1_INT64, ixlo)
        ix2 = MIN(ix + 1_INT64, ixhi)

        ! Loop over y-axis ...
        DO iy = iylo, iyhi, 1_INT64
            ! Find the limits of the border around this pixel ...
            iy1 = MAX(iy - 1_INT64, iylo)
            iy2 = MIN(iy + 1_INT64, iyhi)

            ! Check that this pixel has not already been flooded ...
            IF(.NOT. flooded(ix, iy))THEN
                ! Check that this pixel is <= sea level ...
                IF(elev(ix, iy) <= seaLevel)THEN
                    ! Check that this pixel is next to a flooded pixel ...
                    IF(ANY(flooded(ix1:ix2, iy1:iy2)))THEN
                        ! Flood this pixel ...
                        ! NOTE: Within flooded:
                        !         * .FALSE. = not flooded
                        !         * .TRUE.  = flooded
                        flooded(ix, iy) = .TRUE._INT8
                    END IF
                END IF
            END IF
        END DO
    END DO

    ! **************************************************************************
    ! NOTE: Start top-right and go left then down.
    ! **************************************************************************

    ! Loop over y-axis ...
    DO iy = iylo, iyhi, 1_INT64
        ! Find the limits of the border around this pixel ...
        iy1 = MAX(iy - 1_INT64, iylo)
        iy2 = MIN(iy + 1_INT64, iyhi)

        ! Loop over x-axis ...
        DO ix = ixhi, ixlo, -1_INT64
            ! Find the limits of the border around this pixel ...
            ix1 = MAX(ix - 1_INT64, ixlo)
            ix2 = MIN(ix + 1_INT64, ixhi)

            ! Check that this pixel has not already been flooded ...
            IF(.NOT. flooded(ix, iy))THEN
                ! Check that this pixel is <= sea level ...
                IF(elev(ix, iy) <= seaLevel)THEN
                    ! Check that this pixel is next to a flooded pixel ...
                    IF(ANY(flooded(ix1:ix2, iy1:iy2)))THEN
                        ! Flood this pixel ...
                        ! NOTE: Within flooded:
                        !         * .FALSE. = not flooded
                        !         * .TRUE.  = flooded
                        flooded(ix, iy) = .TRUE._INT8
                    END IF
                END IF
            END IF
        END DO
    END DO

    ! **************************************************************************
    ! NOTE: Start bottom-right and go up then left.
    ! **************************************************************************

    ! Loop over x-axis ...
    DO ix = ixhi, ixlo, -1_INT64
        ! Find the limits of the border around this pixel ...
        ix1 = MAX(ix - 1_INT64, ixlo)
        ix2 = MIN(ix + 1_INT64, ixhi)

        ! Loop over y-axis ...
        DO iy = iyhi, iylo, -1_INT64
            ! Find the limits of the border around this pixel ...
            iy1 = MAX(iy - 1_INT64, iylo)
            iy2 = MIN(iy + 1_INT64, iyhi)

            ! Check that this pixel has not already been flooded ...
            IF(.NOT. flooded(ix, iy))THEN
                ! Check that this pixel is <= sea level ...
                IF(elev(ix, iy) <= seaLevel)THEN
                    ! Check that this pixel is next to a flooded pixel ...
                    IF(ANY(flooded(ix1:ix2, iy1:iy2)))THEN
                        ! Flood this pixel ...
                        ! NOTE: Within flooded:
                        !         * .FALSE. = not flooded
                        !         * .TRUE.  = flooded
                        flooded(ix, iy) = .TRUE._INT8
                    END IF
                END IF
            END IF
        END DO
    END DO

    ! **************************************************************************
    ! NOTE: Start bottom-left and go right then up.
    ! **************************************************************************

    ! Loop over y-axis ...
    DO iy = iyhi, iylo, -1_INT64
        ! Find the limits of the border around this pixel ...
        iy1 = MAX(iy - 1_INT64, iylo)
        iy2 = MIN(iy + 1_INT64, iyhi)

        ! Loop over x-axis ...
        DO ix = ixlo, ixhi, 1_INT64
            ! Find the limits of the border around this pixel ...
            ix1 = MAX(ix - 1_INT64, ixlo)
            ix2 = MIN(ix + 1_INT64, ixhi)

            ! Check that this pixel has not already been flooded ...
            IF(.NOT. flooded(ix, iy))THEN
                ! Check that this pixel is <= sea level ...
                IF(elev(ix, iy) <= seaLevel)THEN
                    ! Check that this pixel is next to a flooded pixel ...
                    IF(ANY(flooded(ix1:ix2, iy1:iy2)))THEN
                        ! Flood this pixel ...
                        ! NOTE: Within flooded:
                        !         * .FALSE. = not flooded
                        !         * .TRUE.  = flooded
                        flooded(ix, iy) = .TRUE._INT8
                    END IF
                END IF
            END IF
        END DO
    END DO
END SUBROUTINE sub_flood_REAL32_real_array_iter
