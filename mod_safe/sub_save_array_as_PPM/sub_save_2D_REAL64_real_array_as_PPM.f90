!> @brief This subroutine saves a 2D REAL64 real array to a PPM file.
!>
!> @param[in] arr The 2D REAL64 real array to be saved to a PPM file
!>
!> @param[in] fname The name of the PPM file
!>
!> @param[in] cm The name of the colour map to use
!>
!> @warning "arr" must have sizes less than or equal to 99999
!>
!> @warning values below 0 in "arr" will be clipped to 0
!>
!> @warning values above 1 in "arr" will be clipped to 1
!>

SUBROUTINE sub_save_2D_REAL64_real_array_as_PPM(nx, ny, arr, fname, cm)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    CHARACTER(len = *), INTENT(in)                                              :: cm
    CHARACTER(len = *), INTENT(in)                                              :: fname
    INTEGER(kind = INT64), INTENT(in)                                           :: nx
    INTEGER(kind = INT64), INTENT(in)                                           :: ny
    REAL(kind = REAL64), DIMENSION(nx, ny), INTENT(in)                          :: arr

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

    ! Check input ...
    IF(                                                                         &
              TRIM(cm) /= "viridis"                                           &
        .AND. TRIM(cm) /= "plasma"                                            &
        .AND. TRIM(cm) /= "inferno"                                           &
        .AND. TRIM(cm) /= "magma"                                             &
        .AND. TRIM(cm) /= "cividis"                                           &
        .AND. TRIM(cm) /= "coolwarm"                                          &
        .AND. TRIM(cm) /= "turbo"                                             &
        .AND. TRIM(cm) /= "g2b"                                               &
        .AND. TRIM(cm) /= "r2g"                                               &
        .AND. TRIM(cm) /= "r2o2g"                                             &
    )THEN
        WRITE(fmt = '("ERROR: ", a, ".")', unit = ERROR_UNIT) "Not a recognised colour map"
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Make header ...
    WRITE(hdr, fmt = '("P6 ", i5, " ", i5, " 255 ")') nx, ny

    ! Allocate image ...
    ! NOTE: There is no "sub_allocate_array()" for CHARACTER arrays.
    ALLOCATE(img(nx, ny))

    !$omp parallel                                                              &
    !$omp default(none)                                                         &
    !$omp private(ix)                                                           &
    !$omp private(iy)                                                           &
    !$omp private(lvl)                                                          &
    !$omp shared(arr)                                                           &
    !$omp shared(cm)                                                            &
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
                    lvl = MAX(0_INT64, MIN(255_INT64, NINT(255.0e0_REAL64 * arr(ix, iy), kind = INT64)))

                    ! Set pixel ...
                    IF(TRIM(cm) == "viridis")THEN
                        img(ix, iy) = const_cm_viridis(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "plasma")THEN
                        img(ix, iy) = const_cm_plasma(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "inferno")THEN
                        img(ix, iy) = const_cm_inferno(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "magma")THEN
                        img(ix, iy) = const_cm_magma(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "cividis")THEN
                        img(ix, iy) = const_cm_cividis(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "coolwarm")THEN
                        img(ix, iy) = const_cm_coolwarm(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "turbo")THEN
                        img(ix, iy) = const_cm_turbo(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "g2b")THEN
                        img(ix, iy) = const_cm_g2b(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "r2g")THEN
                        img(ix, iy) = const_cm_r2g(lvl + 1_INT64)
                    ELSE IF(TRIM(cm) == "r2o2g")THEN
                        img(ix, iy) = const_cm_r2o2g(lvl + 1_INT64)
                    END IF
                END DO
            END DO
        !$omp end do
    !$omp end parallel

    ! Open PPM ...
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
