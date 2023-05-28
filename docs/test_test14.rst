:f:prog:`test14`'s documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:f:prog:`test14` is compiled by :download:`Makefile <../tests/Makefile>` and it can be run using :download:`run.sh <../tests/run.sh>`. The program uses both :f:subr:`mod_safe/sub_calc_dist_between_two_locs` and :f:subr:`mod_safe/sub_calc_loc_from_loc_and_bearing_and_dist`. The correct output should be::

    How does Python compare to FORTRAN?
         Python = 1012752.116366;   60.395696592;  112.226826865
        FORTRAN = 1012752.116366;   60.395696592;  112.226826865
    How does Python compare to FORTRAN?
         Python = 4049560.052854;   79.970591506;   92.063885186
        FORTRAN = 4049560.052854;   79.970591506;   92.063885186
    How does Python compare to FORTRAN?
         Python =   30.820072345;   44.013665464;   67.257390656
        FORTRAN =   30.820072345;   44.013665464;   67.257390656
    How does Python compare to FORTRAN?
         Python = -153.457744125;   13.966090288;   87.849219513
        FORTRAN = -153.457744125;   13.966090288;   87.849219513

.. f:autoprogram:: test14
