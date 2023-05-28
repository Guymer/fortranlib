:f:prog:`test01`'s documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:f:prog:`test01` is compiled by :download:`Makefile <../tests/Makefile>` and it can be run using :download:`run.sh <../tests/run.sh>`. Each MPI task will use ~2.3 GiB of RAM. The program uses :f:subr:`mod_safe/sub_allocate_array` and :f:subr:`mod_safe_mpi/sub_bcast_array`. The correct output should be::

    Does MPI task 0 of 2 think that everything worked? T
    Does MPI task 1 of 2 think that everything worked? T

Of course, the ordering of those two lines cannot be relied upon.

.. f:autoprogram:: test01
