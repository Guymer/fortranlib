!> @brief This subroutine saves a 2D INT32 integer array to a PGM file.
!>
!> @param[in] arr The 2D INT32 integer array to be saved to a PGM file
!>
!> @param[in] fname The name of the PGM file
!>
!> @warning "arr" must have sizes less than or equal to 99999
!>
!> @warning values below 0 in "arr" will be clipped to 0
!>
!> @warning values above 255 in "arr" will be clipped to 255
!>

SUBROUTINE sub_save_2D_INT32_integer_array_as_PGM(nx, ny, arr, fname)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: fname
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    INTEGER(kind = INT32), DIMENSION(nx, ny), INTENT(in)                        :: arr

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Declare internal variables ...
    CHARACTER(len = 1), ALLOCATABLE, DIMENSION(:, :)                            :: img
    CHARACTER(len = 19)                                                         :: hdr
    INTEGER(kind = INT64)                                                       :: ix
    INTEGER(kind = INT64)                                                       :: iy
    INTEGER(kind = INT64)                                                       :: lvl

    ! Make header ...
    WRITE(hdr, fmt = '("P5 ", i5, " ", i5, " 255 ")') nx, ny

    ! Allocate image ...
    ! NOTE: There is no "sub_allocate_array()" for CHARACTER arrays.
    ALLOCATE(img(nx, ny))

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(ix)                                                           &
    !$omp private(iy)                                                           &
    !$omp private(lvl)                                                          &
    !$omp shared(arr)                                                           &
    !$omp shared(img)                                                           &
    !$omp shared(nx)                                                            &
    !$omp shared(ny)
        !$omp do                                                                &
        !$omp schedule(dynamic)
            ! Loop over x ...
            DO ix = 1_INT64, nx
                ! Loop over y ...
                DO iy = 1_INT64, ny
                    ! Determine level ...
                    lvl = MAX(0_INT64, MIN(255_INT64, INT(arr(ix, iy), kind = INT64)))

                    ! Set pixel ...
                    img(ix, iy) = ACHAR(lvl)
                END DO
            END DO
        !$omp end do
    !$omp end parallel

    ! Open PGM ...
    OPEN(                                                                       &
         access = "stream",                                                     &
         action = "write",                                                      &
           file = TRIM(fname),                                                  &
           form = "unformatted",                                                &
          iomsg = errmsg,                                                       &
         iostat = errnum,                                                       &
        newunit = funit,                                                        &
         status = "replace"                                                     &
    )
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open PGM", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Write out header and image ...
    WRITE(unit = funit) hdr
    WRITE(unit = funit) img

    ! Close PGM ...
    CLOSE(unit = funit)

    ! Clean up ...
    DEALLOCATE(img)
END SUBROUTINE sub_save_2D_INT32_integer_array_as_PGM
