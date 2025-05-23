#!/usr/bin/env python3

# Use the proper idiom in the main module ...
# NOTE: See https://docs.python.org/3.12/library/multiprocessing.html#the-spawn-and-forkserver-start-methods
if __name__ == "__main__":
    # Import standard modules ...
    import os

    # Make target folder ...
    if not os.path.exists("sub_save_array_as_PGM"):
        os.mkdir("sub_save_array_as_PGM")

    # Define types and kinds ...
    data = {
        "integer" : [  "INT8",  "INT16",   "INT32", "INT64"],
           "real" : ["REAL32", "REAL64", "REAL128"         ]
    }

    # Loop over types ...
    for typ in sorted(data.keys()):
        # Create assignment ...
        match typ:
            case "integer":
                lim = 255
            case "real":
                lim = 1
            case _:
                # Crash ...
                raise ValueError(f"\"typ\" is an unexpected value ({repr(typ)})") from None

        # Loop over kinds ...
        for knd in data[typ]:
            # Create assignment ...
            match typ:
                case "integer":
                    if knd == "INT64":
                        ass = "MAX(0_INT64, MIN(255_INT64, arr(ix, iy)))"
                    else:
                        ass = "MAX(0_INT64, MIN(255_INT64, INT(arr(ix, iy), kind = INT64)))"
                case "real":
                    ass = f"MAX(0_INT64, MIN(255_INT64, NINT(255.0e0_{knd} * arr(ix, iy), kind = INT64)))"
                case _:
                    # Crash ...
                    raise ValueError(f"\"typ\" is an unexpected value ({repr(typ)})") from None

            # Create source ...
            lhs = f"{typ.upper()}(kind = {knd}), DIMENSION(nx, ny), INTENT(in)"
            src = (
                f"!> @brief This subroutine saves a 2D {knd} {typ} array to a PGM file.\n"
                "!>\n"
                f"!> @param[in] arr The 2D {knd} {typ} array to be saved to a PGM file\n"
                "!>\n"
                "!> @param[in] fname The name of the PGM file\n"
                "!>\n"
                "!> @warning \"arr\" must have sizes less than or equal to 99999\n"
                "!>\n"
                "!> @warning values below 0 in \"arr\" will be clipped to 0\n"
                "!>\n"
                f"!> @warning values above {lim:d} in \"arr\" will be clipped to {lim:d}\n"
                "!>\n"
                "\n"
                f"SUBROUTINE sub_save_2D_{knd}_{typ}_array_as_PGM(nx, ny, arr, fname)\n"
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
                "    CHARACTER(len = 1), ALLOCATABLE, DIMENSION(:, :)                            :: img\n"
                "    CHARACTER(len = 19)                                                         :: hdr\n"
                "    INTEGER(kind = INT64)                                                       :: ix\n"
                "    INTEGER(kind = INT64)                                                       :: iy\n"
                "    INTEGER(kind = INT64)                                                       :: lvl\n"
                "\n"
                "    ! Make header ...\n"
                "    WRITE(hdr, fmt = '(\"P5 \", i5, \" \", i5, \" 255 \")') nx, ny\n"
                "\n"
                "    ! Allocate image ...\n"
                "    ! NOTE: There is no \"sub_allocate_array()\" for CHARACTER arrays.\n"
                "    ALLOCATE(img(nx, ny))\n"
                "\n"
                "    !$omp parallel                                                              &\n"
                "    !$omp default(none)                                                         &\n"
                "    !$omp private(ix)                                                           &\n"
                "    !$omp private(iy)                                                           &\n"
                "    !$omp private(lvl)                                                          &\n"
                "    !$omp shared(arr)                                                           &\n"
                "    !$omp shared(img)                                                           &\n"
                "    !$omp shared(nx)                                                            &\n"
                "    !$omp shared(ny)\n"
                "        !$omp do                                                                &\n"
                "        !$omp schedule(dynamic)\n"
                "            ! Loop over x ...\n"
                "            DO ix = 1_INT64, nx\n"
                "                ! Loop over y ...\n"
                "                DO iy = 1_INT64, ny\n"
                "                    ! Determine level ...\n"
                f"                    lvl = {ass}\n"
                "\n"
                "                    ! Set pixel ...\n"
                "                    img(ix, iy) = ACHAR(lvl)\n"
                "                END DO\n"
                "            END DO\n"
                "        !$omp end do\n"
                "    !$omp end parallel\n"
                "\n"
                "    ! Open PGM ...\n"
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
                "        WRITE(fmt = '(\"ERROR: \", a, \". ERRMSG = \", a, \". ERRNUM = \", i3, \".\")', unit = ERROR_UNIT) \"Failed to open PGM\", TRIM(errmsg), errnum\n"
                "        FLUSH(unit = ERROR_UNIT)\n"
                "        STOP\n"
                "    END IF\n"
                "\n"
                "    ! Write out header and image ...\n"
                "    WRITE(unit = funit) hdr\n"
                "    WRITE(unit = funit) img\n"
                "\n"
                "    ! Close PGM ...\n"
                "    CLOSE(unit = funit)\n"
                "\n"
                "    ! Clean up ...\n"
                "    DEALLOCATE(img)\n"
                f"END SUBROUTINE sub_save_2D_{knd}_{typ}_array_as_PGM\n"
            )

            # Save source ...
            with open(f"sub_save_array_as_PGM/sub_save_2D_{knd}_{typ}_array_as_PGM.f90", "wt", encoding = "utf-8") as fObj:
                fObj.write(src)

    # Open output file ...
    with open("sub_save_array_as_PGM.tmp", "wt", encoding = "utf-8") as fObj:
        # Write out interfaces and includes ...
        fObj.write("INTERFACE sub_save_array_as_PGM\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                fObj.write(f"    MODULE PROCEDURE sub_save_2D_{knd}_{typ}_array_as_PGM\n")
        fObj.write("END INTERFACE sub_save_array_as_PGM\n")
        fObj.write("\n")
        for typ in sorted(data.keys()):
            for knd in data[typ]:
                fObj.write(f"INCLUDE \"mod_safe/sub_save_array_as_PGM/sub_save_2D_{knd}_{typ}_array_as_PGM.f90\"\n")
