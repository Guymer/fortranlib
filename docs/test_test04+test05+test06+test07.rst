:f:prog:`test04`, :f:prog:`test05`, :f:prog:`test06` and :f:prog:`test07`'s documentation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

:f:prog:`test04`, :f:prog:`test05`, :f:prog:`test06` and :f:prog:`test07` are compiled by :download:`Makefile <../tests/Makefile>` and they can be run using :download:`run.sh <../tests/run.sh>`. All four programs calculate the number "pi" in a rather silly way: the programs are merely examples of different types of parallelism.

+------------------+------------------+--------------+-----------------+
| Program          | Overall Strategy | Main Program | Called Function |
+==================+==================+==============+=================+
| :f:prog:`test04` | serial           | serial       | serial          |
+------------------+------------------+--------------+-----------------+
| :f:prog:`test05` | MPI only         | MPI          | serial          |
+------------------+------------------+--------------+-----------------+
| :f:prog:`test06` | OpenMP only      | serial       | OpenMP          |
+------------------+------------------+--------------+-----------------+
| :f:prog:`test07` | MPI+OpenMP       | MPI          | OpenMP          |
+------------------+------------------+--------------+-----------------+

All four programs use :f:subr:`mod_safe/sub_allocate_array`; the two programs that use MPI also use :f:subr:`mod_safe_mpi/sub_allreduce_array`. As all four programs use random numbers the output is not repeatable. The correct output for the first program should be something like::

    How does real pi compare to calculated pi? real = 3.141592654; calc = 3.156000000

Whereas the correct output for the second program should be something like::

    For MPI task 0 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.132000000
    For MPI task 1 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.164000000
    For MPI task 2 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.100000000
    For MPI task 3 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.148000000
    Overall, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.136000000

Whereas the correct output for the third program should be something like::

    How does real pi compare to calculated pi? real = 3.141592654; calc = 3.153000000

Whereas the correct output for the fourth program should be something like::

    For MPI task 0 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.141000000
    For MPI task 1 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.147000000
    For MPI task 3 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.108000000
    For MPI task 2 of 4, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.129000000
    Overall, how does real pi compare to calculated pi? real = 3.141592654; calc = 3.131250000

Of course, the ordering of the lines from the programs that use MPI cannot be relied upon.

.. f:autoprogram:: test04
.. f:automodule:: mod_test04
.. f:autoprogram:: test05
.. f:automodule:: mod_test05
.. f:autoprogram:: test06
.. f:automodule:: mod_test06
.. f:autoprogram:: test07
.. f:automodule:: mod_test07
