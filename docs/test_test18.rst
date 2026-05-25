:f:prog:`test18`'s documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:f:prog:`test18` is compiled by :download:`Makefile <../tests/Makefile>` and it can be run using :download:`run.sh <../tests/run.sh>`. The program uses :f:subr:`mod_safe/sub_allocate_array`, :f:subr:`mod_safe/sub_find_middle_of_locs_euclideanBox`, :f:subr:`mod_safe/sub_find_middle_of_locs_geodesicBox`, :f:subr:`mod_safe/sub_find_middle_of_locs_euclideanCircle` and :f:subr:`mod_safe/sub_find_middle_of_locs_geodesicCircle`. The correct output should be:

    The (EuclideanBox) middle is ( 159.080000°, -31.130000°) and the maximum Euclidean distance is  19.498251°.
    The (GeodesicBox) middle is ( 159.080000°, -31.145522°) and the maximum Geodesic distance is   2076.577 km.
    The (EuclideanCircle) middle is ( 159.245951°, -30.233941°) and the maximum Euclidean distance is  18.971945°.
    The (GeodesicCircle) middle is ( 157.345440°, -30.948794°) and the maximum Geodesic distance is   1950.151 km.

.. f:autoprogram:: test18
