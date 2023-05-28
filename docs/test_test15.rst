:f:prog:`test15`'s documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:f:prog:`test15` is compiled by :download:`Makefile <../tests/Makefile>` and it can be run using :download:`run.sh <../tests/run.sh>`. The program uses :f:func:`mod_safe/func_hypergeometric`, :f:func:`mod_safe/func_mean`, :f:func:`mod_safe/func_rising_factorial`, :f:func:`mod_safe/func_stddev`, :f:func:`mod_safe/func_stderr`, :f:func:`mod_safe/func_t_CDF`, :f:func:`mod_safe/func_t_PDF`, :f:func:`mod_safe/func_var` and :f:subr:`mod_safe/sub_ttest_ind`. The correct output should be similar to (give or take random number generators)::

    How does Python compare to FORTRAN? (func_rising_factorial)
         Python =    1.000000000;  120.000000000;   20.529581934
        FORTRAN =    1.000000000;  120.000000000;   20.529581934
    How does Python compare to FORTRAN? (func_hypergeometric)
         Python =    1.386294361;    1.098612289;    0.927295218;    0.577350269
        FORTRAN =    1.386294361;    1.098612289;    0.927295218;    0.000000000
    How does Python compare to FORTRAN? (func_t_PDF)
         Python =    0.353553391;    0.068041382;    0.068041382;    0.001757438
        FORTRAN =    0.353553391;    0.068041382;    0.068041382;    0.001757438
    How does Python compare to FORTRAN? (func_t_CDF)
         Python =    0.500000000;    0.091751710;    0.908248290;    0.997947642
        FORTRAN =    0.500000000;    0.500000000;    0.500000000;    0.500000000
    mean = 30.02, var = 0.002, std-dev = 0.045, std-err = 0.020
    mean = 29.92, var = 0.010, std-dev = 0.098, std-err = 0.044
    TRUE : t = 1.959, p = 0.07857
    FALSE: t = 1.959, p = 0.09077

.. f:autoprogram:: test15
