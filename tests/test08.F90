PROGRAM test08
    ! Import standard modules ...
    USE ISO_FORTRAN_ENV

    ! Import my modules ...
    USE mod_safe, ONLY: func_integrate_array, sub_allocate_array

    IMPLICIT NONE

    ! Declare variables ...
    REAL(kind = REAL64)                                                         :: eps
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: x
    REAL(kind = REAL64), ALLOCATABLE, DIMENSION(:)                              :: y

    ! Allocate arrays, populate with values, integrate, print summary and clean
    ! up ...
    CALL sub_allocate_array(x, "x", 2_INT64, .FALSE._INT8)
    CALL sub_allocate_array(y, "y", 2_INT64, .FALSE._INT8)
    x(1) = 1.0e0_REAL64
    x(2) = 2.0e0_REAL64
    y(1) = 1.0e0_REAL64
    y(2) = 1.0e0_REAL64
    eps = ABS(1.0e0_REAL64 - func_integrate_array(x, y) / 1.0e0_REAL64)
    WRITE(fmt = '("Does the task think that everything worked? ", l1)', unit = OUTPUT_UNIT) eps <= EPSILON(eps)
    FLUSH(unit = OUTPUT_UNIT)
    DEALLOCATE(x)
    DEALLOCATE(y)

    ! Allocate arrays, populate with values, integrate, print summary and clean
    ! up ...
    CALL sub_allocate_array(x, "x", 3_INT64, .FALSE._INT8)
    CALL sub_allocate_array(y, "y", 3_INT64, .FALSE._INT8)
    x(1) = 1.0e0_REAL64
    x(2) = 2.0e0_REAL64
    x(3) = 4.0e0_REAL64
    y(1) = 1.0e0_REAL64
    y(2) = 1.0e0_REAL64
    y(3) = 3.0e0_REAL64
    eps = ABS(1.0e0_REAL64 - func_integrate_array(x, y) / 5.0e0_REAL64)
    WRITE(fmt = '("Does the task think that everything worked? ", l1)', unit = OUTPUT_UNIT) eps <= EPSILON(eps)
    FLUSH(unit = OUTPUT_UNIT)
    DEALLOCATE(x)
    DEALLOCATE(y)
END PROGRAM test08
