!> @brief This subroutine saves a 2D INT8 logical array to a PBM file.
!>
!> @param[in] arr The 2D INT8 logical array to be saved to a PBM file
!>
!> @param[in] fname The name of the PBM file
!>
!> @warning "arr" must have sizes less than or equal to 99999
!>
!> @warning the width of "arr" must be an integer multiple of 8
!>

SUBROUTINE sub_save_2D_INT8_logical_array_as_PBM(nx, ny, arr, fname)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: fname
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    LOGICAL(kind = INT8), DIMENSION(nx, ny), INTENT(in)                         :: arr

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Declare internal variables ...
    CHARACTER(len = 15)                                                         :: hdr
    INTEGER(kind = INT8), ALLOCATABLE, DIMENSION(:, :)                          :: img
    INTEGER(kind = INT64)                                                       :: i
    INTEGER(kind = INT64)                                                       :: ixArr
    INTEGER(kind = INT64)                                                       :: ixImg
    INTEGER(kind = INT64)                                                       :: iyArr
    INTEGER(kind = INT64)                                                       :: iyImg
    INTEGER(kind = INT64)                                                       :: nxImg
    INTEGER(kind = INT64)                                                       :: nyImg

    ! Check array size ...
    IF(MOD(nx, 8_INT64) /= 0_INT64)THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) "The width of the input array must be an integer multiple of 8"
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Find size of array ...
    nxImg = nx / 8_INT64
    nyImg = ny

    ! Make header ...
    WRITE(hdr, fmt = '("P4 ", i5, " ", i5, " ")') nx, ny

    ! Allocate image ...
    CALL sub_allocate_array(img, "img", nxImg, nyImg, .FALSE._INT8)

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(i)                                                            &
    !$omp private(ixArr)                                                        &
    !$omp private(ixImg)                                                        &
    !$omp private(iyArr)                                                        &
    !$omp private(iyImg)                                                        &
    !$omp shared(arr)                                                           &
    !$omp shared(img)                                                           &
    !$omp shared(nxImg)                                                         &
    !$omp shared(nyImg)
        !$omp do                                                                &
        !$omp schedule(dynamic)
            ! Loop over image x ...
            DO ixImg = 1_INT64, nxImg
                ! Loop over image y ...
                DO iyImg = 1_INT64, nyImg
                    ! Loop over bits ...
                    DO i = 1_INT64, 8_INT64
                        ! Determine array x and y ...
                        ixArr = ixImg * 8_INT64 - (i - 1_INT64)
                        iyArr = iyImg

                        ! Check what needs doing ...
                        IF(arr(ixArr, iyArr))THEN
                            ! Set pixel ...
                            img(ixImg, iyImg) = IBCLR(img(ixImg, iyImg), i - 1_INT64)
                        ELSE
                            ! Set pixel ...
                            img(ixImg, iyImg) = IBSET(img(ixImg, iyImg), i - 1_INT64)
                        END IF
                    END DO
                END DO
            END DO
        !$omp end do
    !$omp end parallel

    ! Open PBM ...
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
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open PBM", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Write out header and image ...
    WRITE(unit = funit) hdr
    WRITE(unit = funit) img

    ! Close PBM ...
    CLOSE(unit = funit)

    ! Clean up ...
    DEALLOCATE(img)
END SUBROUTINE sub_save_2D_INT8_logical_array_as_PBM
