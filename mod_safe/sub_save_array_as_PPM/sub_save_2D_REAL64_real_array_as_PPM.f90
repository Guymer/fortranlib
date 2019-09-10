!> @brief This subroutine saves a 2D REAL64 real array to a PPM file.
!>
!> @param[in] arr The 2D REAL64 real array to be saved to a PPM file
!>
!> @param[in] fname The name of the PPM file
!>
!> @warning "array" must have sizes less than or equal to 99999
!>
!> @warning values below 0 in "array" will be clipped to 0
!>
!> @warning values above 1 in "array" will be clipped to 1
!>

SUBROUTINE sub_save_2D_REAL64_real_array_as_PPM(arr, fname, cm)
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: cm
    CHARACTER(len = *), INTENT(in)                                              :: fname
    REAL(kind = REAL64), DIMENSION(:, :), INTENT(in)                            :: arr

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Declare internal variables ...
    CHARACTER(len = 3), ALLOCATABLE, DIMENSION(:, :)                            :: img
    CHARACTER(len = 19)                                                         :: hdr
    INTEGER(kind = INT64)                                                       :: ix
    INTEGER(kind = INT64)                                                       :: iy
    INTEGER(kind = INT64)                                                       :: lvl
    INTEGER(kind = INT64)                                                       :: nx
    INTEGER(kind = INT64)                                                       :: ny

    ! Check input ...
    IF(TRIM(cm) /= "fire" .AND. TRIM(cm) /= "jet")THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) "Not a recognised colour map"
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Find size of image ...
    nx = SIZE(arr, dim = 1, kind = INT64)
    ny = SIZE(arr, dim = 2, kind = INT64)

    ! Make header ...
    WRITE(hdr, fmt = '("P6 ", i5, " ", i5, " 255 ")') nx, ny

    ! Allocate image ...
    ALLOCATE(img(nx, ny))

    ! Loop over x ...
    DO ix = 1_INT64, nx
        ! Loop over y ...
        DO iy = 1_INT64, ny
            ! Determine level ...
            lvl = MAX(0_INT64, MIN(255_INT64, NINT(255.0e0_REAL64 * arr(ix, iy), kind = INT64)))

            ! Set pixel ...
            IF(TRIM(cm) == "fire")THEN
                img(ix, iy) = const_cm_fire(lvl + 1_INT64)
            ELSE IF(TRIM(cm) == "jet")THEN
                img(ix, iy) = const_cm_jet(lvl + 1_INT64)
            END IF
        END DO
    END DO

    ! Open PPM ...
    OPEN(access = "stream", action = "write", file = TRIM(fname), form = "unformatted", iomsg = errmsg, iostat = errnum, newunit = funit, status = "replace")
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open PPM", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Write out header and image ...
    WRITE(unit = funit) hdr
    WRITE(unit = funit) img

    ! Close PPM ...
    CLOSE(unit = funit)

    ! Clean up ...
    DEALLOCATE(img)
END SUBROUTINE sub_save_2D_REAL64_real_array_as_PPM
