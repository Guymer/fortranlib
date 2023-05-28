:f:prog:`test02`'s documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:f:prog:`test02` is compiled by :download:`Makefile <../tests/Makefile>` and it can be run using :download:`run.sh <../tests/run.sh>`. Each MPI task will use ~2.3 GiB of RAM. The program uses :f:func:`mod_safe/func_overall_index`, :f:subr:`mod_safe/sub_allocate_array` and :f:subr:`mod_safe_mpi/sub_allreduce_array`; it is a good demonstration of how to do some simple manual work sharing. The correct output should be::

    Does MPI task 0 of 2 think that everything worked? T
    Does MPI task 1 of 2 think that everything worked? T

Of course, the ordering of those two lines cannot be relied upon.

.. f:autoprogram:: test02
