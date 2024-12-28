#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import standard modules ...
    import os

    # Make target folder ...
    if not os.path.exists("sub_save_array_as_PBM"):
        os.mkdir("sub_save_array_as_PBM")

    # Define types and kinds ...
    data = {
        "logical" : [  "INT8",  "INT16",   "INT32", "INT64"]
    }

    # Loop over types ...
    for typ in sorted(data.keys()):
        # Loop over kinds ...
        for knd in data[typ]:
            # Create source ...
            lhs = f"{typ.upper()}(kind = {knd}), DIMENSION(nx, ny), INTENT(in)"
            src = (
                f"!> @brief This subroutine saves a 2D {knd} {typ} array to a PBM file.\n"
                "!>\n"
                f"!> @param[in] arr The 2D {knd} {typ} array to be saved to a PBM file\n"
                "!>\n"
                "!> @param[in] fname The name of the PBM file\n"
                "!>\n"
                "!> @warning \"arr\" must have sizes less than or equal to 99999\n"
                "!>\n"
                "!> @warning the width of \"arr\" must be an integer multiple of 8\n"
                "!>\n"
                "\n"
                f"SUBROUTINE sub_save_2D_{knd}_{typ}_array_as_PBM(nx, ny, arr, fname)\n"
                "    ! Import standard modules ...\n"
                "    USE ISO_FORTRAN_ENV\n"
                "\n"
                "    IMPLICIT NONE\n"
                "\n"
                "    ! Declare inputs/outputs ...\n"
                "    CHARACTER(len = *), INTENT(in)                                              :: fname\n"
                "    INTEGER(kind = INT64), INTENT(in)                                           :: nx\n"
                "    INTEGER(kind = INT64), INTENT(in)                                           :: ny\n"
                f"    {lhs:76s}:: arr\n"
                "\n"
                "    ! Declare FORTRAN variables ...\n"
                "    CHARACTER(len = 256)                                                        :: errmsg\n"
                "    INTEGER(kind = INT32)                                                       :: errnum\n"
                "    INTEGER(kind = INT32)                                                       :: funit\n"
                "\n"
                "    ! Declare internal variables ...\n"
                "    CHARACTER(len = 15)                                                         :: hdr\n"
                "    INTEGER(kind = INT8), ALLOCATABLE, DIMENSION(:, :)                          :: img\n"
                "    INTEGER(kind = INT64)                                                       :: i\n"
                "    INTEGER(kind = INT64)                                                       :: ixArr\n"
                "    INTEGER(kind = INT64)                                                       :: ixImg\n"
                "    INTEGER(kind = INT64)                                                       :: iyArr\n"
                "    INTEGER(kind = INT64)                                                       :: iyImg\n"
                "    INTEGER(kind = INT64)                                                       :: nxImg\n"
                "    INTEGER(kind = INT64)                                                       :: nyImg\n"
                "\n"
                "    ! Check array size ...\n"
                "    IF(MOD(nx, 8_INT64) /= 0_INT64)THEN\n"
                "        WRITE(fmt = '(\"ERROR: \", a, \".\")', unit = ERROR_UNIT) \"The width of the input array must be an integer multiple of 8\"\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
                "\n"
                "    ! Find size of array ...\n"
                "    nxImg = nx / 8_INT64\n"
                "    nyImg = ny\n"
                "\n"
                "    ! Make header ...\n"
                "    WRITE(hdr, fmt = '(\"P4 \", i5, \" \", i5, \" \")') nx, ny\n"
                "\n"
                "    ! Allocate image ...\n"
                "    CALL sub_allocate_array(img, \"img\", nxImg, nyImg, .FALSE._INT8)\n"
                "\n"
                "    !$omp parallel                                                              &\n"
                "    !$omp default(none)                                                         &\n"
                "    !$omp private(i)                                                            &\n"
                "    !$omp private(ixArr)                                                        &\n"
                "    !$omp private(ixImg)                                                        &\n"
                "    !$omp private(iyArr)                                                        &\n"
                "    !$omp private(iyImg)                                                        &\n"
                "    !$omp shared(arr)                                                           &\n"
                "    !$omp shared(img)                                                           &\n"
                "    !$omp shared(nxImg)                                                         &\n"
                "    !$omp shared(nyImg)\n"
                "        !$omp do                                                                &\n"
                "        !$omp schedule(dynamic)\n"
                "            ! Loop over image x ...\n"
                "            DO ixImg = 1_INT64, nxImg\n"
                "                ! Loop over image y ...\n"
                "                DO iyImg = 1_INT64, nyImg\n"
                "                    ! Loop over bits ...\n"
                "                    DO i = 1_INT64, 8_INT64\n"
                "                        ! Determine array x and y ...\n"
                "                        ixArr = ixImg * 8_INT64 - (i - 1_INT64)\n"
                "                        iyArr = iyImg\n"
                "\n"
                "                        ! Check what needs doing ...\n"
                "                        IF(arr(ixArr, iyArr))THEN\n"
                "                            ! Set pixel ...\n"
                "                            img(ixImg, iyImg) = IBCLR(img(ixImg, iyImg), i - 1_INT64)\n"
                "                        ELSE\n"
                "                            ! Set pixel ...\n"
                "                            img(ixImg, iyImg) = IBSET(img(ixImg, iyImg), i - 1_INT64)\n"
                "                        END IF\n"
                "                    END DO\n"
                "                END DO\n"
                "            END DO\n"
                "        !$omp end do\n"
                "    !$omp end parallel\n"
                "\n"
                "    ! Open PBM ...\n"
                "    OPEN(                                                                       &\n"
                "         access = \"stream\",                                                     &\n"
                "         action = \"write\",                                                      &\n"
                "           file = TRIM(fname),                                                  &\n"
                "           form = \"unformatted\",                                                &\n"
                "          iomsg = errmsg,                                                       &\n"
                "         iostat = errnum,                                                       &\n"
                "        newunit = funit,                                                        &\n"
                "         status = \"replace\"                                                     &\n"
                "    )\n"
                "    IF(errnum /= 0_INT32)THEN\n"
                "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open PBM\", TRIM(errmsg), errnum\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
                "\n"
                "    ! Write out header and image ...\n"
                "    WRITE(unit = funit) hdr\n"
                "    WRITE(unit = funit) img\n"
                "\n"
                "    ! Close PBM ...\n"
                "    CLOSE(unit = funit)\n"
                "\n"
                "    ! Clean up ...\n"
                "    DEALLOCATE(img)\n"
                f"END SUBROUTINE sub_save_2D_{knd}_{typ}_array_as_PBM\n"
            )

            # Save source ...
            with open(f"sub_save_array_as_PBM/sub_save_2D_{knd}_{typ}_array_as_PBM.f90", "wt", encoding = "utf-8") as fObj:
                fObj.write(src)

    # Open output file ...
    with open("sub_save_array_as_PBM.tmp", "wt", encoding = "utf-8") as fObj:
        # Write out interfaces and includes ...
        fObj.write("INTERFACE sub_save_array_as_PBM\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                fObj.write(f"    MODULE PROCEDURE sub_save_2D_{knd}_{typ}_array_as_PBM\n")
        fObj.write("END INTERFACE sub_save_array_as_PBM\n")
        fObj.write("\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                fObj.write(f"INCLUDE \"mod_safe/sub_save_array_as_PBM/sub_save_2D_{knd}_{typ}_array_as_PBM.f90\"\n")
