SUBROUTINE sub_save_POLYGON_as_GEOJSON(polygon, fname)
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    IMPLICIT NONE

    ! Declare inputs/outputs ...
    TYPE(aPolygon), INTENT(in)                                                  :: polygon
    CHARACTER(len = *), INTENT(in)                                              :: fname

    ! Declare internal variables ...
    INTEGER(kind = INT32)                                                       :: iinteriors
    INTEGER(kind = INT32)                                                       :: ipoints

    ! Declare FORTRAN variables ...
    CHARACTER(len = 256)                                                        :: errmsg
    INTEGER(kind = INT32)                                                       :: errnum
    INTEGER(kind = INT32)                                                       :: funit

    ! Open GEOJSON ...
    OPEN(                                                                       &
         action = "write",                                                      &
           file = TRIM(fname),                                                  &
           form = "formatted",                                                  &
          iomsg = errmsg,                                                       &
         iostat = errnum,                                                       &
        newunit = funit,                                                        &
         status = "replace"                                                     &
    )
    IF(errnum /= 0_INT32)THEN
        WRITE(fmt = '("ERROR: ", a, ". ERRMSG = ", a, ". ERRNUM = ", i3, ".")', unit = ERROR_UNIT) "Failed to open GEOJSON", TRIM(errmsg), errnum
        FLUSH(unit = ERROR_UNIT)
        STOP
    END IF

    ! Write out header ...
    WRITE(fmt = '(a)', unit = funit) "{"
    WRITE(fmt = '(a)', unit = funit) "    ""type"" : ""Polygon"","
    WRITE(fmt = '(a)', unit = funit) "    ""coordinates"" : ["

    ! Write out exterior ring ...
    WRITE(fmt = '(a)', unit = funit) "        ["
    DO ipoints = 1_INT32, polygon%exterior%npoints - 1_INT32
        WRITE(fmt = '("            [", f14.9, ", ", f13.9, "],")', unit = funit) polygon%exterior%x(ipoints), polygon%exterior%y(ipoints)
    END DO
    WRITE(fmt = '("            [", f14.9, ", ", f13.9, "]")', unit = funit) polygon%exterior%x(polygon%exterior%npoints), polygon%exterior%y(polygon%exterior%npoints)
    IF(polygon%ninteriors == 0_INT32)THEN
        WRITE(fmt = '(a)', unit = funit) "        ]"
    ELSE
        WRITE(fmt = '(a)', unit = funit) "        ],"
    END IF

    ! Write out all but the last interior ring ...
    IF(polygon%ninteriors > 1_INT32)THEN
        DO iinteriors = 1_INT32, polygon%ninteriors - 1_INT32
            WRITE(fmt = '(a)', unit = funit) "        ["
            DO ipoints = 1_INT32, polygon%interiors(iinteriors)%npoints - 1_INT32
                WRITE(fmt = '("            [", f14.9, ", ", f13.9, "],")', unit = funit) polygon%interiors(iinteriors)%x(ipoints), polygon%interiors(iinteriors)%y(ipoints)
            END DO
            WRITE(fmt = '("            [", f14.9, ", ", f13.9, "]")', unit = funit) polygon%interiors(iinteriors)%x(polygon%interiors(iinteriors)%npoints), polygon%interiors(iinteriors)%y(polygon%interiors(iinteriors)%npoints)
            WRITE(fmt = '(a)', unit = funit) "        ],"
        END DO
    END IF

    ! Write out the last interior ring ...
    IF(polygon%ninteriors > 0_INT32)THEN
        WRITE(fmt = '(a)', unit = funit) "        ["
        DO ipoints = 1_INT32, polygon%interiors(polygon%ninteriors)%npoints - 1_INT32
            WRITE(fmt = '("            [", f14.9, ", ", f13.9, "],")', unit = funit) polygon%interiors(polygon%ninteriors)%x(ipoints), polygon%interiors(polygon%ninteriors)%y(ipoints)
        END DO
        WRITE(fmt = '("            [", f14.9, ", ", f13.9, "]")', unit = funit) polygon%interiors(polygon%ninteriors)%x(polygon%interiors(polygon%ninteriors)%npoints), polygon%interiors(polygon%ninteriors)%y(polygon%interiors(polygon%ninteriors)%npoints)
        WRITE(fmt = '(a)', unit = funit) "        ]"
    END IF

    ! Write out footer ...
    WRITE(fmt = '(a)', unit = funit) "    ]"
    WRITE(fmt = '(a)', unit = funit) "}"

    ! Close GEOJSON ...
    CLOSE(unit = funit)
END SUBROUTINE sub_save_POLYGON_as_GEOJSON
