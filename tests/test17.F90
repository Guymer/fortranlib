PROGRAM test17
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe,           ONLY:   sub_allocate_array,                         &
                                    sub_flood_array,                            &
                                    sub_load_array_from_BIN,                    &
                                    sub_save_array_as_PBM,                      &
                                    sub_save_array_as_PPM

    IMPLICIT NONE

    ! Declare parameters ...
    INTEGER(kind = INT64), PARAMETER                                            :: nx = 176_INT64
    INTEGER(kind = INT64), PARAMETER                                            :: ny = 328_INT64

    ! Declare variables ...
    LOGICAL(kind = INT8), ALLOCATABLE, DIMENSION(:, :)                          :: flooded
    INTEGER(kind = INT64), ALLOCATABLE, DIMENSION(:)                            :: tot
    REAL(kind = REAL32), ALLOCATABLE, DIMENSION(:, :)                           :: elev

    ! **************************************************************************

    ! Allocate (225.50 KiB) array and populate it ...
    CALL sub_allocate_array(                                                    &
          arr = elev,                                                           &
         name = "elev",                                                         &
           n1 = nx,                                                             &
           n2 = ny,                                                             &
        debug = .FALSE._INT8                                                    &
    )
    CALL sub_load_array_from_BIN(                                               &
          arr = elev,                                                           &
        fname = "test17_elev.bin"                                               &
    )                                                                           ! [m]

    ! Save scaled elevation map ...
    CALL sub_save_array_as_PPM(                                                 &
           nx = nx,                                                             &
           ny = ny,                                                             &
          arr = elev / 1000.0e0_REAL32,                                         &
        fname = "test17_elev.ppm",                                              &
           cm = "jet"                                                           &
    )

    ! Allocate (56.38 KiB) array and initialize it so that nowhere is flooded
    ! apart from the top-left corner ...
    CALL sub_allocate_array(                                                    &
          arr = flooded,                                                        &
         name = "flooded",                                                      &
           n1 = nx,                                                             &
           n2 = ny,                                                             &
        debug = .FALSE._INT8                                                    &
    )
    flooded = .FALSE._INT8
    flooded(1, 1) = .TRUE._INT8

    ! Raise the sea level to 500 metres ...
    CALL sub_flood_array(                                                       &
               nx = nx,                                                         &
               ny = ny,                                                         &
             elev = elev,                                                       &
         seaLevel = 500.0e0_REAL32,                                             &
          flooded = flooded,                                                    &
        tileScale = 1_INT64,                                                    &
              tot = tot                                                         &
    )

    ! Save flooded map ...
    CALL sub_save_array_as_PBM(                                                 &
           nx = nx,                                                             &
           ny = ny,                                                             &
          arr = flooded,                                                        &
        fname = "test17_flooded.pbm"                                            &
    )

    ! Clean up ...
    DEALLOCATE(elev)
    DEALLOCATE(flooded)
    DEALLOCATE(tot)
END PROGRAM test17
